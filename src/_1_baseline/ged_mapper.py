import networkx as nx
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
from typing import Dict, List, Any

print("Loading SBERT model...")
# Loaded globally to avoid re-initializing it for every function call
sbert_model = SentenceTransformer('all-MiniLM-L6-v2')

def get_graph_text(G: nx.DiGraph) -> str:
    """
    Extracts a 'sentence' from the graph by joining node labels according 
    to their topological sorting (causal execution order).
    """
    try:
        sorted_nodes = list(nx.topological_sort(G))
    except nx.NetworkXUnfeasible:
        sorted_nodes = sorted(G.nodes())
        
    return " ".join([G.nodes[n].get('label', '') for n in sorted_nodes])

def node_match(n1: Dict[str, Any], n2: Dict[str, Any]) -> bool:
    """Helper function for Graph Edit Distance computation."""
    return n1.get('label') == n2.get('label')

def get_features(anomalous_graphs: Dict[str, nx.DiGraph], 
                 correct_subgraphs: Dict[str, nx.DiGraph], 
                 target_subs: List[str], 
                 freq_dict: Dict[str, int]) -> Dict[str, Dict[str, Any]]:
    """
    Computes structural (GED) and semantic (Cosine Similarity via SBERT) 
    distances between anomalous subgraphs and their closest correct counterpart.
    """
    features_dict = {}

    for anom_id in target_subs:
        if anom_id not in anomalous_graphs:
            print(f"[WARNING] Graph for {anom_id} missing from TXT file. Adding manually.")
            continue
                
        G_anom = anomalous_graphs[anom_id]
        anom_node_count = len(G_anom.nodes())
        
        min_ged = float('inf')
        # Collect ALL correct subgraphs that tie at the minimum GED, so we can
        # break ties later by cosine similarity. They are appended in the dict's
        # insertion order (CorrSub_1, CorrSub_2, ...), which is also ascending ID
        # order: that gives us the deterministic final tie-break for free.
        best_candidates = []  # list of (corr_id, G_corr) sharing min_ged

        # 1. Find the most structurally similar correct subgraph(s) (Minimum GED)
        for corr_id, G_corr in correct_subgraphs.items():
            corr_node_count = len(G_corr.nodes())

            # --- OPTIMIZATION 1: Absolute Minimum Bound ---
            # The GED can NEVER be smaller than the difference in node counts.
            # Skip only if the size difference STRICTLY exceeds our best GED: using
            # '>' (not '>=') keeps candidates that could still TIE at min_ged.
            if abs(anom_node_count - corr_node_count) > min_ged:
                continue

            # --- OPTIMIZATION 2: Upper Bound & Timeout ---
            # It uses NetworkX to stop calculating if it exceeds our current min_ged,
            # and to give up if it takes more than 5 seconds for a single comparison.
            # With upper_bound=min_ged, distances equal to min_ged are still returned,
            # so genuine ties are collected.
            dist = nx.graph_edit_distance(
                G_anom, G_corr,
                node_match=node_match,
                upper_bound=min_ged,
                timeout=5.0
            )

            if dist is None:
                continue
            if dist < min_ged:
                # New strict minimum: previous candidates are no longer the best.
                min_ged = dist
                best_candidates = [(corr_id, G_corr)]
            elif dist == min_ged:
                # Tie on GED: keep as a candidate, to be disambiguated by cosine.
                best_candidates.append((corr_id, G_corr))

        # 2. Compute semantic similarity and select the best match.
        text_anom = get_graph_text(G_anom)
        timeout_fallback = False

        if not best_candidates:
            # Fallback if timeout prevented finding any match: take the first one.
            best_match_id = list(correct_subgraphs.keys())[0]
            best_match_G = correct_subgraphs[best_match_id]
            min_ged = 99.0 # Placeholder for "too complex to calculate"
            timeout_fallback = True
            print(f"[WARNING] GED timeout for {anom_id}: arbitrary fallback to {best_match_id}, results may be unreliable.")

            text_corr = get_graph_text(best_match_G)
            embeddings = sbert_model.encode([text_anom, text_corr])
            sim_score = cosine_similarity(embeddings[0:1], embeddings[1:2])[0][0]
            selection_criterion = 'timeout'
        else:
            # Among all min-GED candidates, pick the one with the HIGHEST cosine
            # similarity. On a cosine tie we keep the first candidate (lowest
            # CorrSub_ ID) by only replacing the best on a STRICT improvement.
            candidate_texts = [get_graph_text(G) for (_, G) in best_candidates]
            embeddings = sbert_model.encode([text_anom] + candidate_texts)
            anom_emb = embeddings[0:1]

            sims = [cosine_similarity(anom_emb, embeddings[i + 1:i + 2])[0][0]
                    for i in range(len(best_candidates))]

            best_match_id = None
            best_match_G = None
            best_text_corr = None
            sim_score = -1.0
            for i, (corr_id, G_corr) in enumerate(best_candidates):
                if sims[i] > sim_score:
                    sim_score = sims[i]
                    best_match_id = corr_id
                    best_match_G = G_corr
                    best_text_corr = candidate_texts[i]
            text_corr = best_text_corr

            # Which criterion actually decided the match:
            #   'ged'    -> the minimum GED was unique (no tie)
            #   'cosine' -> GED tie broken by a unique highest cosine similarity
            #   'id'     -> GED and cosine both tied -> lowest CorrSub_ ID won
            if len(best_candidates) == 1:
                selection_criterion = 'ged'
            elif sum(1 for s in sims if s == sim_score) == 1:
                selection_criterion = 'cosine'
            else:
                selection_criterion = 'id'

        # 3. Store the extracted features
        features_dict[anom_id] = {
            'ged': min_ged,
            'similarity': sim_score,
            'freq': freq_dict[anom_id],
            'matched_with': best_match_id,
            'text_anom': text_anom,
            'text_corr': text_corr,
            'timeout_fallback': timeout_fallback,
            'selection_criterion': selection_criterion,
        }

        print(f"{anom_id} completed -> GED: {min_ged:.1f} | Sim: {sim_score:.3f} | Freq: {freq_dict[anom_id]} | Criterion: {selection_criterion}")
        
    return features_dict