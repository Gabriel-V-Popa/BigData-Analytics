import os
from pm4py.objects.log.obj import EventLog, Event
from datetime import timedelta
from typing import List, Dict, Any
import pm4py

from src._1_baseline.parser import parse_graph_from_text

from src._2_engine.shared import get_label_sequence, sanitize_label, find_anomalous_nodes, find_exact_subsequence, load_trace_mapping, get_infected_traces_from_csv, extract_valid_transitions

from src._4_evaluation.metrics_calculator import evaluate_model
from src._4_evaluation.results_tracker import update_results_matrix

import networkx as nx
import os
from pathlib import Path
import random
from copy import deepcopy

def run_repair(
                dataset_name: str,
                log: EventLog,
               anomalous_graphs: Dict[str, Any],
               correct_subgraphs: Dict[str, Any],
               features_dict: Dict[str, Dict[str, Any]],
               target_anomalies: List[str],
               sgiso_env_path: str,
               is_incremental: bool = False,
               parameters: str = "N/A",
               ):
    
    print(f"Starting PYTHON NATIVE REPAIR engine for {target_anomalies} target anomalies...")
    print(f"Mode: {'INCREMENTAL' if is_incremental else 'ISOLATED'}")
    
    print("[INFO] Indexing XES traces...")
    # Clean XES trace names to ensure safe retrieval, removing invisible spaces
    trace_index_map = {str(trace.attributes["concept:name"]).strip(): idx for idx, trace in enumerate(log)}
    
    print("[INFO] Extracting process transition vocabulary (Directly-Follows)...")
    valid_transitions = extract_valid_transitions(log)
    
    mapping_path = os.path.join(sgiso_env_path, "traceIdMapping.txt")
    trace_mapping = load_trace_mapping(mapping_path)
    csv_path = os.path.join("data", f"{dataset_name}", f"{dataset_name}_table2_on_file.csv")
    base_data_path = Path("data") / f"{dataset_name}"
    pnml_path = base_data_path / "models_raw" / f"petri_net_{dataset_name}.pnml"
    
    mode_tag = "incremental" if is_incremental else "isolated"
    matrix_path = Path("results") / f"new_experiments_matrix_{dataset_name}_{mode_tag}.csv"
    
    working_log = deepcopy(log)
    cumulative_modified = 0

    for anom_id in target_anomalies:
        if not is_incremental:
            working_log = deepcopy(log)

        if anom_id not in features_dict:
            continue
            
        anom_seq = get_label_sequence(anomalous_graphs[anom_id])
        corr_id = features_dict[anom_id]['matched_with']
        corr_seq = get_label_sequence(correct_subgraphs[corr_id])
        
        print(f"\n[INFO] Native repair processing for {anom_id}...")
        print(f"  -> Target anomalous sequence: {anom_seq}")
        print(f"  -> Correct patch sequence:  {corr_seq}")
        
        infected_traces = get_infected_traces_from_csv(csv_path, anom_id, trace_mapping)
        print(f"  -> Found {len(infected_traces)} infected traces in CSV mapped to XES IDs.")
        
        missed_mapping = 0
        missed_sequence = 0
        missed_graphs = 0
        missed_isomorphism = 0
        local_modified = 0

        for trace_id, graph_num in infected_traces.items():
            if trace_id not in trace_index_map:
                missed_mapping += 1
                continue
                
            trace_idx = trace_index_map[trace_id]
            trace = working_log[trace_idx]
            
            # 1. TRACE GRAPH LOADING
            graph_path = f"{sgiso_env_path}graphs/graph{graph_num}.g" 
            if not os.path.exists(graph_path):
                missed_graphs += 1
                continue
            
            with open(graph_path, "r") as f:
                trace_graph_text = f.read()
                
            trace_graph = parse_graph_from_text(trace_graph_text)
            anom_graph = anomalous_graphs[anom_id]
            
            # 2. ISOMORPHISM (Identify anomalous nodes within the trace)
            infected_node_ids = find_anomalous_nodes(trace_graph, anom_graph)
            
            if not infected_node_ids:
                missed_isomorphism += 1
                continue
            
            # --- GRAPH SURGERY INITIATED ---
            corr_graph = correct_subgraphs[corr_id]
            
            # A) Find border nodes (predecessors entering the anomaly and successors leaving it)
            predecessors = set()
            successors = set()
            for n in infected_node_ids:
                for p in trace_graph.predecessors(n):
                    if p not in infected_node_ids:
                        predecessors.add(p)
                for s in trace_graph.successors(n):
                    if s not in infected_node_ids:
                        successors.add(s)

            # B) Remove the infected subgraph from the trace topology
            trace_graph.remove_nodes_from(infected_node_ids)

            # C) Identify entry and exit points of the newly introduced correct patch
            corr_start_nodes = [n for n in corr_graph.nodes() if corr_graph.in_degree(n) == 0]
            corr_end_nodes = [n for n in corr_graph.nodes() if corr_graph.out_degree(n) == 0]

            # D) Inject the correct graph elements into the trace topology (generating unique node IDs)
            max_id = max(trace_graph.nodes()) if trace_graph.nodes() else 0
            mapping = {} 
            
            for n, data in corr_graph.nodes(data=True):
                max_id += 1
                mapping[n] = max_id
                trace_graph.add_node(max_id, label=data.get('label', ''))

            for u, v, data in corr_graph.edges(data=True):
                trace_graph.add_edge(mapping[u], mapping[v], label=data.get('label', ''))

            # E) Stitch the remaining graph nodes to the newly injected sub-graph
            for p in predecessors:
                for s_node in corr_start_nodes:
                    trace_graph.add_edge(p, mapping[s_node])

            for e_node in corr_end_nodes:
                for s in successors:
                    trace_graph.add_edge(mapping[e_node], s)

            # --- GRAPH SURGERY COMPLETED ---

            # 3. SEQUENCE FLATTENING
            possible_sequences = []
            for s_node in corr_start_nodes:
                for e_node in corr_end_nodes:
                    try:
                        # Identify all valid traversing paths within the correctly patched area
                        for path in nx.all_simple_paths(corr_graph, s_node, e_node):
                            possible_sequences.append([corr_graph.nodes[n]['label'].strip() for n in path])
                    except nx.NodeNotFound:
                        pass
                        
            if not possible_sequences:
                # Fallback sequentially in cases of disconnected graphs or cyclic dependencies
                corr_seq = get_label_sequence(corr_graph)
            else:
                # Compute occurrence probabilities based on global Directly-Follows log metrics
                scores = []
                for seq in possible_sequences:
                    score = 0
                    for i in range(len(seq) - 1):
                        pair = (sanitize_label(seq[i]), sanitize_label(seq[i+1]))
                        score += valid_transitions.get(pair, 0)
                    scores.append(score)
                    
                # If no historical metrics support the transition, apply an uniform distribution
                if sum(scores) == 0:
                    weights = [1] * len(possible_sequences)
                else:
                    weights = scores
                    
                # Apply a weighted random choice to statistically preserve XOR path distributions
                corr_seq = random.choices(possible_sequences, weights=weights, k=1)[0]
            
            trace_labels = [event["concept:name"] for event in trace]
            
            # Seek the exact sequence start index within the physical XES trace
            start_idx = find_exact_subsequence(trace_labels, anom_seq)
            if start_idx == -1:
                missed_sequence += 1
                continue
            
            end_idx = start_idx + len(anom_seq) - 1
            
            start_time = trace[start_idx]["time:timestamp"]
            end_time = trace[end_idx]["time:timestamp"]
            
            num_new_events = len(corr_seq)
            time_diff = end_time - start_time
            # Determine a uniform timestamp step to keep events sequentially timed within bounds
            step = time_diff / max(1, (num_new_events - 1)) if num_new_events > 1 else timedelta(0)
            
            old_events_dict = {sanitize_label(event["concept:name"]): event for event in trace[start_idx : end_idx + 1]}
            
            new_events = []
            for i, label in enumerate(corr_seq):
                new_event = Event()
                sanitized_l = sanitize_label(label)
                if sanitized_l in old_events_dict:
                    for key, value in old_events_dict[sanitized_l].items():
                        new_event[key] = value
                
                new_event["concept:name"] = label
                new_event["time:timestamp"] = start_time + (step * i)
                new_event["lifecycle:transition"] = "complete" 
                new_events.append(new_event)
            
            trace[start_idx : end_idx + 1] = new_events
                
            local_modified += 1
            
        cumulative_modified += local_modified
            
        # Post-anomaly reporting summary
        if local_modified > 0:
            print(f"  [SUCCESS] {local_modified} traces successfully repaired for {anom_id}.")
        if missed_mapping > 0:
            print(f"  [WARNING] {missed_mapping} CSV IDs not matched in XES event log.")
        if missed_sequence > 0:
            print(f"  [WARNING] {missed_sequence} traces had non-matching or non-contiguous labels in sequence.")
        if missed_graphs > 0:
            print(f"  [WARNING] {missed_graphs} .g trace files not found on disk.")
        if missed_isomorphism > 0:
            print(f"  [WARNING] {missed_isomorphism} traces failed isomorphism match in the actual NetworkX graph.")
            
        # Progressively save newly repaired outputs
        repaired_log_path = base_data_path / "custom" / "processed" / f"{dataset_name}_repair_{mode_tag}_{anom_id}.xes"
        repaired_log_path.parent.mkdir(parents=True, exist_ok=True)
        pm4py.write_xes(working_log, str(repaired_log_path))
        
        print(f"\n[!] Evaluating newly repaired log for matrix results...")
        new_metrics = evaluate_model(repaired_log_path, pnml_path)
        
        reported_modified = cumulative_modified if is_incremental else local_modified
        update_results_matrix(matrix_path, dataset_name, 'repair', f'repaired_{mode_tag}_{anom_id}', local_modified, reported_modified, new_metrics, parameters=parameters)
        print("\nExperiment completed successfully!")

    print(f"\nRepair phase completed. Processed {len(target_anomalies)} anomalies in {mode_tag} mode.")
    return working_log, cumulative_modified