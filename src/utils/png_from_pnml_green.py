from pm4py.objects.petri_net.importer import importer as pnml_importer
from pm4py.visualization.petri_net import visualizer as pn_visualizer
from pm4py.objects.petri_net.obj import PetriNet

PNML_FILE = r"C:\Users\gabri\OneDrive\Desktop\Progetti UNIVPM\BigDataProcessMining\data\fineExp\models_raw\modelli_post_correzione\petri_net_fineExp_con19.pnml"
net, im, fm = pnml_importer.apply(PNML_FILE)

# 1. Identificazione nodi target
nodes = {
    "start": next(t for t in net.transitions if t.label == "CreateFine"),
    "middle": next(t for t in net.transitions if t.label == "Notification"),
    "end": next(t for t in net.transitions if t.label == "AppealToPrefecture")
}

# 2. Definizione lista di esclusione
# Usiamo le etichette per identificarli facilmente
labels_to_exclude = {}
nodes_to_exclude = {t for t in net.transitions if t.label in labels_to_exclude}

decorations = {}
node_style = {"color": "green", "fillcolor": "green", "style": "filled", "fontcolor": "white"}
edge_style = {"color": "green", "penwidth": "3"}

# 3. Funzione di ricerca con lista di esclusione
def decorate_path(current_node, target_node, visited):
    # Se il nodo corrente è tra quelli da escludere, blocchiamo il ramo
    if current_node in nodes_to_exclude:
        return False
        
    if current_node == target_node:
        decorations[current_node] = node_style
        return True
    
    visited.add(current_node)
    
    for arc in current_node.out_arcs:
        next_node = arc.target
        if next_node not in visited:
            if decorate_path(next_node, target_node, visited):
                decorations[arc] = edge_style
                decorations[current_node] = node_style
                return True
    return False

# 4. Esecuzione segmentata
#decorate_path(nodes["start"], nodes["end"], set())
decorate_path(nodes["start"], nodes["middle"], set())
decorate_path(nodes["middle"], nodes["end"], set())

# 5. Generazione e salvataggio
gviz = pn_visualizer.apply(net, im, fm, parameters={"decorations": decorations})
pn_visualizer.save(gviz, "petri_percorso_verde_esclusioni_multiple.png")
print("Percorso salvato. AdmissionNC e ReleaseB sono stati esclusi dal tracciato verde.")