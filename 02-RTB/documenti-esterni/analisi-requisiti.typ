#import "/lib/common.typ": *

#{
  let nome = "Analisi dei requisiti"
  let versioni = (
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
  )
  let data = versioni.at(0).date
  let stato = "Redazione"

  let versione = versioni.at(0).vers
  [ #metadata[#nome #versione] <titolo>]

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: nome, date: data)
  set text(lang: "it", font: "Hanken Grotesk")
  show link: underline

  // @typstyle off
  prima-pagina(
    nome, none,
    [Stato], stato,
    [Data ultima modifica], data.display("[day]-[month]-[year]"),
    [Versione], versione,
    [Distribuzione], grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
  )

  set heading(numbering: "1.")
  set page(numbering: "1", header: header(nome), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()
}

#let use_case(
  num: [],
  titolo: [],
  attore: [],
  pre: [],
  scenari: [],
  trigger: [],
  post: none,
  attori_secondari: none,
  scenari_alternativi: none,
  body,
) = [
  === UC#num - #titolo

  - *Attore principale*: #attore

  #if (attori_secondari != none) {
    [- *Attore secondario*: attore_secondario]
  }

  - *Precondizioni*: #pre

  #if (post != none) {
    [- *Postcondizioni*: #post]
  }

  - *Scenario principale*: #scenari

  #if (scenari_alternativi != none) {
    [- *Scenari alternativi*: #scenari_alternativi]
  }

  - *Trigger*: #trigger

  body
]

= Introduzione
== Scopo del documento

Il presente documento di _Analisi dei Requisiti_ ha lo scopo di definire in maniera precisa e dettagliata i requisiti funzionali e non funzionali del sistema software da sviluppare.\
Esso rappresenterà il riferimento di base per la progettazione, l'implementazione e il collaudo del prodotto finale, garantendo che il sistema realizzato soddisfi pienamente le esigenze e le aspettative del committente. \
I requisiti identificati sono classificati in:
- Obbligatori: irrinunciabili e imprescindibili per il corretto funzionamento del sistema.
- Desiderabili: non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile.
- Opzionali: relativamente utili oppure contrattabili per essere implementati in futuro.

Il documento di _Analisi dei Requisiti_ viene redatto dagli _Analisti_ del team di progetto ed è rivolto ai seguenti principali destinatari:

- Il _Committente_, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le sue specifiche.
- Il _Team di Progettisti e di Programmatori_, che utilizzerà questo documento come guida fondamentale per la realizzazione del sistema software.
- Il Team di _Verificatori_, che baserà sull' Analisi dei Requisiti la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

Inoltre, il documento potrà essere consultato da altri soggetti coinvolti nel processo di sviluppo, come _Amministratori_ e _Responsabili di Progetto_, al fine di acquisire una comprensione esauriente delle specifiche del sistema.

== Ambito di applicazione

Il capitolato d'appalto C6 proposto dall'azienda _M31_ propone lo sviluppo di un *Sistema di Gestione di un Magazzino Distribuito*. \
Il sistema deve essere in grado di:
- *Ottimizzare i livelli di scorte* attraverso il monitoraggio costante dell'inventario e suggerendo/automatizzando azioni di riassortimento o trasferimento tra magazzini.
- *Gestire la condivisione dei dati di inventario in tempo reale* tra i vari magazzini e il sistema centrale.
- *Risolvere conflitti derivanti da aggiornamenti simultanei* dell'inventario da parte di diversi magazzini.
- Fornire una piattaforma di *monitoraggio centralizzato e reportistica* sullo stato delle scorte.
- Gestire le operazioni di *trasferimento di merce tra i magazzini*.

Tutto garantendo la *sicurezza* dei dati trattati e del sistema.
#footnote([I requisiti qui presentati costituiscono una visione preliminare del sistema. Ogni aspetto verrà approfondito e dettagliato nelle sezioni successive del documento, dove saranno inclusi requisiti aggiuntivi e specifiche tecniche complete.]).

L'*obiettivo* del sistema è _migliorare la gestione di una rete logistica distribuita di magazzini_, garantendo disponibilità continua delle risorse, minimizzando i tempi di risposta e ottimizzando la distribuzione delle scorte attraverso una visione centralizzata e sincronizzata in tempo reale.

== Definizioni, acronimi e abbreviazioni
Per tutte le _definizioni_, _acronimi_ e _abbreviazioni_ utilizzati in questo documento, si faccia riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.

== Riferimenti
=== Riferimenti normativi
#lorem(10)
=== Riferimenti informativi
- Standard IEEE: \ https://ieeexplore.ieee.org/document/720574
- Capitolato C6 _Sistema di Gestione di un Magazzino Distribuito_: \ https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf
- Analisi dei requisiti: \ https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf
- Diagrammi casi d'uso: \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Diagrammi delle attività: \ https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf

== Quadro generale
#lorem(10)

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

= Use Case

#use_case(
  num: "1",
  titolo: [Visualizzazione dashboard],
  attore: "Utente",
  pre: "L'utente è autenticato nel sistema",
  scenari: "L'utente accede alla dashboard del sistema",
  trigger: "L'utente seleziona la voce 'Dashboard' dal menu principale",
)[]

= Informazioni di supporto
== Tabella dei contenuti
#lorem(10)


