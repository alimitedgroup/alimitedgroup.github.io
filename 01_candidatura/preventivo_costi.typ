// PC 28-10-2024

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
  columns: (1fr, 1fr, 1fr, 1fr),
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
Il responsabile sarà molto più presente all'inizio per coordinare l'attività del gruppo, che durante l'avanzamento del progetto, diventerà sempre più autonomo in vista della diminuzione oraria di questo ruolo che si occuperà solo di comunicare con il proponente e redigere i verbali.

== Amministratore
Gestisce l'insfrastruttura delle repository con test e deploy automatici, la piattaforma Google Cloud e il deploy dei relativi microservizi, supporta il team nella configurazione degli ambienti di sviluppo e migliora il loro way of working. Il suo contributo orario sarà uniforme durante tutta la durata del progetto con un picco durante il deploy dell'MVP.

== Analista
Essenziale durante le prime fasi del progetto per trovare e chiarire i requisiti funzionali, il monte ore di questo ruolo diminuirà con l'avanzamento del progetto ma resterà sempre disponibile per aggiornare i requisiti o adattarli in base alle discussioni con il proponente. Il lavoro di questo ruolo è molto importante perché permette di agevolare il lavoro successivo di progettista e programmatore.

== Progettista
Trasformano i requisiti funzionali in un design architetturale, creando documenti e schemi che spiegano il suo funzionamento, determinano le scelte tecnologiche. In questo progetto la parte architetturale è molto importante per questo abbiamo deciso di assegnare molte ore a questo ruolo in quanto un design sbagliato potrebbe creare diversi problemi al programmatore.

== Programmatore


== Verificatore


= Costi
Il preventivo per la realizzazione del progetto ammonta a Euro _12930_

= Consegna
Limite massimo di consegna del progetto entro e non oltre il 31 Marzo 2025