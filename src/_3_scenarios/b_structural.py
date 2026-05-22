from typing import Dict, List, Any
import networkx as nx

def sort_by_ged(features_dict: Dict[str, Dict[str, Any]]) -> List[str]:
    """
    Scenario B.1 - Anomaly Complexity (GED Sorting).
    Sorts all anomalies based on their Graph Edit Distance (GED) from the correct subgraph,
    from the lowest GED to the highest.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        
    Returns:
        List[str]: A list of anomalous subgraph IDs sorted by GED (ascending).
    """
    sorted_anomalies = sorted(features_dict.keys(), key=lambda x: features_dict[x]['ged'])
                
    print(f"Scenario B.1 (GED Sort): Sorted {len(sorted_anomalies)} anomalies by GED (Ascending).")
    return sorted_anomalies


def filter_by_bottleneck(features_dict: Dict[str, Dict[str, Any]], 
                         anomalous_graphs: Dict[str, nx.DiGraph], 
                         bottleneck_nodes: List[str]) -> List[str]:
    """
    Scenario B.2 - Critical Nodes (Bottlenecks).
    Selects anomalies that contain at least one of the specified bottleneck activities.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        anomalous_graphs (Dict): Dictionary of anomalous NetworkX subgraphs.
        bottleneck_nodes (List[str]): List of activity labels considered bottlenecks.
        
    Returns:
        List[str]: IDs of anomalies involving bottleneck activities.
    """
    selected = []
    
    for anom_id in features_dict.keys():
        graph = anomalous_graphs[anom_id]
        
        # Extract all activity labels present in the anomalous subgraph
        labels = [data.get('label', '') for _, data in graph.nodes(data=True)]
        
        # Check if there is any intersection between the subgraph labels and the bottlenecks
        if any(b_node in labels for b_node in bottleneck_nodes):
            selected.append(anom_id)
            
    print(f"Scenario B.2 (Bottlenecks): Selected {len(selected)} anomalies involving {bottleneck_nodes}.")
    return selected


def filter_by_position(features_dict: Dict[str, Dict[str, Any]], 
                       anomalous_graphs: Dict[str, nx.DiGraph], 
                       target_activities: List[str],
                       position_name: str = "Target") -> List[str]:
    """
    Scenario B.3 - Topological Position (Early / Late).
    Selects anomalies that involve specific early or late activities in the process.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        anomalous_graphs (Dict): Dictionary of anomalous NetworkX subgraphs.
        target_activities (List[str]): List of early (e.g., 'CreateFine') or late activities.
        position_name (str): Label for printing purposes (e.g., "Early" or "Late").
        
    Returns:
        List[str]: IDs of anomalies occurring in the specified topological position.
    """
    selected = []
    
    for anom_id in features_dict.keys():
        graph = anomalous_graphs[anom_id]
        labels = [data.get('label', '') for _, data in graph.nodes(data=True)]
        
        if any(t_node in labels for t_node in target_activities):
            selected.append(anom_id)
            
    print(f"Scenario B.3 ({position_name} Position): Selected {len(selected)} anomalies.")
    return selected

def sort_by_similarity(features_dict: Dict[str, Dict[str, Any]]) -> List[str]:
    """
    Scenario C.1 - Semantic Similarity Sorting.
    Sorts all anomalies based on their semantic similarity to the correct subgraph,
    from the highest similarity (most semantically similar) to the lowest.
    
    Args:
        features_dict (Dict): The dictionary containing all features.
        
    Returns:
        List[str]: A list of anomalous subgraph IDs sorted by similarity (descending).
    """
    sorted_anomalies = sorted(features_dict.keys(), key=lambda x: features_dict[x].get('similarity', 0.0), reverse=True)
                
    print(f"Scenario C.1 (Similarity Sort): Sorted {len(sorted_anomalies)} anomalies by similarity (Descending).")
    return sorted_anomalies
    