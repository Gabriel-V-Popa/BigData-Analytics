# BigData-Analytics

Pipeline di **Process Mining** in Python per rilevare e riparare anomalie strutturali in event log industriali. Riceve un event log (XES) e un modello di processo (Petri net PNML), individua sotto-grafi anomali rispetto a sotto-grafi di riferimento "corretti", esegue una **graph surgery** sulle tracce infette sostituendo le porzioni anomale con quelle corrette, e valuta le metriche di conformità del modello (Fitness, Precision, Generalization, Simplicity).

Basato su `pm4py`, `networkx` e `sentence-transformers` (SBERT).

---

## Struttura del repository

```
BigData-Analytics/
├── main.py                            # entry point CLI
├── requirements.txt                   # dipendenze pipeline
├── src/
│   ├── _1_baseline/                   # FASE 1 — parsing & feature extraction
│   │   ├── parser.py                  # legge sotto-grafi .txt → networkx.DiGraph
│   │   ├── frequencies_extractor.py   # estrae frequenze occorrenze dal CSV
│   │   └── ged_mapper.py              # calcola GED + similarità SBERT, cache
│   ├── _2_engine/                     # FASE 2 — motore di repair
│   │   ├── repair.py                  # graph surgery + riscrittura tracce XES
│   │   └── shared.py                  # isomorfismo, sanitizzazione label, mapping
│   ├── _3_scenarios/                  # FASE 3 — criteri di prioritizzazione
│   │   ├── a_global_frequency.py      # ordina per frequenza (DESC)
│   │   ├── b_structural.py            # ordina per GED (ASC)
│   │   └── c_semantic.py              # ordina per similarità semantica (DESC)
│   ├── _4_evaluation/                 # FASE 4 — valutazione metriche
│   │   ├── metrics_calculator.py      # Fitness/Precision/Generalization/
│   │   └── results_tracker.py         # update CSV matrice risultati
│   └── utils/                         # script ausiliari
│       ├── png_from_pnml.py           # esporta PNG da PNML
│       ├── process_discovery.py       # discovery Petri net da log
│       └── ...
├── data/<dataset>/                    # input + output di un singolo dataset
│   ├── <dataset>.xes                  # event log
│   ├── <dataset>_table2_on_file.csv   # matrice (Grafo × Sub_ID) di occorrenze
│   ├── subelements.txt                # tutti i sotto-grafi candidati
│   ├── custom/
│   │   ├── anomalous_sub.txt          # sotto-grafi anomali (output notebook)
│   │   ├── correct_sub.txt            # sotto-grafi corretti (output notebook)
│   │   ├── features_cache.pkl         # cache GED+SBERT (generata al primo run)
│   │   └── processed/                 # log XES riparati salvati per anomalia
│   ├── models_raw/
│   │   └── petri_net_<dataset>.pnml   # Petri net di riferimento
│   └── sgiso_env/
│       ├── graphs/                    # grafi per traccia (graph<N>.g)
│       ├── subelements.txt            # copia dei sotto-grafi
│       └── traceIdMapping.txt         # mapping graph<N> → trace_id XES
├── notebooks/fineExp/                 # notebook di pre-processing
│   ├── 0_clusterings.ipynb            # divide anomalous/correct + clustering
│   ├── 2_clustering.ipynb
│   └── requirements.txt               # dipendenze extra per i notebook
└── results/                           # matrici CSV con i risultati esperimenti
    └── new_experiments_matrix_<dataset>_<mode>.csv
```

---

## Installazione

```bash
pip install -r requirements.txt
```

Per eseguire i notebook di pre-processing in `notebooks/fineExp/` è necessario installare anche le dipendenze aggiuntive:

```bash
pip install -r notebooks/fineExp/requirements.txt
```

---

## Esecuzione

### Uso standard: `main.py`

```bash
python main.py --dataset <nome_dataset> \
               --strategy repair \
               --scenario <scenario_1> [<scenario_2> ...] \
               [--incremental] \
               [--recalc-baseline]
```

**Argomenti:**

| Flag | Valori | Descrizione |
|---|---|---|
| `--dataset` | nome cartella in `data/` | Identifica il dataset; deve corrispondere al nome dei file (`<dataset>.xes`, `<dataset>_table2_on_file.csv`, ecc.). |
| `--strategy` | `repair` / `infect` | `repair` esegue la riparazione delle anomalie. `infect` è dichiarato ma non implementato (esce con errore). |
| `--scenario` | `frequency_sort` / `ged_sort` / `similarity_sort` | Uno o più criteri di ordinamento delle anomalie; più valori consentiti per tie-breaking multilivello. |
| `--incremental` | flag | Modalità cumulativa: ogni anomalia parte dal log riparato delle precedenti. Se omesso, modalità **isolated** (ogni anomalia parte dal log originale). |
| `--recalc-baseline` | flag | Forza il ricalcolo delle metriche baseline anche se già presenti nella matrice CSV. |

**Esempi:**

Repair singolo scenario in modalità isolated:
```bash
python main.py --dataset fineExp --strategy repair --scenario frequency_sort
```

Combinazione di scenari (similarità semantica decrescente, tie-break su GED crescente, poi su frequenza decrescente) in modalità incrementale:
```bash
python main.py --dataset fineExp --strategy repair \
               --scenario similarity_sort ged_sort frequency_sort \
               --incremental
```

> **Nota sull'ordine degli scenari:** in `--incremental` l'ordine è semanticamente rilevante perché determina il tie-breaking del sorting; in modalità **isolated** l'ordine è praticamente irrilevante perché ogni anomalia viene riparata sul log originale.

### Output

- **Log riparati**: `data/<dataset>/custom/processed/<dataset>_repair_<mode>_<anom_id>.xes` (uno per anomalia).
- **Matrice risultati**: `results/new_experiments_matrix_<dataset>_<mode>.csv` con colonne `Dataset, Strategy, Scenario, Parameters, Local_Modified_Traces, Total_Modified_Traces, Fitness, Precision, Generalization, Simplicity`. La combinazione di scenari finisce nella colonna `Parameters` (es. `similarity_sorted+ged_sorted+freq_sorted`).

### Test su una singola anomalia (uso programmatico di `repair.run_repair`)

Per testare la pipeline su **una sola anomalia** senza passare per la CLI completa, si può importare `run_repair` direttamente:

```python
import pm4py
from pathlib import Path
from src._1_baseline.frequencies_extractor import extract_frequencies
from src._1_baseline.parser import parse_subelements
from src._1_baseline.ged_mapper import get_features
from src._2_engine.repair import run_repair

dataset = "fineExp"
base = Path("data") / dataset

log = pm4py.read_xes(str(base / f"{dataset}.xes"), return_legacy_log_object=True)
freq = extract_frequencies(base / f"{dataset}_table2_on_file.csv")
anom_graphs = parse_subelements(base / "custom" / "anomalous_sub.txt",
                                custom_ids=list(freq.keys()))
corr_graphs = parse_subelements(base / "custom" / "correct_sub.txt")
features = get_features(anom_graphs, corr_graphs, list(freq.keys()), freq)

run_repair(
    dataset_name=dataset,
    log=log,
    anomalous_graphs=anom_graphs,
    correct_subgraphs=corr_graphs,
    features_dict=features,
    target_anomalies=["Sub19"],          # solo una anomalia
    sgiso_env_path=str(base / "sgiso_env") + "/",
    is_incremental=False,
    parameters="single_anomaly_test",
)
```

`evaluate_model` è inoltre eseguibile standalone come CLI:

```bash
python src/_4_evaluation/metrics_calculator.py <log.xes> <model.pnml>
```

---

## Invalidare la cache delle feature

`get_features` calcola GED + SBERT per ogni anomalia e serializza il risultato in `data/<dataset>/custom/features_cache.pkl`. Le run successive sullo stesso dataset **riutilizzano la cache** senza ricalcolare.

> **Se si modificano i sotto-grafi anomali/corretti, oppure si vuole rilanciare da zero un dataset, è necessario cancellare manualmente il file** `data/<dataset>/custom/features_cache.pkl` **prima** di rilanciare `main.py`. In caso contrario il sistema userà le feature obsolete ignorando le modifiche.

```bash
# Linux/macOS
rm data/<dataset>/custom/features_cache.pkl
# Windows PowerShell
Remove-Item data\<dataset>\custom\features_cache.pkl
```

---

## Aggiungere un nuovo dataset

Per aggiungere un dataset `tuodataset`, il nome deve essere **identico in ogni path** (cartella, file XES, CSV, PNML), altrimenti `main.py` non trova i file.

1. **Crea la struttura della cartella** `data/tuodataset/` ricalcando quella di `data/fineExp/` (sottocartelle `custom/`, `models_raw/`, `sgiso_env/`).

2. **Event log**: scarica il file XES dalla sorgente, rinominalo in `tuodataset.xes` e mettilo in `data/tuodataset/tuodataset.xes`.

3. **File di supporto in `sgiso_env`**: dalla sorgente, copia in `data/tuodataset/sgiso_env/`:
   - la cartella `graphs/` (contiene `graph<N>.g` per ogni traccia)
   - il file `subelements.txt`
   - il file `traceIdMapping.txt`

4. **CSV occorrenze e subelements duplicato**: nella cartella principale del dataset (`data/tuodataset/`) metti:
   - `tuodataset_table2_on_file.csv` — matrice Grafo × Sub_ID, separatore `;`
   - una copia di `subelements.txt` (lo stesso file del punto 3)

5. **Petri net**: copia il PNML dalla sorgente in `data/tuodataset/models_raw/` e rinominalo in `petri_net_tuodataset.pnml`. **Il prefisso `petri_net_` è richiesto** da `main.py` per costruire il path. Per generare la visualizzazione PNG della rete è disponibile lo script `src/utils/png_from_pnml.py` (modificare le costanti `PNML_FILE` e `OUTPUT_FILE` in cima al file).

6. **Generazione `anomalous_sub.txt` e `correct_sub.txt`**: aprire il notebook `notebooks/fineExp/0_clusterings.ipynb` ed eseguire le **prime 3 celle di codice** (imports, definizione di `divide_subgraph`, chiamata della funzione). Modificare nella cella le variabili `csv_file` e `txt_file` per puntare a:
   - `data/tuodataset/tuodataset_table2_on_file.csv`
   - `data/tuodataset/subelements.txt`

   Il notebook divide i sotto-grafi tra anomali e corretti e li salva in `data/tuodataset/custom/anomalous_sub.txt` e `data/tuodataset/custom/correct_sub.txt`.

7. **Esecuzione**:
   ```bash
   python main.py --dataset tuodataset --strategy repair --scenario frequency_sort
   ```

---

## Dataset di esempio inclusi

| Dataset | Note |
|---|---|
| `fineExp` | Log molto conforme al modello; Δ metriche dopo repair ~ 0.001–0.004. |
| `sepsis` | Baseline rumorosa; Fitness sale da 0.7074 a 0.7376 in modalità incrementale. |
| `testBank` | Solo baseline calcolata. |

Le matrici complete dei risultati sono in `results/`.
