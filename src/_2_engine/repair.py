import os
import random
from copy import deepcopy
from datetime import timedelta
from pathlib import Path
from typing import List, Dict, Any, Tuple

import networkx as nx
import pm4py
from pm4py.objects.log.obj import EventLog, Event

from src._1_baseline.parser import parse_graph_from_text
from src._2_engine.shared import (
    get_label_sequence, 
    sanitize_label, 
    find_anomalous_nodes, 
    load_trace_mapping, 
    get_infected_traces_from_csv, 
    extract_valid_transitions
)
from src._4_evaluation.metrics_calculator import evaluate_model
from src._4_evaluation.results_tracker import update_results_matrix

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
    run_tag: str = "",
) -> Tuple[EventLog, int]:
    """
    Executes a native Python graph-based repair on the XES Event Log.
                dataset_name: str,
                log: EventLog,
               anomalous_graphs: Dict[str, Any],
               correct_subgraphs: Dict[str, Any],
               features_dict: Dict[str, Dict[str, Any]],
               target_anomalies: List[str],
               sgiso_env_path: str,
               is_incremental: bool = False,
               parameters: str = "N/A",
               run_tag: str = "",
               ):
    
    This engine leverages Subgraph Isomorphism to locate anomalies, performs 
    graph surgery to inject the correct topology, and utilizes Topological Sorting 
    to flatten concurrent branches. Finally, it applies Timestamp-Aware XES Surgery 
    to safely modify the event log without dropping interlaced concurrent events.

    Args:
        dataset_name: Name of the dataset.
        log: The PM4Py EventLog object to repair.
        anomalous_graphs: Dictionary of NetworkX graphs representing anomalies.
        correct_subgraphs: Dictionary of NetworkX graphs representing valid patches.
        features_dict: Pre-calculated features mapping anomalies to their patches.
        target_anomalies: List of anomaly IDs to process.
        sgiso_env_path: Path to the SGISO environment containing .g files and mappings.
        is_incremental: If True, applies repairs cumulatively. If False, resets log per anomaly.
        parameters: String representation of the current experimental scenario.

    Returns:
        A tuple containing the repaired EventLog and the cumulative number of modified traces.
    """
    
    mode_tag = "INCREMENTAL" if is_incremental else "ISOLATED"
    print(f"\n[INFO] Starting PYTHON NATIVE REPAIR engine for {len(target_anomalies)} anomalies...")
    print(f"[INFO] Mode: {mode_tag}")
    
    # Clean XES trace names to ensure safe retrieval, removing hidden whitespace
    print("[INFO] Indexing XES traces...")
    trace_index_map = {str(trace.attributes["concept:name"]).strip(): idx for idx, trace in enumerate(log)}
    
    # Extract global Directly-Follows Graph (DFG) metrics for statistical branch resolution
    print("[INFO] Extracting process transition vocabulary (DFG)...")
    valid_transitions = extract_valid_transitions(log)
    
    # Path initializations
    mapping_path = os.path.join(sgiso_env_path, "traceIdMapping.txt")
    trace_mapping = load_trace_mapping(mapping_path)
    csv_path = os.path.join("data", dataset_name, f"{dataset_name}_table2_on_file.csv")
    
    base_data_path = Path("data") / dataset_name
    pnml_path = base_data_path / "models_raw" / f"petri_net_{dataset_name}.pnml"
    matrix_path = Path("results") / f"new_experiments_matrix_{dataset_name}_{mode_tag.lower()}.csv"
    
    working_log = deepcopy(log)
    cumulative_modified = 0

    for anom_id in target_anomalies:
        # Reset the log for each anomaly if running in isolated mode
        if not is_incremental:
            working_log = deepcopy(log)

        if anom_id not in features_dict:
            continue
            
        anom_seq = get_label_sequence(anomalous_graphs[anom_id])
        corr_id = features_dict[anom_id]['matched_with']
        corr_seq = get_label_sequence(correct_subgraphs[corr_id])
        
        print(f"\n[INFO] Native repair processing for {anom_id}...")
        print(f"  -> Target sequence: {anom_seq}")
        print(f"  -> Patch sequence:  {corr_seq}")
        
        infected_traces = get_infected_traces_from_csv(csv_path, anom_id, trace_mapping)
        print(f"  -> Found {len(infected_traces)} infected traces in CSV mapped to XES IDs.")
        
        # Tracking metrics for the current anomaly
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
            
            # ==========================================
            # STEP 1: TRACE GRAPH LOADING
            # ==========================================
            graph_path = os.path.join(sgiso_env_path, "graphs", f"graph{graph_num}.g")
            if not os.path.exists(graph_path):
                missed_graphs += 1
                continue
            
            with open(graph_path, "r") as f:
                trace_graph_text = f.read()
                
            trace_graph = parse_graph_from_text(trace_graph_text)
            anom_graph = anomalous_graphs[anom_id]
            
            # ==========================================
            # STEP 2: SUBGRAPH ISOMORPHISM
            # ==========================================
            infected_node_ids = find_anomalous_nodes(trace_graph, anom_graph)
            
            if not infected_node_ids:
                missed_isomorphism += 1
                continue
            
            # ==========================================
            # STEP 3: NATIVE GRAPH SURGERY
            # ==========================================
            corr_graph = correct_subgraphs[corr_id]
            
            # 3A: Identify border nodes (predecessors entering the anomaly and successors leaving it)
            predecessors = set()
            successors = set()
            for n in infected_node_ids:
                for p in trace_graph.predecessors(n):
                    if p not in infected_node_ids:
                        predecessors.add(p)
                for s in trace_graph.successors(n):
                    if s not in infected_node_ids:
                        successors.add(s)

            # 3B: Excision - Remove the infected subgraph from the trace topology
            trace_graph.remove_nodes_from(infected_node_ids)

            # 3C: Identify entry and exit points of the valid patch
            corr_start_nodes = [n for n in corr_graph.nodes() if corr_graph.in_degree(n) == 0]
            corr_end_nodes = [n for n in corr_graph.nodes() if corr_graph.out_degree(n) == 0]

            # 3D: Injection - Map and insert the correct graph elements (ensuring unique IDs)
            max_id = max(trace_graph.nodes()) if trace_graph.nodes() else 0
            mapping = {} 
            
            for n, data in corr_graph.nodes(data=True):
                max_id += 1
                mapping[n] = max_id
                trace_graph.add_node(max_id, label=data.get('label', ''))

            for u, v, data in corr_graph.edges(data=True):
                trace_graph.add_edge(mapping[u], mapping[v], label=data.get('label', ''))

            # 3E: Suture - Stitch the remaining trace nodes to the newly injected subgraph
            for p in predecessors:
                for s_node in corr_start_nodes:
                    trace_graph.add_edge(p, mapping[s_node])

            for e_node in corr_end_nodes:
                for s in successors:
                    trace_graph.add_edge(mapping[e_node], s)

            # ==========================================
            # STEP 4: SEQUENCE FLATTENING (TOPOLOGICAL SORT)
            # ==========================================
            possible_sequences = []
            try:
                # Generate all valid topological permutations to preserve AND-split concurrency.
                # Capped at 100 permutations to protect memory on highly parallel graphs.
                topo_generator = nx.all_topological_sorts(corr_graph)
                for idx, topo_nodes in enumerate(topo_generator):
                    if idx >= 100: 
                        break
                    possible_sequences.append([corr_graph.nodes[n]['label'].strip() for n in topo_nodes])
            except (nx.NetworkXUnfeasible, nx.NetworkXError):
                # Fallback if the graph contains cycles (not a DAG)
                pass
                        
            if not possible_sequences:
                corr_seq = get_label_sequence(corr_graph)
            else:
                # Compute historical probabilities for each permutation based on global DFG metrics
                scores = []
                for seq in possible_sequences:
                    score = 0
                    for i in range(len(seq) - 1):
                        pair = (sanitize_label(seq[i]), sanitize_label(seq[i+1]))
                        score += valid_transitions.get(pair, 0)
                    scores.append(score)
                    
                # Apply uniform distribution if historical support is entirely absent
                if sum(scores) == 0:
                    weights = [1] * len(possible_sequences)
                else:
                    weights = scores
                    
                # Weighted random choice statistically preserves real-world process behavior
                corr_seq = random.choices(possible_sequences, weights=weights, k=1)[0]
            
            # ==========================================
            # STEP 5: TIMESTAMP-AWARE XES BLOCK SURGERY
            # ==========================================
            
            # 5A: Extract theoretical indices
            try:
                theoretical_indices = sorted([int(n) - 1 for n in infected_node_ids])
            except ValueError:
                missed_sequence += 1
                continue
            
            sanitized_expected_labels = sorted([sanitize_label(lbl) for lbl in anom_seq])
            
            # 5B: Incremental Safety Check (Dynamic Index Recalculation)
            if not is_incremental:
                # --- ISOLATED MODE ---
                # In isolated mode, we expect the original indices to be valid since we reset the log for each anomaly.
                extracted_labels = sorted([sanitize_label(trace[idx]["concept:name"]) for idx in theoretical_indices])
                
                if extracted_labels != sanitized_expected_labels:
                    missed_sequence += 1
                    continue
                
                infected_indices = theoretical_indices
            else:
                # --- INCREMENTAL MODE ---
                # In incremental mode, prior repairs may have shifted indices. We need to dynamically search for the expected sequence within the trace.
                # "Set-Matching" approach: We look for the expected labels in the trace, allowing for gaps and reordering due to previous repairs, but ensuring all expected labels are present.
                trace_labels = [sanitize_label(e["concept:name"]) for e in trace]
                search_start = max(0, theoretical_indices[0] - 2) # Margine in caso di accorciamenti pregressi
                
                temp_expected = sanitized_expected_labels.copy()
                actual_infected_indices = []
                
                # Search for expected labels in the trace starting from the theoretical index, allowing for some margin due to prior repairs
                for idx in range(search_start, len(trace_labels)):
                    lbl = trace_labels[idx]
                    if lbl in temp_expected:
                        actual_infected_indices.append(idx)
                        temp_expected.remove(lbl) 
                    
                    if not temp_expected:
                        break 
                        
                # If we couldn't find all expected labels, it means the sequence is fragmented or missing due to prior repairs, and we should skip this trace to avoid incorrect modifications.
                if temp_expected: 
                    missed_sequence += 1
                    continue
                    
                infected_indices = sorted(actual_infected_indices)
                
            # 5C: Determine the contiguous block to replace based on the identified infected indices
            start_idx = infected_indices[0]
            end_idx = infected_indices[-1]
            
            trace_events = list(trace)
            
            # Delete in reverse order to prevent index shifting
            for idx in sorted(infected_indices, reverse=True):
                del trace_events[idx]
                
            # 5D: Temporal Interpolation for the Patch
            start_time = trace[start_idx]["time:timestamp"]
            end_time = trace[end_idx]["time:timestamp"]
            num_new_events = len(corr_seq)
            time_diff = end_time - start_time
            step = time_diff / max(1, (num_new_events - 1)) if num_new_events > 1 else timedelta(0)
            
            # Retain payload data (resources, lifecycle) from original events where possible
            old_events_dict = {sanitize_label(trace[idx]["concept:name"]): trace[idx] for idx in range(start_idx, end_idx + 1)}
            
            # Append new events
            for i, label in enumerate(corr_seq):
                new_event = Event()
                sanitized_l = sanitize_label(label)
                if sanitized_l in old_events_dict:
                    for key, value in old_events_dict[sanitized_l].items():
                        new_event[key] = value
                
                new_event["concept:name"] = label
                new_event["time:timestamp"] = start_time + (step * i)
                new_event["lifecycle:transition"] = "complete" 
                trace_events.append(new_event)
            
            # 5E: Temporal Realignment (Prevents Friendly Fire)
            # Reorders the entire trace to naturally interlace concurrent healthy events
            trace_events.sort(key=lambda e: e["time:timestamp"])
            
            # 5F: Commit Changes to PM4Py Object
            trace._list.clear() 
            for evt in trace_events:
                trace.append(evt)
                
            local_modified += 1
            
        # Update accumulators
        cumulative_modified += local_modified
            
        # ==========================================
        # STEP 6: REPORTING & METRICS EVALUATION
        # ==========================================
        if local_modified > 0:
            print(f"  [SUCCESS] {local_modified} traces successfully repaired for {anom_id}.")
        if missed_mapping > 0:
            print(f"  [WARNING] {missed_mapping} CSV IDs not matched in XES event log.")
        if missed_sequence > 0:
            print(f"  [WARNING] {missed_sequence} traces had fragmented or missing sequences in XES.")
        if missed_graphs > 0:
            print(f"  [WARNING] {missed_graphs} .g trace files not found on disk.")
        if missed_isomorphism > 0:
            print(f"  [WARNING] {missed_isomorphism} traces failed isomorphism match in NetworkX.")
            
        # Export the progressively repaired log
        repaired_log_path = base_data_path / "custom" / "processed" / f"{dataset_name}_repair_{mode_tag.lower()}_{anom_id}.xes"
        # Progressively save newly repaired outputs
        # repaired_log_path = base_data_path / "custom" / "processed" / f"{dataset_name}_repair_{mode_tag}{run_suffix}_{anom_id}.xes"
        repaired_log_path.parent.mkdir(parents=True, exist_ok=True)
        pm4py.write_xes(working_log, str(repaired_log_path))
        
        print(f"\n[!] Evaluating repaired log for experimental results matrix...")
        new_metrics = evaluate_model(repaired_log_path, pnml_path)
        
        reported_modified = cumulative_modified if is_incremental else local_modified
        update_results_matrix(
            matrix_path, 
            dataset_name, 
            'repair', 
            f'repaired_{mode_tag.lower()}_{anom_id}', 
            local_modified, 
            reported_modified, 
            new_metrics, 
            parameters=parameters
        )
        print("Experiment iteration completed successfully!")

    print(f"\n[COMPLETED] Repair phase finished. Processed {len(target_anomalies)} anomalies in {mode_tag} mode.")
    return working_log, cumulative_modified