#import "../../lib/importantdocs.typ": *
#import "../../lib/use-case.typ" : *
#let ver = [0.1.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 05, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Rivoluzionata la struttura del documento secondo il template creato appositamente",
    ),
    (
      vers: "0.0.2",
      date: datetime(day: 13, month: 11, year: 2024),
      autore: p.sara,
      // verifica: p.,
      descr: "Aggiornamento indice - Aggiornamento contenuto: sezione Introduzione",
    ),
    (
      vers: "0.0.1",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      // verifica: p.,
      descr: "Creazione struttura e template documento",
    ),
  ),
  stato: [In redazione],
  responsabile: ((p.loris),),
  verificatore: ((p.samuele), (p.lorenzo),),
  redattori: (
    (p.emanuele),
    (p.sara),
    (p.loris),
    (p.marco),
  ),
  descrizione: [Questo documento contiene l'_Analisi dei Requisiti_ descritti dal gruppo _ALimitedGroup_ per il capitolato C6 proposto da #M31],
  titolo: [_Analisi dei Requisiti_],
  body,
)

= Introduzione
== Scopo del documento

Il presente documento di _Analisi dei Requisiti_ ha lo scopo di definire in maniera precisa e dettagliata i requisiti funzionali e non funzionali del sistema software da sviluppare.\
Esso rappresenterà il riferimento di base per la progettazione, l'implementazione e il collaudo del prodotto finale, garantendo che il sistema realizzato soddisfi pienamente le esigenze e le aspettative del committente. \
I requisiti identificati sono classificati in:
- Obbligatori: irrinunciabili e imprescindibili per il corretto funzionamento del sistema;
- Desiderabili: non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;
- Opzionali: relativamente utili oppure contrattabili per essere implementati in futuro.

Il documento di _Analisi dei Requisiti_ viene redatto dagli _Analisti_ del team di progetto ed è rivolto ai seguenti principali destinatari:

- Il _Committente_, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le sue specifiche;
- Il _Team di Progettisti e di Programmatori_, che utilizzerà questo documento come guida fondamentale per la realizzazione del sistema software;
- Il Team di _Verificatori_, che baserà sull' Analisi dei Requisiti la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

Inoltre, il documento potrà essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori e Responsabili di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.

== Ambito di applicazione

Il capitolato d'appalto C6 proposto dall'azienda #M31 propone lo sviluppo di un *Sistema di Gestione di un Magazzino Distribuito*. \
Il sistema deve essere in grado di:
- *Ottimizzare i livelli di scorte* attraverso il monitoraggio costante dell'inventario e suggerendo/automatizzando azioni di riassortimento o trasferimento tra magazzini;
- *Gestire la condivisione dei dati di inventario in tempo reale* tra i vari magazzini e il sistema centrale;
- *Risolvere conflitti derivanti da aggiornamenti simultanei* dell'inventario da parte di diversi magazzini;
- Fornire una piattaforma di *monitoraggio centralizzato e reportistica* sullo stato delle scorte;
- Gestire le operazioni di *trasferimento di merce tra i magazzini*.

Tutto garantendo la *sicurezza* dei dati trattati e del sistema.
#footnote([I requisiti qui presentati costituiscono una visione preliminare del sistema. Ogni aspetto verrà approfondito e dettagliato nelle sezioni successive del documento, dove saranno inclusi requisiti aggiuntivi e specifiche tecniche complete.]).

L'*obiettivo* del sistema è _migliorare la gestione di una rete logistica distribuita di magazzini_, garantendo disponibilità continua delle risorse, minimizzando i tempi di risposta e ottimizzando la distribuzione delle scorte attraverso una visione centralizzata e sincronizzata in tempo reale.

== Definizioni, acronimi e abbreviazioni
Per tutte le _definizioni_, _acronimi_ e _abbreviazioni_ utilizzati in questo documento, si faccia riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto \ #link("alimitedgroup.github.io/norme-progetto.pdf")[alimitedgroup.github.io/norme-progetto.pdf]
- Capitolato d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_: \ https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf
=== Riferimenti informativi
- Standard IEEE: \ https://ieeexplore.ieee.org/document/720574
- Analisi dei requisiti: \ https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf
- Diagrammi casi d'uso: \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Diagrammi delle attività: \ https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf
- Glossario: \ #link("alimitedgroup.github.io/Glossario.pdf")[alimitedgroup.github.io/Glossario.pdf]

== Quadro generale
Il presente documento analiizza in modo dettagliato ed esaustivo i requisiti emersi dal capitolato C6 _Sistema di Gestione di un Magazzino Distribuito_ e dalla fase di contrattazione con il committente _M31_.

Include una descrizione approfondita dei casi d'uso, dei requisiti obbligatori, desiderabili e opzionali, nonché delle funzionalità previste per il sistema.\

Verranno utilizzati i seguenti strumenti di rappresentazione formale per agevolare la comprensione:

- *Diagrammi dei casi d'uso* per visualizzare le interazioni tra attori e sistema;
- *Diagrammi delle attività* per descrivere i flussi operativi e i processi.

A supporto di una consultazione rapida e intuitiva, è stata inoltre predisposta una tabella dei contenuti, che consente di:

- Associare ciascun requisito al relativo caso d'uso;
- Risalire alla fonte originaria di ogni requisito;
- Comprendere immediatamente il contesto e l'importanza di ciascun elemento.

La struttura del documento mira a garantire trasparenza, tracciabilità e comprensione condivisa tra tutti i soggetti coinvolti nel progetto.

#pagebreak()
= Descrizione generale
== Prospettiva del prodotto
#lorem(10)
== Funzioni del prodotto
#lorem(10)
== Caratteristiche dell'utente
#lorem(10)
== Vincoli
#lorem(10)
== Assunzioni e dipendenze
#lorem(10)
= Requisiti specifici

#pagebreak()
= Casi d'uso

== Introduzione
== Attori

- Admin globale
- Admin locale
- Cliente

#figure(
  image("../../assets/diagrams/attori.svg", width: 50%),
  caption: [Diagramma degli attori],
)

== Lista casi d'uso
#use-case(
  num: "1",
  titolo: [Visualizzazione dashboard],
  attore: "Utente",
  pre: "L'utente è autenticato nel sistema",
  scenari: "L'utente accede alla dashboard del sistema",
  trigger: "L'utente seleziona la voce 'Dashboard' dal menu principale",
)[
  #use-case-diagram("1", "Diagramma dei casi d'uso")
]

= Requisiti Principali
== Requisiti Funzionali

#show table.cell: cl => align(left, cl)
#figure(
  table(
    columns: (1fr, 5fr, 1fr),
    inset: 10pt,
    table.header(
      [*Codice*],
      [*Descrizione*],
      [*Fonti*],
    ),
    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: [Tabella dei requisiti funzionali],
)
== Requisiti di Qualità
== Requisiti di Vincolo

= Informazioni di supporto
== Tabella dei contenuti
#lorem(10)


