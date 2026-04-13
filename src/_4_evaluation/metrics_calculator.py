import sys
from pathlib import Path
from typing import Dict, Union

# pm4py imports
from pm4py.objects.log.importer.xes import importer as xes_importer
from pm4py.objects.petri_net.importer import importer as pnml_importer

from pm4py.algo.evaluation.replay_fitness import algorithm as fitness_evaluator
from pm4py.algo.evaluation.generalization import algorithm as generalization_evaluator
from pm4py.algo.evaluation.simplicity import algorithm as simplicity_evaluator

# Importazione diretta e specifica della variante richiesta per la Precision
from pm4py.algo.evaluation.precision.variants import automaton_after_align

def evaluate_model(xes_path: Union[str, Path], pnml_path: Union[str, Path], num_runs: int = 5) -> Dict[str, float]:
    """ 
    Calculates the metrics of Fitness, Precision, Generalization, and Simplicity.
    Precision and Generalization are calculated multiple times and averaged 
    to smooth out non-deterministic variations in alignment-based evaluation.
    """
    xes_path_str = str(xes_path)
    pnml_path_str = str(pnml_path)

    # =========================
    # Data Loading
    # =========================
    log = xes_importer.apply(xes_path_str)
    net, im, fm = pnml_importer.apply(pnml_path_str)

    # =========================
    # Fitness & Simplicity (Deterministiche, calcolate 1 sola volta)
    # =========================
    fitness = fitness_evaluator.apply(
        log, net, im, fm,
        variant=fitness_evaluator.Variants.ALIGNMENT_BASED
    )
    simplicity = simplicity_evaluator.apply(net)

    # =========================
    # Precision & Generalization (Ripetute per fare la media)
    # =========================
    precisions = []
    generalizations = []

    print(f"[INFO] Calcolo Metriche Avanzate: media su {num_runs} esecuzioni...")
    for i in range(num_runs):
        # Precision: Utilizzo diretto dell'Automaton After Alignment
        p_val = automaton_after_align.apply(log, net, im, fm)
        precisions.append(p_val)

        # Generalization
        g_val = generalization_evaluator.apply(log, net, im, fm)
        generalizations.append(g_val)

    # Calcolo Medie
    avg_precision = sum(precisions) / num_runs
    avg_generalization = sum(generalizations) / num_runs

    # =========================
    # Estrazione e formattazione
    # =========================
    fit_value = fitness.get("averageFitness", fitness.get("log_fitness", 0.0))

    return {
        "fitness": float(fit_value),
        "precision": float(avg_precision),
        "generalization": float(avg_generalization),
        "simplicity": float(simplicity)
    }

if __name__ == "__main__":
    # Standalone execution via CLI
    if len(sys.argv) != 3:
        print("Usage: python metrics_calculator.py <log.xes> <model.pnml>")
        sys.exit(1)

    cli_xes_path = sys.argv[1]
    cli_pnml_path = sys.argv[2]

    results = evaluate_model(cli_xes_path, cli_pnml_path)

    print("\n=== EVALUATION RESULTS ===")
    print(f"Fitness:        {results['fitness']:.4f}")
    print(f"Precision:      {results['precision']:.4f}")
    print(f"Generalization: {results['generalization']:.4f}")
    print(f"Simplicity:     {results['simplicity']:.4f}")
    print("==========================\n")