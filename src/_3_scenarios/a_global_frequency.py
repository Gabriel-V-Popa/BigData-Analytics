from typing import Dict, List, Any

def sort_by_frequency(features_dict: Dict[str, Dict[str, Any]], freq_dict: Dict[str, int]) -> List[str]:
    """
    Scenario: Global Frequency Sorting.
    Sorts all anomalies based on their occurrence frequency in the event log,
    from the most frequent to the least frequent (descending).
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        freq_dict (Dict): The dictionary mapping anomaly IDs to their absolute frequency.
        
    Returns:
        List[str]: A list of anomalous subgraph IDs sorted by frequency (descending).
    """
    sorted_anomalies = sorted(features_dict.keys(), key=lambda x: freq_dict.get(x, 0), reverse=True)
    print(f"Scenario (Frequency Sort): Sorted {len(sorted_anomalies)} anomalies by frequency (Descending).")
    return sorted_anomalies