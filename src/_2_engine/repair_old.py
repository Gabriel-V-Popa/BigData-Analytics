import pm4py
from pm4py.objects.log.obj import EventLog, Event
from typing import List, Dict, Any
import networkx as nx
from datetime import timedelta
from src._2_engine.shared import get_label_sequence, find_subsequence, find_fuzzy_subsequence

def run_repair(log: EventLog, 
               anomalous_graphs: Dict[str, nx.DiGraph], 
               correct_subgraphs: Dict[str, nx.DiGraph], 
               features_dict: Dict[str, Dict[str, Any]], 
               target_anomalies: List[str],
               tolerance: int = 1) -> EventLog:
    """
    Scans the Event Log and replaces occurrences of target anomalies with their correct counterparts.
    """
    print(f"Starting REPAIR engine for {len(target_anomalies)} target anomalies...")
    
    repaired_log = log
    
    # Pre-compute the label sequences for fast searching
    repair_mapping = {}
    for anom_id in target_anomalies:
        if anom_id not in features_dict:
            continue
        
        print(f"Anomaly {anom_id} matched with {features_dict[anom_id]['matched_with']}")
            
        corr_id = features_dict[anom_id]['matched_with']
        seq_anom = get_label_sequence(anomalous_graphs[anom_id])
        seq_corr = get_label_sequence(correct_subgraphs[corr_id])
        
        repair_mapping[anom_id] = {
            'anom_seq': seq_anom,
            'corr_seq': seq_corr
        }

    traces_modified = 0

    for trace in repaired_log:
        trace_labels = [event["concept:name"] for event in trace]
        trace_was_modified = False
        
        # Check for each target anomaly in the trace
        for anom_id, mapping in repair_mapping.items():
            anom_seq = mapping['anom_seq']
            corr_seq = mapping['corr_seq']
            
            if not anom_seq:
                continue

            # Tracking the offset prevents infinite loops
            search_offset = 0
            
            while True:
                # Troviamo dove inizia e finisce l'anomalia nella parte RIMANENTE della traccia
                rel_start, rel_end, dist = find_fuzzy_subsequence(trace_labels[search_offset:], anom_seq, max_tolerance=tolerance)
                
                if rel_start == -1:
                    break # Nessuna anomalia simile trovata entro la tolleranza, esci dal loop
                
                # Stampiamo un log se la distanza è maggiore di 0
                if dist > 0:
                    print(f"  [INFO] Trovata variante dell'anomalia {anom_id} con distanza {dist}. Sostituzione in corso...")
                    
                # Calcoliamo gli indici assoluti rispetto alla traccia intera
                start_idx = search_offset + rel_start
                end_idx = search_offset + rel_end
                
                # Estraiamo i timestamp per preservare il timeframe (usiamo i nuovi indici corretti!)
                start_time = trace[start_idx]["time:timestamp"]
                end_time = trace[end_idx]["time:timestamp"]
                
                # Calculate time step for new events
                num_new_events = len(corr_seq)
                time_diff = end_time - start_time
                step = time_diff / max(1, (num_new_events - 1)) if num_new_events > 1 else timedelta(0)
                
                # Salva i vecchi eventi dell'anomalia in un dizionario per recuperarli facilmente
                # Usiamo il concept:name come chiave per trovare l'evento corrispondente
                old_events_dict = {event["concept:name"]: event for event in trace[start_idx : end_idx + 1]}
                
                # Create new correct events
                new_events = []
                for i, label in enumerate(corr_seq):
                    new_event = Event()
                    
                    # Se l'evento che stiamo per inserire esisteva già nell'anomalia originale,
                    #    copiamo TUTTI i suoi attributi per non perdere dati preziosi (costi, risorse, ecc.)
                    if label in old_events_dict:
                        # pm4py Event si comporta come un dizionario
                        for key, value in old_events_dict[label].items():
                            new_event[key] = value
                            
                    new_event["concept:name"] = label
                    new_event["time:timestamp"] = start_time + (step * i)
                    new_event["lifecycle:transition"] = "complete" 
                    
                    new_events.append(new_event)
                
                # 1. CATTURA LA VARIANTE REALE: Estraiamo le label esatte che stiamo per cancellare dalla traccia
                found_variant = trace_labels[start_idx : end_idx + 1]
                
                # =================================================================
                # NUOVO CONTROLLO: Evitare di riparare tracce che sono già corrette
                # =================================================================
                if found_variant == corr_seq:
                    print(f"  [INFO] Saltata sostituzione: la sequenza trovata {found_variant} è già perfettamente corretta.")
                    # Spostiamo il cursore in avanti per superare questa porzione e non ricalcolarla
                    search_offset = start_idx + len(corr_seq)
                    # Usiamo CONTINUE per saltare il resto del codice di sostituzione e ripartire dal while True
                    continue
                
                # Replace the slice in the trace
                trace[start_idx : end_idx + 1] = new_events
                trace_was_modified = True
                
                # Update trace_labels for the next iteration
                trace_labels = [event["concept:name"] for event in trace]
                
                # Advance the search offset PAST the newly inserted correct sequence
                search_offset = start_idx + len(corr_seq)
                
                # 2. STAMPA DI DETTAGLIO
                print(f"\n--- [TRACE REPAIR] Anomalia {anom_id} ---")
                if dist > 0:
                    print(f"ATTENZIONE: Trovata variante sporca (Tolleranza usata: {dist})")
                    print(f"Cercavo:           {anom_seq}")
                print(f"Trovata nel log:   {found_variant}")
                print(f"Sostituita con:    {corr_seq}")
                print(f"Traccia COMPLETA:  {trace_labels}")
                print(f"----------------------------------------")
                
                print(f"Sostituzione dell'anomalia {anom_id} di sequenza {anom_seq} con la sequenza corretta {corr_seq} completata.")
                
        if trace_was_modified:
            traces_modified += 1

    print(f"Repair complete. Modified {traces_modified} out of {len(repaired_log)} traces.")
    return repaired_log, traces_modified