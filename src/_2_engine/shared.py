import networkx as nx
from typing import List
from networkx.algorithms import isomorphism as iso
from pm4py.objects.log.obj import EventLog
import pandas as pd
import os
from typing import Dict

def get_label_sequence(graph: nx.DiGraph) -> List[str]:
    """
    Extracts the ordered sequence of labels from a Directed Graph.
    Falls back to alphabetical node sorting if the graph contains cycles.
    
    Args:
        graph (nx.DiGraph): The input graph.
        
    Returns:
        List[str]: A list of node labels in topological order.
    """
    try:
        sorted_nodes = list(nx.topological_sort(graph))
    except nx.NetworkXUnfeasible:
        sorted_nodes = sorted(graph.nodes())
    return [graph.nodes[n].get('label', '') for n in sorted_nodes]

def find_anomalous_nodes(trace_graph: nx.DiGraph, anom_graph: nx.DiGraph) -> list:
    """
    Performs subgraph isomorphism.
    Returns a list of node indices in the trace graph that make up the anomaly.
    """
    # node_match = iso.categorical_node_match('label', None)
    # Flexible match for nodes using sanitize_label to avoid space/case mismatch issues
    node_match = lambda n1, n2: sanitize_label(n1.get('label', '')) == sanitize_label(n2.get('label', ''))
    # Strict match for edges (if labels are present)
    edge_match = iso.categorical_edge_match('label', None)
    
    GM = iso.DiGraphMatcher(trace_graph, anom_graph, node_match=node_match)
    
    matches = list(GM.subgraph_monomorphisms_iter())
    if not matches:
        return []
        
    # Fetch the first match found. 'match' is a dictionary: {trace_node: anomaly_node}
    match = matches[0]
    return sorted(list(match.keys()))


def sanitize_label(label: str) -> str:
    """Removes spaces, underscores, and converts to lowercase for uniform comparison."""
    return str(label).replace(" ", "").replace("_", "").lower()


def find_exact_subsequence(full_list: List[str], sub_list: List[str]) -> int:
    """Finds the starting index of a subsequence, sanitizing labels to bypass formatting issues."""
    n, m = len(full_list), len(sub_list)
    if m == 0 or n < m:
        return -1
    
    sanitized_full = [sanitize_label(x) for x in full_list]
    sanitized_sub = [sanitize_label(x) for x in sub_list]
    
    for i in range(n - m + 1):
        if sanitized_full[i : i + m] == sanitized_sub:
            return i
    return -1

def load_trace_mapping(mapping_path: str) -> Dict[str, str]:
    """Reads traceIdMapping.txt and safely maps graph string indices to trace IDs."""
    mapping = {}
    if not os.path.exists(mapping_path):
        print(f"[ERROR] Mapping file not found at {mapping_path}")
        return mapping
        
    with open(mapping_path, "r") as f:
        for line in f:
            if ";" in line:
                parts = line.strip().split(";")
                graph_num = parts[0].strip()
                trace_id = parts[1].strip()
                mapping[f"graph{graph_num}"] = trace_id
                mapping[graph_num] = trace_id
    return mapping

def get_infected_traces_from_csv(csv_path: str, sub_id: str, mapping: Dict[str, str]) -> Dict[str, str]:
    """Returns a dictionary mapping {Trace_ID: Graph_Number} (e.g., {'N95560': '1212'}) from the given CSV."""
    infected_traces = {}
    if not os.path.exists(csv_path):
        return infected_traces
        
    df = pd.read_csv(csv_path, sep=';', encoding="utf-8-sig")
    df.columns = [str(col).strip() for col in df.columns]
    
    if sub_id not in df.columns:
        return infected_traces
        
    for index, row in df.iterrows():
        try:
            val = int(row[sub_id])
        except ValueError:
            continue
            
        if val == 1:
            grafo_str = str(row[df.columns[0]])
            num = ''.join(filter(str.isdigit, grafo_str))
            
            if num in mapping:
                infected_traces[mapping[num]] = num
                
    return infected_traces

def extract_valid_transitions(log: EventLog) -> dict:
    """Extracts all Directly-Follows adjacent event pairs from the log and counts their occurrences."""
    valid_transitions = {}
    for trace in log:
        labels = [sanitize_label(event["concept:name"]) for event in trace]
        for i in range(len(labels) - 1):
            pair = (labels[i], labels[i+1])
            valid_transitions[pair] = valid_transitions.get(pair, 0) + 1
    return valid_transitions