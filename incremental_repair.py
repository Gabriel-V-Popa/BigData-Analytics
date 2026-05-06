import argparse
from pathlib import Path
import pm4py
import pandas as pd
import sys
import os
import pickle

os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# --- Imports from PHASE 1 ---
from src._1_baseline.frequencies_extractor import extract_frequencies
from src._1_baseline.ged_mapper import get_features
from src._1_baseline.parser import parse_subelements, add_manual_sub

# --- Imports from PHASE 2 ---
from src._2_engine.repair import run_repair

# --- Imports from PHASE 4 ---
from src._4_evaluation.metrics_calculator import evaluate_model

def main():
    parser = argparse.ArgumentParser(description="Incremental Repair Analyzer - Pure Iterative Mode")
    parser.add_argument("--dataset", type=str, required=True,
                        help="Nome del dataset (es. 'fineExp').")
    # I due nuovi scenari: frequency o ged
    parser.add_argument("--scenario", type=str, required=True, choices=["frequency", "ged"],
                        help="Scenario di ordinamento: 'frequency' (più frequenti prima) o 'ged' (più semplici prima).")
    
    args = parser.parse_args()

    # --- Path Setup ---
    dataset_name = args.dataset
    base_data_path = Path("data") / "fineExp"
    
    log_path = base_data_path / f"{dataset_name}.xes"
    csv_path = base_data_path / f"fineExp_table2_on_file.csv"
    anom_path = base_data_path / "custom" / "anomalous_sub.txt"
    corr_path = base_data_path / "custom" / "correct_sub.txt"
    pnml_path = base_data_path / "models_raw" / f"petri_net_{dataset_name}.pnml"
    sgiso_env_path_str = str(base_data_path / "sgiso_env") + "/"

    
    out_dir = base_data_path / "custom" / "processed" / "incremental"
    out_dir.mkdir(parents=True, exist_ok=True)
    
    # Creiamo un CSV dedicato in base allo scenario per non sovrascrivere i risultati
    results_csv_path = Path("results") / f"incremental_matrix_{dataset_name}_{args.scenario}_Enzo2.csv"
    results_csv_path.parent.mkdir(parents=True, exist_ok=True)
        
    for path, name in [(log_path, "Log"), (csv_path, "CSV"), (anom_path, "Anomalous TXT"),
                       (corr_path, "Correct TXT"), (pnml_path, "PNML")]:
        if not path.exists():
            print(f"[ERROR] File {name} non trovato: {path}")
            sys.exit(1)

    # --- Loading & Caching ---
    print("\n[1] Caricamento del log e calcolo delle features...")
    original_log = pm4py.read_xes(str(log_path), return_legacy_log_object=True)
    freq_dict = extract_frequencies(csv_path)
    anomaly_ids = list(freq_dict.keys())
    anom_graphs = parse_subelements(anom_path, custom_ids=anomaly_ids)
    corr_graphs = parse_subelements(corr_path)
    
    
    # Aggiungiamo i 5 grafi mancanti per arrivare a 32
    anom_graphs = add_manual_sub(anom_graphs, "Sub174", {1: "AddPenalty", 2: "NotifyOffenders", 3: "ReceiveResults"}, [(1,2), (2,3)])
    anom_graphs = add_manual_sub(anom_graphs, "Sub179", {1: "AddPenalty", 2: "NotifyOffenders", 3: "ReceiveResults"}, [(1,2), (2,3)])
    anom_graphs = add_manual_sub(anom_graphs, "Sub176", {1: "AddPenalty", 2: "AppealToPrefecture", 3: "AppealToJudge", 4: "SendAppeal"}, [(1,2), (2,3), (3,4)])
    anom_graphs = add_manual_sub(anom_graphs, "Sub178", {1: "AddPenalty", 2: "SendAppeal"}, [(1,2)])
    anom_graphs = add_manual_sub(anom_graphs, "Sub180", {1: "SendAppeal", 2: "AppealToJudge", 3: "AddPenalty"}, [(1,2), (2,3)])


    cache_path = base_data_path / "custom" / "features_cache.pkl"
    if cache_path.exists():
        with open(cache_path, 'rb') as f:
            features_dict = pickle.load(f)
    else:
        features_dict = get_features(anom_graphs, corr_graphs, anomaly_ids, freq_dict)
        with open(cache_path, 'wb') as f:
            pickle.dump(features_dict, f)

    # --- Scenario / Ordinamento ---
    # Prendiamo TUTTE le anomalie valide trovate nel features_dict
    target_anomalies = list(features_dict.keys())
    
    if args.scenario == "frequency":
        # Ordina per frequenza decrescente (la più frequente è la prima)
        target_anomalies.sort(key=lambda x: freq_dict.get(x, 0), reverse=True)
        # Rimuovi gli elementi con GED > 1
        target_anomalies = [x for x in target_anomalies if features_dict[x]['ged'] <= 1.0]
    elif args.scenario == "ged":
        # Ordina per GED crescente (la più semplice/vicina alla norma è la prima)
        target_anomalies.sort(key=lambda x: features_dict[x]['ged'])

    if not target_anomalies:
        print("[WARNING] Zero anomalie caricate. Esco.")
        sys.exit(0)

    print(f"\n[2] Inizio Riparazione Incrementale per {len(target_anomalies)} anomalie.")
    print(f"Scenario attivo: Ordinamento per {args.scenario.upper()}")

    # --- Processo Iterativo ---
    results = []
    current_log = original_log
    
    # Valutazione Step 0 (Baseline)
    print("\n--- STEP 0: Valutazione Baseline (Log Originale) ---")
    base_metrics = evaluate_model(log_path, pnml_path, num_runs=3)
    results.append({
        'Step': 0,
        'Anomaly_ID': 'BASELINE',
        'Cumulative_Traces_Modified': 0,
        'Frequency': '-',
        'GED': '-',
        'Fitness': round(base_metrics['fitness'], 4),
        'Precision': round(base_metrics['precision'], 4),
        'Generalization': round(base_metrics['generalization'], 4),
        'Simplicity': round(base_metrics['simplicity'], 4)
    })
    
    cumulative_traces = 0
    
    # Ciclo a cascata
    for i, anom_id in enumerate(target_anomalies, start=1):
        freq = freq_dict.get(anom_id, 0)
        ged = features_dict[anom_id]['ged']
        
        print(f"\n--- STEP {i}/{len(target_anomalies)}: Riparazione {anom_id} (Frequenza: {freq}, GED: {ged:.2f}) ---")
        
        # Ripara SOLTANTO l'anomalia corrente sul log GIA' MODIFICATO nei passaggi precedenti
        current_log, modified_traces = run_repair(
            original_log, 
            anom_graphs, 
            corr_graphs, 
            features_dict, 
            target_anomalies, 
            sgiso_env_path=sgiso_env_path_str
        )
        cumulative_traces += modified_traces
        
        # Salva il log temporaneo per questo specifico step
        step_log_path = out_dir / f"step_{i}_{args.scenario}_{anom_id}.xes"
        pm4py.write_xes(current_log, str(step_log_path))
        
        # Valuta il nuovo log (media su 3 run)
        step_metrics = evaluate_model(step_log_path, pnml_path, num_runs=3)
        
        results.append({
            'Step': i,
            'Anomaly_ID': anom_id,
            'Cumulative_Traces_Modified': cumulative_traces,
            'Frequency': freq,
            'GED': round(ged, 2),
            'Fitness': round(step_metrics['fitness'], 4),
            'Precision': round(step_metrics['precision'], 4),
            'Generalization': round(step_metrics['generalization'], 4),
            'Simplicity': round(step_metrics['simplicity'], 4)
        })
        
        # Salva i risultati subito su CSV (così se interrompi lo script a metà non perdi i dati!)
        df = pd.DataFrame(results)
        df.to_csv(results_csv_path, index=False)
        
    print(f"\n✅ Analisi Incrementale Completata! Risultati salvati in {results_csv_path}")

if __name__ == "__main__":
    main()