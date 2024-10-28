// VDC 28-10-2024

#import "../lib.typ": *
#show: doc => documento(
  nome: [Preventivo costi capitolato],
  data: datetime(day: 28, month: 10, year: 2024),
  regmodifiche: (("0.0.1", "28-10", "Loris Libralato", "-", "Creazione struttura documento"),),
  versione: [0.0.1],
  stato: [In redazione],
  doc,
)


= Impegno

#table(
  columns: (auto, auto, auto, auto),
  inset: 1.1em,
  table.header(
    [*Ruolo*],
    [*Costo Orario*],
    [*Ore*],
    [*Costo*],
  ),

  [Responsabile], [30€/h], [58h], [1740€],
  [Amministratore], [20€/h], [60h], [1200€],
  [Analista], [25€/h], [60h], [1500€],
  [Progettista], [25€/h], [150h], [3750€],
  [Programmatore], [15€/h], [180h], [2700€],
  [Verificatore], [15€/h], [136h], [2040€],
  [Totale], [-], [644h], [12930€],
)

= Ruoli

== Responsabile
== Amministratore
== Analista
== Progettista
== Programmatore
== Verificatore

= Costi
Il preventivo per la realizzazione del progetto ammonta a _12930€_

= Consegna
Limite massimo di consegna del progetto entro e non oltre il 10 Aprile 2025