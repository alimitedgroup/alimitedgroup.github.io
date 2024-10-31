// PC 31-10-2024

#import "../lib.typ": *
#import "@preview/plotst:0.2.0": *

#show: doc => documento(
  nome: [Dichiarazione impegni],
  data: datetime(day: 31, month: 10, year: 2024),
  regmodifiche: (
    ("0.0.3", "31-10", "Matteo Schievano", "-", "Migliorie generali e correzioni minori"),
    ("0.0.2", "29-10", "Loris Libralato", "-", "Divisione di ruoli e ore"),
    ("0.0.1", "28-10", "Loris Libralato", "-", "Creazione struttura documento"),
  ),
  versione: [0.0.3],
  stato: [In redazione],
  doc,
)

= Introduzione
Con il seguente documento, il gruppo ottavo formatosi per svolgere il progetto di _Ingegneria del Software_, _ALimitedGroup_, desidera esporre l'impegno orario che il gruppo ha ritenuto essere opportuno per svolgere il capitolato

#align(center)[*C6 = Sistema di gestione di un magazzino distribuito*\ proposto da\ #M31]

per cui il gruppo si è candidato.\
Verranno esposte di seguito le ore produttive che ciascun componente si impegna di dedicare al progetto, un riassunto dei costi e infine una descrizione dei ruoli che ogni membro del gruppo sarà tenuto a coprire.
#pagebreak()
= Impegno
Ogni membro del gruppo si impegna a dedicare al progetto un totale di 92 ore produttive, ripartite equamente tra i ruoli di *Responsabile (Resp)*, *Amministratore (Am)*, *Analista (An)*, *Progettista (Proge)*, *Programmatore (Progr)* e *Verificatore (Ve)*.\

Seguiranno nei successivi paragrafi i dettagli.

== Individuale
#figure(
  table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 1.1em,
    table.header(
      [*Nome*],
      [*Resp*],
      [*Am*],
      [*An*],
      [*Proge*],
      [*Progr*],
      [*Ve*],
      [*Tot*],
    ),

    [Loris Libralato], [8h], [9h], [8h], [22h], [27h], [18h], [92h],
    [Samuele Esposito], [8h], [9h], [8h], [22h], [27h], [18h], [92h],
    [Sara Ferraro], [9h], [8h], [9h], [22h], [25h], [19h], [92h],
    [Lorenzo Stefani], [8h], [8h], [9h], [21h], [27h], [19h], [92h],
    [Marco Piccoli], [8h], [8h], [9h], [21h], [26h], [20h], [92h],
    [Matteo Schievano], [9h], [9h], [9h], [21h], [24h], [20h], [92h],
    [Emanuele Artusi], [8h], [9h], [8h], [21h], [24h], [22h], [92h],
    [*Totale*], [*58h*], [*60h*], [*60h*], [*150h*], [*180h*], [*136h*], [*644h*],
  ),
  caption: [Divisione oraria individuale],
)
#pagebreak()

== Riassunto costi
<par2.2>

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

    [Responsabile], [30€/h], [58h], [1740€],
    [Amministratore], [20€/h], [60h], [1200€],
    [Analista], [25€/h], [60h], [1500€],
    [Progettista], [25€/h], [150h], [3750€],
    [Programmatore], [15€/h], [180h], [2700€],
    [Verificatore], [15€/h], [136h], [2040€],
    [*Totale*], [-], [*644h*], [*12930€*],
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
Il costo previsto per la realizzazione del progetto è, come anche osservabile dalla @tab_2 nella @par2.2, di *Euro 12˙930*.

= Consegna
La data ultima per la consegna del progetto è fissata improrogabilmente al giorno *31 marzo 2025*.