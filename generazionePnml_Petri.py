import os
import pm4py

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

        # ======== 8️⃣ Aggiunta start e end univoci ========
        print("  Aggiunta eventi di start e end univoci...")
        from pm4py.objects.petri_net.obj import PetriNet, Marking

        # Crea transizioni di start e end (invisible/tau)
        start_trans = PetriNet.Transition("START", None)  # Transizione silente
        end_trans = PetriNet.Transition("END", None)      # Transizione silente

        # Aggiungi transizioni alla rete
        net.transitions.add(start_trans)
        net.transitions.add(end_trans)

        # Ottieni i posti iniziali e finali originali
        initial_places = list(initial_marking)
        final_places = list(final_marking)

        # Collega START direttamente ai posti iniziali originali
        for place in initial_places:
            net.arcs.add(PetriNet.Arc(start_trans, place))

        # Collega END direttamente dai posti finali originali
        for place in final_places:
            net.arcs.add(PetriNet.Arc(place, end_trans))

        # Le marking rimangono quelle originali (posti source/sink)
        # START ed END sono transizioni esterne senza posti aggiuntivi

        print("  Start e end univoci aggiunti")

        # ======== 9️⃣ Esportazione PNML ========
        print(f"  Salvataggio PNML: {pnml_path}")
        pm4py.write_pnml(net, initial_marking, final_marking, pnml_path)

        # ======== 🔟 Esportazione PNG ========
        print(f"  Salvataggio PNG: {petrinet_path}")
        pm4py.save_vis_petri_net(net, initial_marking, final_marking, petrinet_path)

        print(f"  [OK] {base_name} completato")

    except Exception as e:
        import traceback
        print(f"  [ERRORE] {base_name}: {str(e)}")
        print(f"  Traceback: {traceback.format_exc()}")

print("\n" + "=" * 60)
print("Generazione completata!")
print(f"File salvati in: {os.path.abspath(OUTPUT_FOLDER)}")
