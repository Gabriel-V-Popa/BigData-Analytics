import networkx as nx
from typing import List

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

def find_subsequence(sequence: List[str], subseq: List[str]) -> int:
    """
    Finds the starting index of a contiguous subsequence within a larger sequence.
    
    Args:
        sequence (List[str]): The main list of elements.
        subseq (List[str]): The subsequence to search for.
        
    Returns:
        int: The starting index of the subsequence, or -1 if not found.
    """
    n, m = len(sequence), len(subseq)
    for i in range(n - m + 1):
        if sequence[i:i+m] == subseq:
            return i
    return -1