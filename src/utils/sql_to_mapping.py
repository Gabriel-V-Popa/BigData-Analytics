import re
import os

def crea_mapping_da_sql(percorso_sql, percorso_output):
    if not os.path.exists(percorso_sql):
        print(f"❌ Errore: Il file {percorso_sql} non esiste.")
        return
        
    print(f"🔍 Lettura del file SQL: {percorso_sql}")
    
    mapping_generato = []
    
    # Pattern RegEx per catturare i valori tra parentesi e virgolette (es. ('1', 'trace_0'))
    pattern = re.compile(r"\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)")
    
    with open(percorso_sql, 'r', encoding='utf-8') as file_in:
        testo_sql = file_in.read()
        
        matches = pattern.findall(testo_sql)
        for num_trace, id_trace in matches:
            # Rimuoviamo eventuali spazi extra per sicurezza
            num_trace = num_trace.strip()
            id_trace = id_trace.strip()
            
            # Creiamo la stringa nel formato accettato da repair.py
            mapping_generato.append(f"{num_trace};{id_trace}")

    # Scriviamo il file di output finale
    with open(percorso_output, 'w', encoding='utf-8') as file_out:
        for riga in mapping_generato:
            file_out.write(riga + "\n")
            
    print(f"✅ Fatto! Generato {percorso_output} con {len(mapping_generato)} associazioni.")

if __name__ == "__main__":
    FILE_SQL = r"c:\Users\Enzo\Documents\UNIVPM\1°Anno\BigData\Progetto\progetto\BigData-Analytics\data\testBank\sgiso_env\traceid.sql"
    FILE_TXT = r"c:\Users\Enzo\Documents\UNIVPM\1°Anno\BigData\Progetto\progetto\BigData-Analytics\data\testBank\sgiso_env\traceIdMapping.txt"
    crea_mapping_da_sql(FILE_SQL, FILE_TXT)
