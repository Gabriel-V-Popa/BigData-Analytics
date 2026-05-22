
from pm4py.objects.petri_net.importer import importer as pnml_importer
from pm4py.visualization.petri_net import visualizer as pn_visualizer

# === CONFIG ===
PNML_FILE = r"C:\Users\gabri\OneDrive\Desktop\Progetti UNIVPM\BigDataProcessMining\data\testBank\models_raw\testBank.pnml"
OUTPUT_FILE = r"C:\Users\gabri\OneDrive\Desktop\Progetti UNIVPM\BigDataProcessMining\data\testBank\models_raw\testBank"

# Carica la rete di Petri dal file PNML
net, initial_marking, final_marking = pnml_importer.apply(PNML_FILE)

# Genera la visualizzazione
gviz = pn_visualizer.apply(
    net,
    initial_marking,
    final_marking
)

# Salva come PNG
pn_visualizer.save(gviz, OUTPUT_FILE + ".png")

print(f"PNG salvato come: {OUTPUT_FILE}.png")