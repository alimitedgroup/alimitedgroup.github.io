// PC 31-10-2024

#import "../lib.typ": *
#import "@preview/plotst:0.2.0": *

#show: doc => documento(
  nome: [Dichiarazione impegni],
  data: datetime(day: 31, month: 10, year: 2024),
  regmodifiche: (
    ("1.0.0", "31-10", "Lorenzo Stefani", "-", "Approvazione documento"),
    ("0.1.0", "31-10", "Sara Ferraro", "-", "Modifica e verifica documento"),
    ("0.0.3", "31-10", "Matteo Schievano", "-", "Migliorie generali e correzioni minori"),
    ("0.0.2", "29-10", "Loris Libralato", "-", "Divisione di ruoli e ore"),
    ("0.0.1", "28-10", "Loris Libralato", "-", "Creazione struttura documento"),
  ),
  versione: [0.1.0],
  stato: [Verificato],
  doc,
)

= Introduzione
Con il seguente documento, il gruppo ottavo formatosi per svolgere il progetto di _Ingegneria del Software_, _ALimitedGroup_, desidera esporre l'impegno orario che il gruppo ha ritenuto essere opportuno per svolgere il capitolato

#align(center)[*C6 = Sistema di gestione di un magazzino distribuito*\ proposto da\ #M31]

per cui il gruppo si è candidato.\
Verranno esposte di seguito le ore produttive che ciascun componente si impegna di dedicare al progetto, un riassunto dei costi e infine una descrizione dei ruoli che ogni membro del gruppo sarà tenuto a coprire.
#pagebreak()
= Impegno
Ogni membro del gruppo si impegna a dedicare al progetto un totale di 92 ore produttive, ripartite equamente tra i ruoli di *Responsabile*, *Amministratore*, *Analista*, *Progettista*, *Programmatore* e *Verificatore*.\

Seguiranno nei successivi paragrafi i dettagli.

== Individuale

#v(4em)
#{
  show table.cell: cl => if cl.x == 0 and cl.y != 0 {
    align(left, cl)
  } else if cl.x == 0 {
    align(bottom + left, cl)
  } else if cl.y == 0 {
    rotate(-45deg, reflow: false, align(left, cl))
  } else {
    align(bottom + center, cl)
  }
  figure(
    table(
      columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      inset: 1.1em,
      stroke: (x, y) => if y >= 1 {
        1pt + black
      } else {
        none
      },
      table.header(
        [],
        [*Responsabile*],
        [*Amministratore*],
        [*Analista*],
        [*Progettista*],
        [*Programmatore*],
        [*Verificatore*],
        [*Totale*],
      ),

      [Loris Libralato], [8], [9], [8], [22], [27], [18], [92],
      [Samuele Esposito], [8], [9], [8], [22], [27], [18], [92],
      [Sara Ferraro], [9], [8], [9], [22], [25], [19], [92],
      [Lorenzo Stefani], [8], [8], [9], [21], [27], [19], [92],
      [Marco Piccoli], [8], [8], [9], [21], [26], [20], [92],
      [Matteo Scievano], [9], [9], [9], [21], [24], [20], [92],
      [Emanuele Artusi], [8], [9], [8], [21], [24], [22], [92],
      [*Totale*], [*58*], [*60*], [*60*], [*150*], [*180*], [*136*], [*644*],
    ),
    caption: [Ore di ogni componente per ciascun ruolo],
  )

}
#pagebreak()

== Riassunto costi <par2.2>

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 1.1em,
    table.header(
      [*Ruolo*],
      [*Costo Orario*],
      [*Ore*],
      [*Costo*],
    ),

    [Responsabile], [30€/h], [58h], [1.740€],
    [Amministratore], [20€/h], [60h], [1.200€],
    [Analista], [25€/h], [60h], [1.500€],
    [Progettista], [25€/h], [150h], [3.750€],
    [Programmatore], [15€/h], [180h], [2.700€],
    [Verificatore], [15€/h], [136h], [2.040€],
    [*Totale*], [-], [*644h*], [*12.930€*],
  ),
  caption: [riassunto dei costi derivanti dalle ore assegnate a ciascun ruolo],
) <tab_2>

#{
  let p = plot(data: (
    (9.01, "Responsabile - 9.01%"),
    (9.32, "Amministratore - 9.32%"),
    (9.32, "Analista - 9.32%"),
    (23.29, "Progettista - 23.29%"),
    (27.95, "Programmatore - 27.95%"),
    (21.12, "Verificatore - 21.12%"),
  ))

  pie_chart(p, (40%, 30%), caption: "Divisione ore", display_style: "hor-legend-chart")
}

#pagebreak()

= Ruoli

== Responsabile
Il responsabile sarà particolarmente presente nella fase iniziale per coordinare le attività del gruppo: man mano che il progetto avanzerà, il team acquisirà crescente autonomia consentendo un possibile aumento in efficienza nello svolgimento del ruolo. Il responsabile resterà, seppur con un tempo effettivo via via decrescente, una figura importante nel gruppo adibita all'ambito comunicativo tra l'esterno e l'interno del gruppo, ma anche nell'organizzazione dello stesso e degli obbiettivi da raggiungere, nonché nel controllo di quanto prodotto in termini di corrispondenza alle aspettative.

== Amministratore
Si occupa di configurare e mantenere tutti gli ambienti di infrastruttura IT che il gruppo utilizza e utilizzerà per tutta la durata del progetto.
Il lavoro da lui effettuato sarà dunque essenziale per supportare dal punto di vista informatico la collaborazione del team e lo svolgimento delle operazioni automatiche quali, ad esempio, l'esecuzione di alcune tipologie di test, risolvendo prontamente le segnalazioni su eventuali malfunzionamenti.
Il suo contributo orario sarà costante per tutta la durata del progetto, con un picco durante il deploy dell'MVP.

== Analista
Essenziale nelle prime fasi del progetto per identificare e chiarire i requisiti, anche mettendosi nei panni degli utilizzatori finali per comprendere al meglio le necessità da soddisfare, il monte ore associato a questo ruolo diminuirà con il progredire del lavoro, pur restando attivo per aggiornare o adattare i requisiti in base alle discussioni con il proponente: è tuttavia certamente probabile non essere una figura presente per tutta la durata del progetto. Questo ruolo e il lavoro da questo svolto è fondamentale per il successo del progetto, poiché permette al lavoro successivo di progettisti e programmatori di essere fatto correttamente.

== Progettista
Questo ruolo trasforma i requisiti in un design architetturale, producendo documenti e schemi esplicativi e definendo le scelte tecnologiche. In questo progetto l'aspetto architetturale è particolarmente rilevante e, per questo motivo, abbiamo deciso di assegnare un numero consistente di ore a questa funzione: un design inadeguato potrebbe infatti generare difficoltà significative per i programmatori.

== Programmatore
Il programmatore è responsabile dello sviluppo del software, traducendo il design architetturale in codice funzionante. Collabora strettamente con il progettista per assicurarsi che tutte le funzionalità siano implementate secondo le specifiche. Il suo lavoro è fondamentale per il progresso del progetto e richiede una buona conoscenza delle tecnologie adottate. Il monte ore assegnato a questo ruolo sarà distribuito in modo uniforme durante le varie fasi di sviluppo.

#pagebreak()
== Verificatore
Il verificatore ha il compito di garantire che tutto ciò che è prodotto, dalla documentazione alla più piccola attività, sia svolta _a regola d'arte_: per questo motivo sarà una figura presente per tutta la durata del progetto con monte ore è proporzionato specialmente rispetto alle attività di progettazione e programmazione. Si occupa di eseguire test approfonditi e revisioni del software, identificando eventuali aree di miglioramento specie in ambito qualitativo: questo ruolo è dunque cruciale per assicurare la soddisfazione del cliente e la buona riuscita del progetto.

#pagebreak()

= Costi
Il costo previsto per la realizzazione del progetto è, come anche osservabile dalla @tab_2 nella @par2.2, di *Euro 12.930*.

= Consegna
La data ultima per la consegna del progetto è fissata improrogabilmente al giorno *31 marzo 2025*.