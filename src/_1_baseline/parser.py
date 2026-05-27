import networkx as nx
import re
from typing import Dict, List, Optional, Union
from pathlib import Path

def parse_subelements(file_path: Union[str, Path], custom_ids: Optional[List[str]] = None) -> Dict[str, nx.DiGraph]:
    """
    Parses the custom text format 'S \\n v 1 Label \\n d 1 2' into NetworkX directed graphs.
    
    Args:
        file_path (Union[str, Path]): The path to the text file containing the subgraphs.
        custom_ids (List[str], optional): A list of specific IDs to assign to the parsed graphs.
        
    Returns:
        Dict[str, nx.DiGraph]: A dictionary mapping graph IDs to their corresponding NetworkX objects.
    """
    graphs = {}
    
    # Read the content of the file
    with open(file_path, 'r', encoding='utf-8') as file:
        file_content = file.read()
    
    # Split the file into blocks using standalone 'S' lines
    blocks = re.split(r'\nS\n|^S\n', file_content.strip())
    valid_blocks = [b for b in blocks if b.strip()]
    
    for i, block in enumerate(valid_blocks):
        graph = nx.DiGraph()
        lines = block.strip().split('\n')
        
        # ID assignment: use custom_ids if provided, otherwise fallback to default
        if custom_ids and i < len(custom_ids):
            sub_id = custom_ids[i]
        else:
            sub_id = f"CorrSub_{i+1}"
            
        for line in lines:
            parts = line.split()
            if len(parts) < 3: 
                continue
            
            # Node parsing ('v <node_id> <label_with_potential_spaces>')
            if parts[0] == 'v':
                node_id = int(parts[1])
                label = " ".join(parts[2:]) 
                graph.add_node(node_id, label=label)
                
            # Edge parsing ('d <source_id> <target_id>' or 'e <source_id> <target_id>')
            elif parts[0] in ['d', 'e']:
                source = int(parts[1])
                target = int(parts[2])
                graph.add_edge(source, target)
                
        graphs[sub_id] = graph
        
    return graphs


def add_manual_sub(sub_dict, sub_id, nodes_dict, edges_list) -> Dict[str, nx.DiGraph]:
    G = nx.DiGraph()
    for nid, lbl in nodes_dict.items():
        G.add_node(nid, label=lbl)
    G.add_edges_from(edges_list)
    sub_dict[sub_id] = G
    return sub_dict

def parse_graph_from_text(text: str) -> nx.DiGraph:
    """Parses a single .g file (trace graph) into a NetworkX DiGraph."""
    G = nx.DiGraph()
    for line in text.splitlines():
        # Ignore empty lines or any remaining 'S' lines by mistake
        if not line.strip() or line.strip() == 'S': 
            continue
            
        parts = line.split()
        if len(parts) < 3:
            continue
            
        t = parts[0]
        if t == "v":
            idx = int(parts[1])
            # Safely handle labels with spaces
            label = " ".join(parts[2:]) 
            G.add_node(idx, label=label)
        elif t in ("e", "d"):
            u, v = int(parts[1]), int(parts[2])
            label = " ".join(parts[3:]) if len(parts) > 3 else ""
            G.add_edge(u, v, label=label)
            
    return G