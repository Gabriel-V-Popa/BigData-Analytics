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

# def token_edit_distance(seq1: List[str], seq2: List[str]) -> int:
#     """
#     Calcola la distanza di Levenshtein (Edit Distance) tra due sequenze di token (label).
#     """
#     m, n = len(seq1), len(seq2)
#     # Matrice di programmazione dinamica
#     dp = [[0] * (n + 1) for _ in range(m + 1)]

#     for i in range(m + 1):
#         dp[i][0] = i
#     for j in range(n + 1):
#         dp[0][j] = j

#     for i in range(1, m + 1):
#         for j in range(1, n + 1):
#             # Se le label sono identiche, costo 0. Altrimenti costo 1 (sostituzione)
#             cost = 0 if seq1[i - 1] == seq2[j - 1] else 1
            
#             dp[i][j] = min(dp[i - 1][j] + 1,        # Cancellazione
#                            dp[i][j - 1] + 1,        # Inserimento
#                            dp[i - 1][j - 1] + cost) # Sostituzione

#     return dp[m][n]

def token_hamming_distance(seq1: List[str], seq2: List[str]) -> int:
    """
    Calcola la distanza di Hamming (solo sostituzioni) tra due sequenze.
    Le sequenze devono avere necessariamente la stessa lunghezza.
    """
    # 1. Controllo rigoroso sulla lunghezza
    if len(seq1) != len(seq2):
        return 5

    # 2. Calcolo dei costi (sostituzioni)
    costo_totale = 0
    for token1, token2 in zip(seq1, seq2):
        if token1 != token2:
            costo_totale += 1  # Costo 1 per ogni sostituzione necessaria

    return costo_totale

def find_fuzzy_subsequence(trace_labels: List[str], anom_seq: List[str], max_tolerance: int = 1):
    """
    Scansiona la traccia per trovare la porzione più simile all'anomalia,
    rispettando una tolleranza massima di Edit Distance.
    
    Ritorna: (start_idx, end_idx, distance) della migliore corrispondenza,
             oppure (-1, -1, -1) se nessuna corrispondenza rientra nella tolleranza.
    """
    best_dist = float('inf')
    best_start = -1
    best_end = -1
    
    m = len(anom_seq)
    if m == 0:
        return -1, -1, -1

    # Calcoliamo le dimensioni della finestra da testare (da M-tolleranza a M+tolleranza)
    min_window = max(1, m - max_tolerance)
    max_window = min(len(trace_labels), m + max_tolerance)

    for window_size in range(min_window, max_window + 1):
        for i in range(len(trace_labels) - window_size + 1):
            window = trace_labels[i : i + window_size]
            dist = token_hamming_distance(window, anom_seq)

            # Se troviamo un match valido e migliore dei precedenti
            if dist <= max_tolerance and dist < best_dist:
                best_dist = dist
                best_start = i
                best_end = i + window_size - 1

    return best_start, best_end, best_dist