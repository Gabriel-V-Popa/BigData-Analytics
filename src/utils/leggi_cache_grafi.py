import pickle
from pathlib import Path
import os

def leggi_corrispondenze(dataset_name):
    # Percorso del file cache, ancorato alla radice del repo (questo script sta in
    # src/utils/, quindi la radice è due livelli sopra) così funziona a prescindere
    # dalla working directory da cui viene lanciato.
    repo_root = Path(__file__).resolve().parents[2]
    cache_path = repo_root / "data" / dataset_name / "custom" / "features_cache.pkl"

    if not os.path.exists(cache_path):
        print(f"[ERRORE] Il file cache non è stato trovato in {cache_path}")
        print("Assicurati di aver eseguito almeno una volta l'orchestratore per generarlo!")
        return
        
    with open(cache_path, 'rb') as f:
        features_dict = pickle.load(f)
        
    print(f"\nContenuto di features_cache.pkl per il dataset '{dataset_name}':\n")
    print(f"{'Anomalia':<12} | {'Toppa Corretta':<15} | {'GED':<5} | {'Similarità':<12} | {'Criterio'}")
    print("-" * 70)

    # Ordiniamo le anomalie alfanumericamente per comodità visiva
    for anom_id in sorted(features_dict.keys(), key=lambda x: int(''.join(filter(str.isdigit, x)) or 0)):
        feat = features_dict[anom_id]
        matched_with = feat.get('matched_with', 'N/D')
        ged = feat.get('ged', 0)
        similarity = feat.get('similarity', 0.0)
        criterion = feat.get('selection_criterion', 'N/D')

        print(f"{anom_id:<12} | {matched_with:<15} | {ged:<5} | {similarity:<12.4f} | {criterion}")
        
if __name__ == "__main__":
    # ✏️ CAMBIA IL DATASET QUI SE NECESSARIO (es. "fineExp" o "testBank")
<<<<<<< HEAD
    DATASET = "sepsis" 
=======
    DATASET = "testBank" 
>>>>>>> d4420477ea8311a5d0c40ef97e9d1a1556755899
    leggi_corrispondenze(DATASET)
