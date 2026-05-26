from typing import Dict, Any, List
def sort_by_similarity(features_dict: Dict[str, Dict[str, Any]]) -> List[str]:
    """
    Scenario: Semantic Similarity Sorting.
    Sorts all anomalies based on their semantic similarity to the correct subgraph,
    from the highest similarity (most semantically similar) to the lowest.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        
    Returns:
        List[str]: A list of anomalous subgraph IDs sorted by similarity (descending).
    """
    sorted_anomalies = sorted(features_dict.keys(), key=lambda x: features_dict[x].get('similarity', 0.0), reverse=True)
                
    print(f"Scenario (Similarity Sort): Sorted {len(sorted_anomalies)} anomalies by similarity (Descending).")
    return sorted_anomalies
    