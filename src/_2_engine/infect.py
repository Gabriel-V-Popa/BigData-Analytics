import pm4py
from pm4py.objects.log.obj import EventLog, Event
from typing import List, Dict, Any, Tuple
import networkx as nx
from datetime import timedelta

from src._2_engine.shared import get_label_sequence, find_subsequence

def run_infect(log: EventLog, 
               anomalous_graphs: Dict[str, nx.DiGraph], 
               correct_subgraphs: Dict[str, nx.DiGraph], 
               features_dict: Dict[str, Dict[str, Any]], 
               target_anomalies: List[str]) -> Tuple[EventLog, int]:
    """
    Scans the Event Log and replaces occurrences of correct subsequences 
    with their anomalous counterparts (Injection).
    """
    print(f"Starting INFECT engine for {len(target_anomalies)} target anomalies...")
    
    infected_log = log
    
    # Pre-compute the label sequences for fast searching
    infect_mapping = {}
    for anom_id in target_anomalies:
        if anom_id not in features_dict:
            continue
            
        corr_id = features_dict[anom_id]['matched_with']
        seq_anom = get_label_sequence(anomalous_graphs[anom_id])
        seq_corr = get_label_sequence(correct_subgraphs[corr_id])
        
        # REVERSE MAPPING: It searches for the CORRECT seq and inject the ANOMALOUS one
        infect_mapping[anom_id] = {
            'search_seq': seq_corr,
            'inject_seq': seq_anom
        }

    traces_modified = 0

    for trace in infected_log:
        trace_labels = [event["concept:name"] for event in trace]
        trace_was_modified = False
        
        # Check for each target behavior in the trace
        for anom_id, mapping in infect_mapping.items():
            search_seq = mapping['search_seq']
            inject_seq = mapping['inject_seq']
            
            if not search_seq:
                continue

            # Tracking the offset prevents infinite loops
            search_offset = 0
            
            while True:
                # Find where the CORRECT sequence starts in the REMAINING part of the trace
                rel_idx = find_subsequence(trace_labels[search_offset:], search_seq)
                
                if rel_idx == -1:
                    break # Not found, exit the while loop
                    
                start_idx = search_offset + rel_idx
                end_idx = start_idx + len(search_seq) - 1
                
                # Extract timestamps to preserve the timeframe
                start_time = trace[start_idx]["time:timestamp"]
                end_time = trace[end_idx]["time:timestamp"]
                
                # Calculate time step for new anomalous events
                num_new_events = len(inject_seq)
                time_diff = end_time - start_time
                step = time_diff / max(1, (num_new_events - 1)) if num_new_events > 1 else timedelta(0)
                
                # Create new anomalous events
                new_events = []
                for i, label in enumerate(inject_seq):
                    new_event = Event()
                    new_event["concept:name"] = label
                    new_event["time:timestamp"] = start_time + (step * i)
                    new_event["lifecycle:transition"] = "complete" 
                    new_events.append(new_event)
                
                # Replace the slice in the trace
                trace[start_idx : end_idx + 1] = new_events
                trace_was_modified = True
                
                # Update trace_labels for the next iteration
                trace_labels = [event["concept:name"] for event in trace]
                
                # Advance the search offset PAST the newly inserted anomalous sequence
                search_offset = start_idx + len(inject_seq)
                
        if trace_was_modified:
            traces_modified += 1

    print(f"Infection complete. Modified {traces_modified} out of {len(infected_log)} traces.")
    return infected_log, traces_modified