import argparse
from pathlib import Path
import pm4py
import sys
import os
import pickle  # Added for Data Caching

os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# --- Imports from PHASE 1 ---
from src._1_baseline.frequencies_extractor import extract_frequencies
from src._1_baseline.ged_mapper import get_features
from src._1_baseline.parser import parse_subelements, add_manual_sub

# --- Imports from PHASE 2 ---
from src._2_engine.repair import run_repair

# --- Imports from PHASE 3 ---
from src._3_scenarios.a_global_frequency import sort_by_frequency
from src._3_scenarios.b_structural import sort_by_ged
from src._3_scenarios.c_semantic import sort_by_similarity

# --- Imports from PHASE 4 ---
from src._4_evaluation.metrics_calculator import evaluate_model
from src._4_evaluation.results_tracker import update_results_matrix, is_baseline_calculated

def main():
    parser = argparse.ArgumentParser(description="Log Alteration Engine - Process Mining")
    parser.add_argument("--dataset", type=str, required=True,
                        help="The dataset name (e.g., 'fineExp').")
    parser.add_argument("--strategy", type=str, required=True, choices=["infect", "repair"],
                        help="Choose whether to inject anomalies ('infect') or fix them ('repair').")
    parser.add_argument("--scenario", type=str, nargs='+', required=True,
                        help="Scenario code(s) to execute (e.g., frequency_sort ged_sort similarity_sort).")
    parser.add_argument("--recalc-baseline", action="store_true",
                        help="If set, recalculates baseline metrics before execution.")
    parser.add_argument("--incremental", action="store_true",
                        help="If set, repair is incremental (cumulative). If omitted, it evaluates each anomaly in isolation.")
    parser.add_argument("--run-tag", type=str, default="",
                        help="Optional tag to isolate parallel runs: appended to the results CSV and repaired XES filenames "
                             "so concurrent processes don't overwrite each other. The Scenario column is unaffected, "
                             "so tagged CSVs can be merged back into the main matrix afterwards.")

    args = parser.parse_args()

    dataset_name = args.dataset
    base_data_path = Path("data") / dataset_name
    log_path = base_data_path / f"{dataset_name}.xes"
    csv_path = base_data_path / f"{dataset_name}_table2_on_file.csv"
    anom_path = base_data_path / "custom" / "anomalous_sub.txt"
    corr_path = base_data_path / "custom" / "correct_sub.txt"
    pnml_path = base_data_path / "models_raw" / f"petri_net_{dataset_name}.pnml"
    mode_tag = "incremental" if args.incremental else "isolated"
    run_tag = args.run_tag.strip()
    run_suffix = f"_{run_tag}" if run_tag else ""
    matrix_path = Path("results") / f"new_experiments_matrix_{dataset_name}_{mode_tag}{run_suffix}.csv"
    sgiso_env_path_str = str(base_data_path / "sgiso_env") + "/"
    
    for path, name in [(log_path, "Log"), (csv_path, "CSV"), (anom_path, "Anomalous TXT"),
                       (corr_path, "Correct TXT"), (pnml_path, "PNML")]:
        if not path.exists():
            print(f"[ERROR] {name} file not found at {path}")
            sys.exit(1)
    
    # -----------------------------------
    # --- PHASE 1: Loading & Caching  ---
    # -----------------------------------
    original_log = pm4py.read_xes(str(log_path), return_legacy_log_object=True)
    freq_dict = extract_frequencies(csv_path)
    anomaly_ids = list(freq_dict.keys())
    anom_graphs = parse_subelements(anom_path, custom_ids=anomaly_ids)
    corr_graphs = parse_subelements(corr_path)
        
    if dataset_name == "fineExp":
        # Add the 5 missing graphs manually for the 'fineExp' dataset
        anom_graphs = add_manual_sub(anom_graphs, "Sub174", {1: "AddPenalty", 2: "NotifyOffenders", 3: "ReceiveResults"}, [(1,2), (2,3)])
        anom_graphs = add_manual_sub(anom_graphs, "Sub179", {1: "AddPenalty", 2: "NotifyOffenders", 3: "ReceiveResults"}, [(1,2), (2,3)])
        anom_graphs = add_manual_sub(anom_graphs, "Sub176", {1: "AddPenalty", 2: "AppealToPrefecture", 3: "AppealToJudge", 4: "SendAppeal"}, [(1,2), (2,3), (3,4)])
        anom_graphs = add_manual_sub(anom_graphs, "Sub178", {1: "AddPenalty", 2: "SendAppeal"}, [(1,2)])
        anom_graphs = add_manual_sub(anom_graphs, "Sub180", {1: "SendAppeal", 2: "AppealToJudge", 3: "AddPenalty"}, [(1,2), (2,3)])

    # 1. CACHING: Prevent features recalculation on every grid search iteration
    cache_path = base_data_path / "custom" / "features_cache.pkl"
    if cache_path.exists():
        print("[INFO] Loading pre-calculated GED features from cache...")
        with open(cache_path, 'rb') as f:
            features_dict = pickle.load(f)
    else:
        print("[INFO] First run detected: calculating and caching GED features...")
        features_dict = get_features(anom_graphs, corr_graphs, anomaly_ids, freq_dict)
        with open(cache_path, 'wb') as f:
            pickle.dump(features_dict, f)

    # -----------------------------------
    # --- PHASE 3: Scenario Selection ---
    # -----------------------------------
    scenario_params_list = []
    combined_anomalies = None
    
    for current_scenario in args.scenario:
        current_anomalies = []
        if current_scenario == "frequency_sort":
            current_anomalies = sort_by_frequency(features_dict, freq_dict)
            scenario_params_list.append("freq_sorted")
        elif current_scenario == "ged_sort":
            current_anomalies = sort_by_ged(features_dict)
            scenario_params_list.append("ged_sorted")
        elif current_scenario == "similarity_sort":
            current_anomalies = sort_by_similarity(features_dict)
            scenario_params_list.append("similarity_sorted")
        else:
            print(f"[ERROR] Scenario '{current_scenario}' not implemented or invalid.")
            sys.exit(1)
                
        # Retain the original insertion/sorting order defined by the primary scenario
        if combined_anomalies is None:
            # During the first iteration, strictly preserve the original list's order
            combined_anomalies = current_anomalies.copy()
        else:
            # On subsequent iterations, perform an intersection while maintaining the primary sorting order
            current_set = set(current_anomalies)
            combined_anomalies = [anom for anom in combined_anomalies if anom in current_set]
            
    target_anomalies = combined_anomalies
    
    # --- MULTI-LEVEL TIE-BREAKING SORTING ---
    # If multiple scenarios are combined, use a tuple to deterministically break ties based on the specified order.
    if len(args.scenario) > 1:
        def tie_breaker_key(anom_id):
            feats = features_dict.get(anom_id, {})
            key_tuple = []
            for scen in args.scenario:
                if scen == "frequency_sort":
                    # Frequency (Descending -> negative values)
                    key_tuple.append(-freq_dict.get(anom_id, 0))
                elif scen == "ged_sort":
                    # GED (Ascending)
                    key_tuple.append(feats.get('ged', 0))
                elif scen == "similarity_sort":
                    # Similarity (Descending -> negative values)
                    key_tuple.append(-feats.get('similarity', 0.0))
            return tuple(key_tuple)
            
        target_anomalies.sort(key=tie_breaker_key)
    
    final_scenario_name = "+".join(args.scenario)
    final_params_string = "+".join(scenario_params_list)
    
    if not target_anomalies:
        print(f"[WARNING] Combined scenario '{final_scenario_name}' resulted in 0 anomalies. Exiting.")
        sys.exit(0)
        
    if args.recalc_baseline or not is_baseline_calculated(matrix_path, dataset_name):
        print("[INFO] Calculating baseline metrics...")
        baseline_metrics = evaluate_model(log_path, pnml_path)
        update_results_matrix(matrix_path, dataset_name, "BASELINE", "original", 0, 0, baseline_metrics)
        
    # ----------------------------------
    # --- PHASE 2: Alteration Engine ---
    # ----------------------------------
    if args.strategy == "repair":
        altered_log, modified_traces = run_repair(
            dataset_name,
            original_log,
            anom_graphs,
            corr_graphs,
            features_dict,
            target_anomalies,
            sgiso_env_path=sgiso_env_path_str,
            is_incremental=args.incremental,
            parameters=final_params_string,
            run_tag=run_tag,
        )
    elif args.strategy == "infect":
        print("[ERROR] 'infect' strategy is declared in the CLI but not implemented yet.")
        sys.exit(1)
     
if __name__ == "__main__":
    main()