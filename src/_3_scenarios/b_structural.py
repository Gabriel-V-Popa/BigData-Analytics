from typing import Dict, List, Any

def sort_by_ged(features_dict: Dict[str, Dict[str, Any]]) -> List[str]:
    """
    Scenario: Anomaly Complexity (GED Sorting).
    Sorts all anomalies based on their Graph Edit Distance (GED) from the correct subgraph,
    from the lowest GED to the highest.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        
    Returns:
        List[str]: A list of anomalous subgraph IDs sorted by GED (ascending).
    """
    sorted_anomalies = sorted(features_dict.keys(), key=lambda x: features_dict[x]['ged'])
                
    print(f"Scenario (GED Sort): Sorted {len(sorted_anomalies)} anomalies by GED (Ascending).")
    return sorted_anomalies