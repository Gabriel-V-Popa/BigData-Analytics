import pickle
from pathlib import Path
import os

def leggi_corrispondenze(dataset_name):
    # Percorso del file cache
    cache_path = os.path.join("data", dataset_name, "custom", "features_cache.pkl")
    
    if not os.path.exists(cache_path):
        print(f"❌ Errore: Il file cache non è stato trovato in {cache_path}")
        print("Assicurati di aver eseguito almeno una volta l'orchestratore per generarlo!")
        return
        
    with open(cache_path, 'rb') as f:
        features_dict = pickle.load(f)
        
    print(f"\n🔍 Contenuto di features_cache.pkl per il dataset '{dataset_name}':\n")
    print(f"{'Anomalia':<12} | {'Toppa Corretta':<15} | {'GED':<5} | {'Similarità'}")
    print("-" * 55)
    
    # Ordiniamo le anomalie alfanumericamente per comodità visiva
    for anom_id in sorted(features_dict.keys(), key=lambda x: int(''.join(filter(str.isdigit, x)) or 0)):
        feat = features_dict[anom_id]
        matched_with = feat.get('matched_with', 'N/D')
        ged = feat.get('ged', 0)
        similarity = feat.get('similarity', 0.0)
        
        print(f"{anom_id:<12} | {matched_with:<15} | {ged:<5} | {similarity:.4f}")
        
if __name__ == "__main__":
    # ✏️ CAMBIA IL DATASET QUI SE NECESSARIO (es. "fineExp" o "testBank")
    DATASET = "sepsis" 
    leggi_corrispondenze(DATASET)
