import os
import pm4py
from pm4py.objects.petri_net.obj import PetriNet
from pm4py.objects.petri_net.obj import Marking

# ======== 1️⃣ Configurazione ========
INPUT_FOLDER = "data/fineExp/custom/processed"
OUTPUT_FOLDER = "data/fineExp/custom/processed/models"

# Crea la cartella di output se non esiste
os.makedirs(OUTPUT_FOLDER, exist_ok=True)

# ======== 2️⃣ Trova tutti i file .xes ========
xes_files = [f for f in os.listdir(INPUT_FOLDER) if f.endswith('.xes')]

print(f"Trovati {len(xes_files)} file .xes da processare\n")

# ======== 3️⃣ Processa ogni file ========
for xes_filename in xes_files:
    # Nome base senza estensione
    base_name = os.path.splitext(xes_filename)[0]

    # Percorsi completi
    xes_path = os.path.join(INPUT_FOLDER, xes_filename)
    pnml_path = os.path.join(OUTPUT_FOLDER, f"{base_name}.pnml")
    petrinet_path = os.path.join(OUTPUT_FOLDER, f"{base_name}.png")

    # ======== 4️⃣ Controllo se esiste già ========
    if os.path.exists(pnml_path) and os.path.exists(petrinet_path):
        print(f"[SKIP] {base_name}: PNML e Petri net già esistenti")
        continue

    print(f"\n[PROCESS] {base_name}")
    print("-" * 60)

    try:
        # ======== 5️⃣ Caricamento log ========
        print("  Parsing log...")
        log = pm4py.read_xes(xes_path)
        print(f"  Log caricato: {len(log)} trace")

        # ======== 6️⃣ Scoperta ProcessTree ========
        print("  Scoperta ProcessTree con Inductive Miner...")
        ptree = pm4py.discover_process_tree_inductive(log, noise_threshold=0.2)

        # ======== 7️⃣ Conversione ProcessTree -> Petri Net ========
        print("  Conversione in Petri Net...")
        net, initial_marking, final_marking = pm4py.convert_to_petri_net(ptree)

        # ======== 8️⃣ Aggiunta start e end univoci (CORRETTA) ========
        print("  Aggiunta eventi di start e end univoci...")

        # Crea nuovi posti di start e end
        start_place = PetriNet.Place("start_place")
        end_place = PetriNet.Place("end_place")

        net.places.add(start_place)
        net.places.add(end_place)

        # ---- START ----
        initial_places = list(initial_marking.keys())
        initial_transitions = set()

        for p in initial_places:
            for arc in p.out_arcs:
                initial_transitions.add(arc.target)

        # collega start_place -> transizioni iniziali
        for t in initial_transitions:
            net.arcs.add(PetriNet.Arc(start_place, t))

        # ---- END ----
        final_places = list(final_marking.keys())
        final_transitions = set()

        for p in final_places:
            for arc in p.in_arcs:
                final_transitions.add(arc.source)

        # collega transizioni finali -> end_place
        for t in final_transitions:
            net.arcs.add(PetriNet.Arc(t, end_place))

        # ---- NUOVI MARKING ----
        new_initial_marking = Marking()
        new_initial_marking[start_place] = 1

        new_final_marking = Marking()
        new_final_marking[end_place] = 1

        initial_marking = new_initial_marking
        final_marking = new_final_marking

        print("  Start e end univoci aggiunti (senza tau)")

            # ======== 8️⃣.1 RIMOZIONE SOURCE E SINK ORIGINALI ========

        # Rimuovi posti iniziali originali
        for p in initial_places:
            # rimuovi tutti gli archi collegati
            for arc in list(p.in_arcs):
                net.arcs.remove(arc)
            for arc in list(p.out_arcs):
                net.arcs.remove(arc)

            if p in net.places:
                net.places.remove(p)

        # Rimuovi posti finali originali
        for p in final_places:
            for arc in list(p.in_arcs):
                net.arcs.remove(arc)
            for arc in list(p.out_arcs):
                net.arcs.remove(arc)

            if p in net.places:
                net.places.remove(p)

        # ======== 9️⃣ Esportazione PNML ========
        print(f"  Salvataggio PNML: {pnml_path}")
        pm4py.write_pnml(net, initial_marking, final_marking, pnml_path)

        # ======== 🔟 Esportazione PNG ========
        print(f"  Salvataggio PNG: {petrinet_path}")
        pm4py.save_vis_petri_net(net, initial_marking, final_marking, petrinet_path)

        print(f"  [OK] {base_name} completato")

    except Exception as e:
        print(f"  [ERRORE] {base_name}: {str(e)}")

print("\n" + "=" * 60)
print("Generazione completata!")
print(f"File salvati in: {os.path.abspath(OUTPUT_FOLDER)}")
