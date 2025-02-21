#import "@preview/numbly:0.1.0": numbly
#import "@preview/touying:0.5.5": *
#import themes.dewdrop: *

#metadata[Presentazione RTB] <titolo>
#let date = datetime(day: 20, month: 2, year: 2025);

#set text(font: "Inria Sans", size: 25pt)

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  navigation: "mini-slides",
  config-info(
    title: [Presentazione RTB],
    subtitle: [Requirements and Technology Baseline - ALimitedGroup],
    author: [Emanuele Artusi, Samuele Esposito, Sara Ferraro, Loris Libralato, \
      Marco Piccoli, Matteo Schievano, Lorenzo Stefani],
    date: date,
    institution: [Ingegneria del Software],
    logo: emoji.school,
  ),
)

#title-slide()

== Aggiornamento comprensione obiettivi del capitolato

- analisi dei requisiti -> abbiamo in seguito trovato molti requisiti impliciti
- alcuni requisiti ora sono facoltativi (es. notifiche ml)
- forte rischio tecnologico: poca esperienza del gruppo per le tecnologie suggerite o comunque confrontate
- sfida interessante: sincronizzare i compiti tra microservizi dello stesso tipo

== Modifiche migliorative

- Ristrutturate Norme di Progetto per favorire leggibilità e fruizione->suddivisione troppo eccessiva, dettagliata prima descrizione nel dettaglio di ogni singolo processo
- Ristrutturata Analisi dei Requisiti, suddivisione backend e frontend
- Ristrutturato sito
- Irganizzazione più specifica
- PR meno ampie


== Autovalutazione

- Parlare della discussione sulle tecnologie (alternative del prof e perché, disaccordo iniziale); forse riuscire a giustificare meglio le nostre scelte senza "andare nel panico" sarebbe meglio
- Posizione di Cardin sulle scelte finali
- Precisazioni riportate sull’analisi dei requisiti
- Esito finale
- Generalmente siamo soddisfatti del lavoro svolto, tranne per alcune piccolezze
- Siamo riusciti a dividerci bene il lavoro, evitando che due o tre membri del gruppo facessero tutto il lavoro
- Forse abbiamo avuto poche riunioni con M31


== Consuntivo di periodo
#figure(image("../../assets/consuntivo.png", width: auto))

== Preventivo a finire
#figure(image("../../assets/preventivo.png", width: auto))


#set text(weight: "bold")
#focus-slide[Grazie]
