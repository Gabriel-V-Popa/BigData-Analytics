import pandas as pd
import os

def cerca_grafi(percorso_csv, sub_id):
    if not os.path.exists(percorso_csv):
        print(f"❌ Errore: Il file {percorso_csv} non esiste.")
        return

    # Carica il CSV usando il separatore corretto
    df = pd.read_csv(percorso_csv, sep=';', encoding='utf-8-sig')
    
    # Pulisce i nomi delle colonne da eventuali spazi invisibili
    df.columns = [str(col).strip() for col in df.columns]
    
    # Verifica che l'anomalia esista come colonna
    if sub_id not in df.columns:
        print(f"❌ Errore: La colonna '{sub_id}' non esiste nel file CSV.")
        print(f"Anomalie disponibili: {', '.join(list(df.columns)[1:])}")
        return
    
    # Prende il nome della prima colonna dinamicamente
    colonna_grafo = df.columns[0]
    
    # Filtra il DataFrame prendendo solo le righe in cui il sub_id è 1
    grafi_trovati = df[df[sub_id] == 1][colonna_grafo].tolist()
    
    # Stampa i risultati
    if grafi_trovati:
        print(f"✅ Trovati {len(grafi_trovati)} grafi per '{sub_id}':")
        for g in grafi_trovati:
            print(f"  - {g}")
    else:
        print(f"⚠️ L'anomalia '{sub_id}' è presente come colonna, ma non compare in nessun grafo (tutti 0).")

if __name__ == "__main__":
    dataset_name = "fineExp"  
    PERCORSO_CSV = r"C:\Users\gabri\OneDrive\Desktop\Progetti UNIVPM\BigDataProcessMining\data\sepsis\sepsis_table2_on_file.csv"
    
    # ==================================================
    # CAMBIA QUESTO VALORE PER CERCARE ALTRE ANOMALIE
    # ==================================================
    sub_da_cercare = "Sub105" 
    
    print(f"🔍 Ricerca dei grafi per l'anomalia: {sub_da_cercare}...\n")
    cerca_grafi(PERCORSO_CSV, sub_da_cercare)
