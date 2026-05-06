import os
import pandas as pd
from pm4py.objects.log.obj import EventLog, Event
from datetime import timedelta
from typing import List, Dict, Any

from src._2_engine.shared import get_label_sequence

import networkx as nx
from networkx.algorithms import isomorphism as iso
import os

def parse_graph_from_text(text: str) -> nx.DiGraph:
    """Trasforma il testo di un singolo file .g (traccia) in un grafo NetworkX."""
    G = nx.DiGraph()
    for line in text.splitlines():
        # Ignora righe vuote o eventuali 'S' rimaste per errore
        if not line.strip() or line.strip() == 'S': 
            continue
            
        parts = line.split()
        if len(parts) < 3:
            continue
            
        t = parts[0]
        if t == "v":
            idx = int(parts[1])
            # Preso dalla tua funzione: super sicuro per le label con spazi!
            label = " ".join(parts[2:]) 
            G.add_node(idx, label=label)
        elif t in ("e", "d"):
            u, v = int(parts[1]), int(parts[2])
            label = " ".join(parts[3:]) if len(parts) > 3 else ""
            G.add_edge(u, v, label=label)
            
    return G

def find_anomalous_nodes(trace_graph: nx.DiGraph, anom_graph: nx.DiGraph) -> list:
    """
    Esegue l'isomorfismo.
    Restituisce la lista degli indici dei nodi nel grafo della traccia che compongono l'anomalia.
    """
    node_match = iso.categorical_node_match('label', None)
    # Match flessibile per gli archi (se presenti)
    edge_match = iso.categorical_edge_match('label', None)
    
    GM = iso.DiGraphMatcher(trace_graph, anom_graph, node_match=node_match)
    
    matches = list(GM.subgraph_monomorphisms_iter())
    if not matches:
        return []
        
    # Prende il primo match trovato. 'match' è un dizionario {nodo_traccia: nodo_anomalia}
    match = matches[0]
    return sorted(list(match.keys()))

def sanitize_label(label: str) -> str:
    """Rimuove spazi, underscore e converte in minuscolo per un confronto a prova di bomba."""
    return str(label).replace(" ", "").replace("_", "").lower()

def find_exact_subsequence(full_list: List[str], sub_list: List[str]) -> int:
    """Trova l'indice di partenza sanitizzando le label per aggirare differenze di formattazione."""
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
    """Legge traceIdMapping.txt gestendo spazi bianchi invisibili."""
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
                mapping[graph_num] = trace_id # Salviamo anche il numero crudo
    return mapping

def get_infected_traces_from_csv(csv_path: str, sub_id: str, mapping: Dict[str, str]) -> Dict[str, str]:
    """Restituisce {ID_XES: Numero_Grafo} (es. {'N95560': '1212'})"""
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

def extract_valid_transitions(log: EventLog) -> set:
    """Estrae tutte le coppie di eventi adiacenti (Directly-Follows) presenti nel log."""
    valid_transitions = set()
    for trace in log:
        labels = [sanitize_label(event["concept:name"]) for event in trace]
        for i in range(len(labels) - 1):
            valid_transitions.add((labels[i], labels[i+1]))
    return valid_transitions

def run_repair(log: EventLog, 
               anomalous_graphs: Dict[str, Any], 
               correct_subgraphs: Dict[str, Any], 
               features_dict: Dict[str, Dict[str, Any]], 
               target_anomalies: List[str],
               sgiso_env_path: str = "data/fineExp/sgiso_env/") -> EventLog:
    
    print(f"Starting PYTHON NATIVE REPAIR engine for {len(target_anomalies)} target anomalies...")
    
    repaired_log = log
    traces_modified = 0

    print("[INFO] Indicizzazione delle tracce XES in corso...")
    # Puliamo anche i nomi delle tracce XES in caso di spazi fantasma
    trace_index_map = {str(trace.attributes["concept:name"]).strip(): idx for idx, trace in enumerate(repaired_log)}
    
    # NOVITÀ: Calcoliamo il vocabolario delle transizioni lecite
    print("[INFO] Estrazione del vocabolario delle transizioni (Directly-Follows)...")
    valid_transitions = extract_valid_transitions(repaired_log)
    
    mapping_path = os.path.join(sgiso_env_path, "traceIdMapping.txt")
    trace_mapping = load_trace_mapping(mapping_path)
    csv_path = os.path.join("data", "fineExp", "fineExp_table2_on_file.csv")
    
    

    for anom_id in target_anomalies:
        if anom_id not in features_dict:
            continue
            
        anom_seq = get_label_sequence(anomalous_graphs[anom_id])
        corr_id = features_dict[anom_id]['matched_with']
        corr_seq = get_label_sequence(correct_subgraphs[corr_id])
        
        print(f"\n[INFO] Riparazione nativa di {anom_id} in corso...")
        print(f"  -> Sequenza anomala che stiamo cercando: {anom_seq}")
        
        infected_traces = get_infected_traces_from_csv(csv_path, anom_id, trace_mapping)
        print(f"  -> Trovate {len(infected_traces)} tracce infette nel CSV mappate all'ID XES.")
        
        missed_mapping = 0
        missed_sequence = 0
        already_correct = 0
        local_modified = 0

        for trace_id, graph_num in infected_traces.items():
            if trace_id not in trace_index_map:
                missed_mapping += 1
                continue
                
            trace_idx = trace_index_map[trace_id]
            trace = repaired_log[trace_idx]
            # 1. CARICHIAMO IL GRAFO DELLA TRACCIA
            # (Assicurati che il path 'graphs/graph{graph_num}.g' combaci con le tue cartelle!)
            graph_path = f"{sgiso_env_path}graphs/graph{graph_num}.g" 
            if not os.path.exists(graph_path):
                # Fallback nel caso il file si chiami solo "1212.g" invece di "graph1212.g"
                graph_path = f"graphs/{graph_num}.g"
                if not os.path.exists(graph_path):
                    continue
            
            with open(graph_path, "r") as f:
                trace_graph_text = f.read()
                
            trace_graph = parse_graph_from_text(trace_graph_text)
            anom_graph = anomalous_graphs[anom_id]
            
            # 2. ISOMORFISMO (Trova i nodi malati nel grafo)
            infected_node_ids = find_anomalous_nodes(trace_graph, anom_graph)
            
            if not infected_node_ids:
                # [Questo risolve il bug dei Falsi Positivi del prof in modo elegante!]
                continue
            
            # --- INIZIO GRAPH SURGERY ---
            corr_graph = correct_subgraphs[corr_id]
            
            # A) Trova i nodi "Ponte" (Chi entra nell'anomalia e chi esce)
            predecessors = set()
            successors = set()
            for n in infected_node_ids:
                for p in trace_graph.predecessors(n):
                    if p not in infected_node_ids:
                        predecessors.add(p)
                for s in trace_graph.successors(n):
                    if s not in infected_node_ids:
                        successors.add(s)

            # B) Rimuovi il sottografo infetto dal grafo della traccia
            trace_graph.remove_nodes_from(infected_node_ids)

            # C) Identifica i nodi di Start ed End del grafo corretto
            corr_start_nodes = [n for n in corr_graph.nodes() if corr_graph.in_degree(n) == 0]
            corr_end_nodes = [n for n in corr_graph.nodes() if corr_graph.out_degree(n) == 0]

            # D) Inietta il nuovo grafo (creando ID univoci)
            max_id = max(trace_graph.nodes()) if trace_graph.nodes() else 0
            mapping = {} # Mappa i vecchi ID del corr_graph ai nuovi ID nel trace_graph
            
            for n, data in corr_graph.nodes(data=True):
                max_id += 1
                mapping[n] = max_id
                trace_graph.add_node(max_id, label=data.get('label', ''))

            for u, v, data in corr_graph.edges(data=True):
                trace_graph.add_edge(mapping[u], mapping[v], label=data.get('label', ''))

            # E) Ricuciamo gli archi
            for p in predecessors:
                for s_node in corr_start_nodes:
                    trace_graph.add_edge(p, mapping[s_node])

            for e_node in corr_end_nodes:
                for s in successors:
                    trace_graph.add_edge(mapping[e_node], s)

            # --- FINE GRAPH SURGERY ---

            # 3. APPIATTIMENTO (TOPOLOGICAL SORT) COME CHIESTO DALLA PROF
            try:
                # Estraiamo l'ordine sequenziale dal NUOVO grafo corretto
                new_patch_node_order = list(nx.topological_sort(corr_graph))
                corr_seq = [corr_graph.nodes[n]['label'].strip() for n in new_patch_node_order]
            except nx.NetworkXUnfeasible:
                # Se c'è un ciclo (rarissimo), usiamo la vecchia funzione di sicurezza
                corr_seq = get_label_sequence(corr_graph)
            
            trace_labels = [event["concept:name"] for event in trace]
            
            # 1. CONTROLLO already_correct (DA FARE PRIMA!)
            # Se ha già la sequenza perfetta, contiamo e saltiamo
            if find_exact_subsequence(trace_labels, corr_seq) != -1:
                already_correct += 1
                continue
            
            # 2. CERCHIAMO L'ANOMALIA (Se arriviamo qui, non è already_correct)
            # Cerchiamo l'indice REALE dove applicare la toppa nello XES
            start_idx = find_exact_subsequence(trace_labels, anom_seq)
            if start_idx == -1:
                missed_sequence += 1
                continue
            
            end_idx = start_idx + len(anom_seq) - 1
            
            
            
            # --- VERIFICA POST-CORREZIONE (LE "CUCITURE") ---
            is_valid_patch = True
            
            # Controlla la cucitura IN INGRESSO (se non siamo all'inizio della traccia)
            if start_idx > 0:
                pre_event = sanitize_label(trace[start_idx - 1]["concept:name"])
                first_patch_event = sanitize_label(corr_seq[0])
                if (pre_event, first_patch_event) not in valid_transitions:
                    print(f"  [SKIP] Riparazione ignorata per {trace_id}: transizioni iniziale non valida per la sequenza tra l'evento '{pre_event}' e l'evento '{first_patch_event}'. ")
                    is_valid_patch = False
                    
            # Controlla la cucitura IN USCITA (se non siamo alla fine della traccia)
            if end_idx < len(trace) - 1:
                post_event = sanitize_label(trace[end_idx + 1]["concept:name"])
                last_patch_event = sanitize_label(corr_seq[-1])
                if (last_patch_event, post_event) not in valid_transitions:
                    print(f"  [SKIP] Riparazione ignorata per {trace_id}: transizioni finale non valida per la sequenza tra l'evento '{last_patch_event}' e l'evento '{post_event}'. ")
                    is_valid_patch = False
                    
            if not is_valid_patch:
                # Se le cuciture creano transizioni aliene, skippiamo questa traccia!
                # print(f"  [SKIP] Riparazione ignorata per {trace_id}: transizioni di bordo non valide. ")
                continue
            # --- FINE VERIFICA ---
            
            start_time = trace[start_idx]["time:timestamp"]
            end_time = trace[end_idx]["time:timestamp"]
            
            num_new_events = len(corr_seq)
            time_diff = end_time - start_time
            step = time_diff / max(1, (num_new_events - 1)) if num_new_events > 1 else timedelta(0)
            
            old_events_dict = {sanitize_label(event["concept:name"]): event for event in trace[start_idx : end_idx + 1]}
            
            new_events = []
            for i, label in enumerate(corr_seq):
                new_event = Event()
                sanitized_l = sanitize_label(label)
                if sanitized_l in old_events_dict:
                    for key, value in old_events_dict[sanitized_l].items():
                        new_event[key] = value
                
                new_event["concept:name"] = label
                new_event["time:timestamp"] = start_time + (step * i)
                new_event["lifecycle:transition"] = "complete" 
                new_events.append(new_event)
            
            trace[start_idx : end_idx + 1] = new_events
                
            traces_modified += 1
            local_modified += 1
            
        # Resoconto dettagliato di fine anomalia
        if local_modified > 0:
            print(f"  [SUCCESS] {local_modified} tracce riparate con successo per {anom_id}.")
        if missed_mapping > 0:
            print(f"  [WARNING] {missed_mapping} ID del CSV non trovati nel file XES.")
        if missed_sequence > 0:
            print(f"  [WARNING] In {missed_sequence} tracce le label non combaciavano o non erano consecutive.")
        if already_correct > 0:
            print(f"  [INFO] {already_correct} tracce erano già nella forma corretta.")

    print(f"\nRepair complete. Modified {traces_modified} out of {len(repaired_log)} traces.")
    return repaired_log, traces_modified