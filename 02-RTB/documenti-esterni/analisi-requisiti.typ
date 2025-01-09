#import "../../lib/importantdocs.typ": *
#import "../../lib/use-case.typ": *
#let ver = [0.21.0]

#show: body => importantdocs(
  data: datetime(day: 09, month: 01, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.21.0",
      date: datetime(day: 09, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "terminati UC relativi a backup del Sistema locale. Realizzati UC relativi a controllo accessi al Sistema.",
    ),
    (
      vers: "0.20.0",
      date: datetime(day: 08, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Realizzati primi UC relativi a backup del sistema locale",
    ),
    (
      vers: "0.19.0",
      date: datetime(day: 03, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturati i diagrammi per ogni singolo UC, con annesse inclusioni ed estensioni. Migliorie generali",
    ),
    (
      vers: "0.18.0",
      date: datetime(day: 27, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Sistemazione UML sino ad UC29.",
    ),
    (
      vers: "0.17.0",
      date: datetime(day: 26, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Sistemazione UML sino ad UC15.",
    ),
    (
      vers: "0.16.0",
      date: datetime(day: 23, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturato ulteriormente l'indice per una maggiore fruibilità. Modificati i numeri degli UC",
    ),
    (
      vers: "0.15.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturato l'indice per una sua corretta visualizzazione e fruibilità. Inseriti UC rimanenti. Assegnato per ogni UC un proprio numero",
    ),
    (
      vers: "0.14.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Correzioni minori alla parte di introduzione del documento.",
    ),
    (
      vers: "0.13.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo soglia minima",
    ),
    (
      vers: "0.12.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatti Casi d'Uso relativi alle richieste al secondo per microservizi e Casi d'Uso correlati.",
    ),
    (
      vers: "0.11.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatti Casi d'Uso relativi alla visualizzazione della singola notifica di rifornimento.",
    ),
    (
      vers: "0.10.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo all'esportazione ordine eseguiti. Redatto Caso d'Uso relativo all'esportazione report di inventario",
    ),
    (
      vers: "0.9.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo all'aggiornamento delle quantità disponibili di una merce (stock). Redatto Caso d'Uso relativo alla creazione di una merce globale.",
    ),
    (
      vers: "0.8.0",
      date: datetime(day: 11, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo alla visualizzazione delle notifiche di rifornimento e relative inclusioni. Redatto Caso d'Uso relativo all'accettazione e al rifiuto di una notifica di rifornimento.",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 10, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Completato fino ad UC17",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 09, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Aggiunti Casi d'Uso sino a UC15 e relative inclusioni ed estensioni. Impostazione UC14.",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 08, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunti UC3, UC3.1, UC3.2 e UC3.3. Aggiunti UC4 e relative inclusioni ed estensioni",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 07, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Redazione Capitolo 2 e Sezioni 3.1 e 3.2. Aggiunti Casi d'Uso relativi all'autenticazione",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 05, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Rivoluzionata la struttura del documento secondo il template creato appositamente",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 13, month: 11, year: 2024),
      autore: p.sara,
      verifica: p.lorenzo,
      descr: "Aggiornamento indice - Aggiornamento contenuto: sezione Introduzione",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      verifica: p.lorenzo,
      descr: "Creazione struttura e template documento",
    ),
  ),
  stato: [In redazione],
  responsabile: ((p.loris),),
  verificatore: ((p.samuele), (p.lorenzo)),
  redattori: (
    (p.matteo),
    (p.sara),
    (p.loris),
    (p.marco),
  ),
  descrizione: [Questo documento contiene l'_Analisi dei Requisiti_ descritta dal gruppo _ALimitedGroup_ per il capitolato C6 proposto da #M31],
  titolo: "Analisi dei Requisiti",
  body,
)

= Introduzione
== Scopo del documento

Il presente documento di _Analisi dei Requisiti#super[g]_ ha lo scopo di definire in maniera precisa e dettagliata i requisiti funzionali#super[g] e non funzionali del sistema software da sviluppare.

Per tale scopo, il documento include una descrizione approfondita dei Casi d'Uso, che sono fonte dei requisiti infine elencati.
Verranno utilizzati, per agevolare la comprensione, i *Diagrammi dei Casi d'Uso* per visualizzare le interazioni tra attori e sistema.

Il presente documento rappresenterà il riferimento di base per la progettazione, l'implementazione e il collaudo del prodotto finale, garantendo che il sistema realizzato soddisfi pienamente le esigenze e le aspettative del committente.

I requisiti identificati sono classificati in:
- *Obbligatori*: irrinunciabili e imprescindibili per il corretto funzionamento del sistema;
- *Desiderabili*: non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;
- *Opzionali*: relativamente utili oppure contrattabili per essere implementati in futuro.

Il documento di _Analisi dei Requisiti#super[g]_ viene redatto dagli _Analisti_ del team di progetto ed è rivolto ai seguenti principali destinatari:

- Il *_Committente_*, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le sue specifiche;
- Il _Team di_ *_Progettisti_* e di *_Programmatori_*, che utilizzerà questo documento come guida fondamentale per la realizzazione del sistema software;
- Il _Team_ di *_Verificatori_*, che baserà sull'Analisi dei Requisiti#super[g] la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

Inoltre, il documento potrà essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori e Responsabili di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.

== Prospettiva del prodotto
Il prodotto che _ALimitedGroup_ si promette di sviluppare è un sistema efficace e scalabile per la gestione di magazzini.

Nello specifico, si vuole sviluppare un sistema che sia in grado non solo di gestire un magazzino locale, ma che sia in grado di avere in tempo reale una visione globale di tutti i magazzini connessi al Sistema.
Per questo è necessario che il prodotto sia reattivo alle molteplici operazioni effettuate in ogni magazzino, potendo, in caso di carico molto importante, scalare i propri servizi per essere in grado di mantenere la reattività.
Fondamentale per il prodotto è la fornitura agli utilizzatori di consigli di approvvigionamento merci e la messa a disposizione di opzioni dedicate al trasferimento di merci tra magazzini connessi al Sistema.

== Funzioni del prodotto
Dal punto di vista dell'utilizzatore finale, il prodotto dovrà fornire le seguenti funzionalità:

- Avere una _Command Line Interface_ per interagire con le _API_#super[g] del sistema
- Possibilità di realizzare un ordine con prodotti disponibili sia localmente che globalmente;
- Possibilità di realizzare trasferimenti tra magazzini;
- Possibilità di ricevere suggerimenti di riassortimento quando la disponibilità locale di merce sia sotto una certa soglia;
- Possibilità di modifica della soglia per il riassortimento per ogni merce;
- Possibilità di esportare gli ordini e i report di inventario;
- Possibilità di visualizzare in tempo reale il numero di richieste per ogni Servizio del sistema;


Rispetto a quanto originariamente scritto nel #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Capitolato*] i requisiti obbligatori sono stati rimodulati in base a quanto riportato nel #link("https://alimitedgroup.github.io/VE%2019-11-2024%20v1.0.0.pdf")[*Verbale Esterno*] del *19 Ottobre 2024*. Nello specifico, non sono più obbligatori:

- Il riassortimento predittivo basato su _Machine Learning_;
- Il monitoraggio della telemetria;
- Il riconoscimento di traffico anomalo;
- La creazione di una _Graphic User Interface_ (a vantaggio di _API_#super[g] con la quale la _Command Line Interface_ dovrà interagire)

Nel seguente documento saranno comunque riportati tutti i requisiti, debitamente segnando a mezzo di nomenclatura i requisiti obbligatori, desiderabili e opzionali.

== Caratteristiche dell'utente

Gli utilizzatori finali del prodotto non sono specifici: l'obiettivo è soprattutto quello di fornire una progettazione efficace che permetta al proponente #M31 di sviluppare il prodotto in maniera definitiva.

In generale è possibile dire che gli Utenti finali sono tutti coloro che hanno bisogno di un sistema scalabile, reattivo e semplice da utilizzare per la gestione di numerosi magazzini, principalmente dunque medie e grandi imprese.

== Definizioni, acronimi e abbreviazioni
Per tutte le _definizioni_, _acronimi_ e _abbreviazioni_ utilizzati in questo documento, si faccia riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto \ #link("https://alimitedgroup.github.io/norme-progetto.pdf")[https://alimitedgroup.github.io/norme-progetto.pdf]
- Capitolato d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_: \ https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf
=== Riferimenti informativi
- Standard IEEE: \ https://ieeexplore.ieee.org/document/720574
- Analisi dei requisiti: \ https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf
- Diagrammi casi d'uso: \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Diagrammi delle attività: \ https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf
- Glossario: \ #link("alimitedgroup.github.io/Glossario.pdf")[alimitedgroup.github.io/Glossario.pdf]

#pagebreak()

= Casi d'uso
== Introduzione

I casi d'uso si compongono di un grafico UML e una descrizione testuale che permetta di comprendere al meglio cosa il prodotto deve fornire.
La descrizione testuale, in particolar modo, dovrà contenere le informazioni nella tabella qui presente, salvo i casi in cui lo specifico campo non risulti irrilevante per il caso d'uso#super[g] (ad esempio, un Caso d'Uso che non prevede la possibilità di errori non avrà Scenari secondari):

#figure(
  table(
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      [*Campo*],
      [*Descrizione*],
    ),

    [*Attori*], [Sono coloro che interagiscono attivamente con il sistema e svolgono l'azione indicata dal Caso d'Uso],
    [*Attori secondari*], [Sono coloro che interagiscono passivamente con il sistema],
    [*Precondizioni*],
    [Lista di elementi che sono *necessari* affinché l'Attore possa compiere l'azione indicata dal caso d'uso],

    [*Postcondizioni*],
    [Lista di elementi che descrivono come il Sistema risulta essere internamente cambiato dopo che l'Attore ha effettuato l'azione prevista dal Caso d'Uso],

    // TODO: cosa si intende con descrizione "ragionevole"?
    [*Scenario principale*],
    [Descrizione ragionevole delle operazioni che l'attore deve fare per compiere l'azione descritta dal Caso d'Uso],

    [*Scenario secondario*],
    [Descrizione ragionevole degli eventi che possono accadere qualora una delle operazioni descritte nello *Scenario principale* non vada a buon fine],

    [*Inclusioni*],
    [Casi d'Uso ulteriori che l'Attore deve compiere per realizzare il Caso d'Uso attualmente descritto],

    [*Estensioni*],
    [Casi d'Uso ulteriori che possono realizzarsi durante l'esecuzione delle operazioni del Caso d'Uso principale],

    [*Trigger*],
    [Motivazioni che portano l'Attore a svolgere l'azione descritta dal Caso d'Uso. Non sempre disponibile in quanto il Caso d'Uso potrebbe essere incluso da un altro caso d'uso "principale"],
  ),
  caption: [Campi della descrizione testuale dei Casi d'Uso],
)
#pagebreak()
== Attori

Di seguito sono esposti gli attori utilizzati:
#v(1em)

#figure(
  image("../../assets/diagrams/attori.png", width: 50%),
  caption: [Diagramma degli attori principali],
)
#v(1em)

#figure(
  table(
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      [*Attore*],
      [*Descrizione*],
    ),

    [*Utente*], [Rappresenta un utente che vuole accedere al sistema],
    [*Admin Locale*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al sistema con interessi nel singolo magazzino che superano quelle del normale utilizzatore],

    [*Admin Globale*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al sistema con interesse alla situazione globale (dunque comprendente tutti i magazzini)],

    [*Cliente*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al sistema con interesse nel singolo magazzino],
  ),
  caption: [Descrizione degli attori],
)

Vengono inoltre utilizzati i seguenti attori secondari:

#figure(
  image("../../assets/diagrams/LLM-Actor.png", width: 6%),
  caption: [Diagramma degli attori secondari],
)

#figure(
  table(
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      [*Attore*],
      [*Descrizione*],
    ),

    [*LLM*],
    [Rappresenta un _Large Language Model_ che fornisce consigli di rifornimento sfruttando il _Machine Learning_],
  ),
  caption: [Attori secondari],
)

== Lista casi d'uso
=== UC1 - Autenticazione <UC1>
#use-case(
  attore: "Utente",
  pre: [- Il sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema],
  post: [- L'utente ha eseguito l'accesso al sistema ed è dallo stesso riconosciuto come Cliente, come Admin locale o come Admin globale],
  scenari: [
    - L'Utente seleziona la tipologia di utente $arrow$ @UC1.1[Vedi UC1.1 Sezione]
    - L'Utente Inserisce l'Username $arrow$ @UC1.2[Vedi UC1.2 Sezione]
    - L'Utente inserisce la Password $arrow$ @UC1.3[Vedi UC1.3 Sezione]
  ],
  scenari_alternativi: [
    - L'utente inserisce Username, Password o tipologia di utente errati $arrow$ @UC2[Vedi UC2 Sezione]
  ],
  inclusioni: [
    - @UC1.1[UC1.1 Sezione]
    - @UC1.2[UC1.2 Sezione]
    - @UC1.3[UC1.3 Sezione]
  ],
  estensioni: [
    @UC2[UC2 Sezione]
  ],
  trigger: "L'Utente vuole autenticarsi al sistema",
)[
  #use-case-diagram("1", "UC1 - Scelta tipologia utente")
]

#pagebreak()
Il Caso d'Uso UC1 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram(
  "1-incl",
  "Inclusioni del Caso d'Uso n.1: UC1.1, UC1.2, UC1.3",
)

==== UC1.1 - Scelta tipologia utente <UC1.1>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce la tipologia di utente dell'Utente
  ],
  post: [
    - Il Sistema riceve la tipologia di utente in cui l'Utente si vuole autenticare
  ],
  scenari: [
    - L'Utente procede ad inserire un'opzione tra Admin Locale, Admin Globale o Cliente
  ],
  trigger: "L'Utente vuole autenticarsi al sistema",
)[]

==== UC1.2 - Inserimento Username <UC1.2>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce l'Username dell'Utente
  ],
  post: [
    - Il Sistema riceve l'Username con la quale l'Utente si vuole autenticare al Sistema
  ],
  scenari: [
    - L'Utente procede ad inserire il proprio Username
  ],
  trigger: "L'Utente vuole autenticarsi al sistema",
)[]

==== UC1.3 - Inserimento Password <UC1.3>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce la Password dell'Utente
  ],
  post: [
    - Il Sistema riceve la Password con cui l'Utente si vuole autenticare
  ],
  scenari: [
    - L'utente procede ad inserire la propria Password
  ],
  trigger: "L'Utente vuole autenticarsi al sistema",
)[]

=== UC2 - Autenticazione non riuscita <UC2>
#use-case(
  attore: "Utente",
  pre: [- Il Sistema è attivo, in modalità online o offline;
    - L'attore principale non è autenticato al sistema (@UC1[Vedi UC1 Sezione])
    - L'attore principale ha immesso in fase di autenticazione uno Username o una Password non corretta oppure ha selezionato una tipologia di utente sbagliata],
  post: [- Il Sistema annulla il tentativo di autenticazione
    - Il Sistema mostra un errore a schermo],
  scenari: [
    - Il Sistema ha ricevuto Username, Password e tipologia di utente, ma non è riuscito a verificare tali credenziali
  ],
)[]

=== UC3 - Creazione di un ordine da confermare
#use-case(
  attore: "Cliente",
  pre: [- Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente],
  post: [- Il Sistema memorizza l'esistenza di un nuovo ordine non confermato con le relative informazioni],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla creazione di un nuovo ordine da confermare
    - Il Cliente inserisce il nome del nuovo ordine da confermare $arrow$ @UC3.1[Vedi UC3.1 Sezione]
    - Il Cliente inserisce il nominativo del destinatario del nuovo ordine da confermare $arrow$ @UC3.2[Vedi UC3.2 Sezione]
    - Il Cliente inserisce l'indirizzo di spedizione del nuovo ordine da confermare $arrow$ @UC3.3[Vedi UC3.3 Sezione]
  ],
  trigger: [Il Cliente vuole creare un nuovo ordine da confermare],
  inclusioni: [
    - UC3.1 @UC3.1
    - UC3.2 @UC3.2
    - UC3.3 @UC3.3
  ],
)[
  #use-case-diagram("3", "UC3 - Creazione di un ordine da confermare")
]

Il Caso d'Uso UC3 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("3-incl", "Inclusioni del Caso d'Uso n.3: UC3.1, UC3.2, UC3.3")

==== UC3.1 - Inserisci nome ordine <UC3.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce il nome del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve il nome con cui il Cliente vuole che il nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire il nome del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

==== UC3.2 - Inserisci nominativo del destinatario <UC3.2>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce il nominativo del destinatario del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve il nominativo del destinatario del nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire il nominativo del destinatario del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

==== UC3.3 - Inserisci indirizzo di spedizione <UC3.3>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce l'indirizzo di spedizione del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve l'indirizzo di spedizione del nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire l'indirizzo di spedizione del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

=== UC4 - Aggiunta di una merce: ordine/traferimento non confermato
//NOTA: l'ordine globale e locale sono i medesimi, cambia solo questo UC4 che tuttavia rimane sostanzialmente lo stesso per l'ordine locale o globale, dunque nei requisiti si può derivare sia la selezione locale che quella globale
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema aggiunge all'ordine selezionato le informazioni relative alla merce scelta e alla sua quantità
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa all'aggiunta di una merce ad un ordine non confermato
    - Il Cliente seleziona la tipologia di merce da aggiungere all'ordine non confermato $arrow$ @UC5[Vedi UC5, Sezione]
    - Il Cliente seleziona la quantità di tale merce da aggiungere all'ordine non confermato $arrow$ @UC6[Vedi UC6, Sezione]
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di aggiunta $arrow$ @UC9[Vedi UC9, Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente seleziona una merce non valida e/o una quantità non disponibile $arrow$ @UC7[Vedi UC7, Sezione]
    - Il Cliente cerca di aggiungere merce ad un ordine non confermato ma nessun ordine non confermato è registrato nel sistema per l'utente corrente $arrow$ @UC8[Vedi UC8, Sezione]
  ],
  inclusioni: [
    - UC5 @UC5
    - UC6 @UC6
    - UC9 @UC9
  ],
  estensioni: [
    - UC7 @UC7
    - UC8 @UC8
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine non confermato",
)[
  #use-case-diagram("4", "UC4 - Aggiunta di una merce ad un ordine non confermato")
]

Il Caso d'Uso UC4 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("4-incl", "Inclusioni del Caso d'Uso n.4: UC5, UC6 e UC9")

=== UC5 - Scelta merce da aggiungere: ordine/trasferimento non confermato <UC5>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'attore principale ha selezionato dal menu di voler aggiungere merce ad un ordine o ad un trasferimento non confermato
    - Il Sistema non conosce la merce che il Cliente vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve la tipologia di merce da aggiungere all'ordine o al trasferimento non confermato
  ],
  scenari: [
    - Il Cliente procede ad inserire la tipologia di merce che vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine o ad un trasferimento non confermato",
)[]

=== UC6 - Scelta q.tà merce da aggiungere: ordine/trasferimento non confermato <UC6>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler aggiungere merce ad un ordine o ad un trasferimento non confermato
    - Il Sistema non conosce la quantità della tipologia di merce che il Cliente vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve la quantità della tipologia di merce da aggiungere all'ordine o al trasferimento non confermato
  ],
  scenari: [
    - Il Cliente procede ad inserire la quantità della tipologia di merce che vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine o ad un trasferimento non confermato",
)[]

=== UC7 - Aggiunta merce non valida <UC7>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'attore principale ha eseguito l'operazione di aggiunta di una merce ad un ordine o ad un trasferimento non confermato
  ],
  post: [
    - L'operazione di aggiunta di una merce ad un ordine o ad un trasferimento non confermato viene annullata
  ],
  scenari: [
    - L'attore principale ha scelto la tipologia di merce da aggiungere all'ordine o al trasferimento non confermato, la quantità e l'ordine o trasferimento a cui aggiungere tale merce ma il Sistema ha verificato che la merce selezionata non esiste o eccede la quantità disponibile nel magazzino mittente
  ],
)[]

=== UC8 - Nessun ordine non confermato disponibile <UC8>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un ordine non confermato
  ],
  post: [
    - L'operazione riguardante un ordine non confermato viene annullata
  ],
  scenari: [
    - Il Cliente ha avviato un'operazione riguardante un ordine non confermato ma il Sistema non ha memorizzato alcun ordine non confermato per l'utente corrente
  ],
)[]


=== UC9 - Seleziona ordine non confermato <UC9>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un ordine non confermato
    - Il Sistema non conosce l'ordine non confermato su cui il Cliente vuole effettuare un'operazione
  ],
  post: [
    - Il Sistema riceve l'ordine non confermato sul quale il Cliente vuole operare
  ],
  scenari: [
    - L'utente procede ad inserire l'identificativo dell'ordine sul quale vuole eseguire l'operazione
  ],
  trigger: "Il Cliente vuole eseguire un'operazione su un ordine non confermato",
)[]

=== UC10 - Cancella ordine non confermato

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema cancella un ordine non confermato registrato nel Sistema
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla cancellazione di un ordine non confermato
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di cancellazione $arrow$ @UC9[Vedi UC9 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di cancellare un ordine non confermato ma nessun ordine non confermato è registrato nel sistema per l'utente corrente $arrow$ @UC8[Vedi UC8 Sezione]
  ],
  inclusioni: [
    - UC9 @UC9
  ],
  estensioni: [
    - UC8 @UC8
  ],
  trigger: "Il Cliente vuole cancellare un ordine non confermato",
)[
  #use-case-diagram("10", "UC10 - Cancella ordine non confermato")
]

Il Caso d'Uso UC10 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("10-incl", "Inclusione del Caso d'Uso n.10: UC9")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC9.

=== UC11 - Conferma ordine non confermato <UC11>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema conferma un ordine non confermato registrato nel Sistema eaggiorna le scorte di merci disponibili
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla conferma di un ordine non confermato
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di conferma $arrow$ @UC9[Vedi UC9 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di confermare un ordine non confermato ma la merce selezionata non esiste più oppure la quantità immessa eccede le risorse a disposizione $arrow$ @UC7[Vedi UC7 Sezione]
    - Il Cliente cerca di confermare un ordine non confermato ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8 Sezione]
  ],
  inclusioni: [
    - UC9 @UC9
  ],
  estensioni: [
    - UC7 @UC7
    - UC8 @UC8
  ],
  trigger: "Il Cliente vuole confermare un ordine non confermato",
)[
  #use-case-diagram("11", "UC11 - Conferma ordine non confermato")
]

Il Caso d'Uso UC11 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("11-incl", "Inclusione del Caso d'Uso n.11: UC9")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC9.

=== UC12 - Visualizza elenco ordini non confermati per l'utente corrente <UC12>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Il Sistema mostra a schermo l'elenco degli ordini non confermati per l'utente corrente],
  scenari: [
    - Il Cliente seleziona dal menu la voce relativa alla visualizzazione degli ordini non confermati registrati nel Sistema
    - Il Cliente visualizza a schermo la lista degli ordini non confermati registrati nel Sistema per l'utente corrente $arrow$ @UC12.1[Vedi UC12.1 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di visualizzare gli ordini non confermati ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8 Sezione]
  ],
  inclusioni: [
    - UC12.1 @UC12.1
  ],
  estensioni: [
    - UC8 @UC8
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[
  #use-case-diagram("12", "UC12 - Visualizza elenco ordini non confermati")
]

Il Caso d'Uso UC12 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("12-incl", "Inclusione del Caso d'Uso n.12: UC12.1")
Il presente Caso d'Uso presenta inoltre ulteriori due inclusioni, anch'esse qui di seguito descritte.

==== UC12.1 - Visualizza elemento lista ordini non confermati <UC12.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini non confermati registrati nel Sistema per l'utente corrente
  ],
  post: [Il Sistema mostra, nel singolo elemento della lista ordini non confermati, ID, data creazione e nome dell'ordine],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - l'ID dell'ordine $arrow$ @UC13[Vedi UC13, Sezione]
      - La data di creazione dell'ordine $arrow$ @UC14[Vedi UC14, Sezione]
      - Il nome dell'ordine $arrow$ @UC15[Vedi UC15, Sezione]
  ],
  inclusioni: [
    - UC13 @UC13
    - UC14 @UC14
    - UC15 @UC15
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[]

=== UC13 - Visualizza ID ordine <UC13>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzato l'ID dell'ordine],
  scenari: [
    - Viene visualizzato l'ID dell'ordine
  ],
)[]

=== UC14 - Visualizza data creazione ordine <UC14>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzata la data di creazione dell'ordine],
  scenari: [
    - Viene visualizzato la data di creazione dell'ordine
  ],
)[]

=== UC15 - Visualizza nome ordine <UC15>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzato il nome dell'ordine],
  scenari: [
    - Viene visualizzato il nome dell'ordine
  ],
)[]

=== UC16 - Visualizza ordine non confermato

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato ID, data creazione, nome e lista merci dell'ordine],
  scenari: [
    - Il Cliente seleziona da una lista di ordini non confermati la visualizzazione di un ordine specifico
    - Il Cliente visualizza del suddetto ordine:
      - ID dell'ordine $arrow$ @UC13[Vedi UC13, Sezione]
      - Data creazione dell'ordine non confermato $arrow$ @UC14[Vedi UC14, Sezione]
      - Nome dell'ordine $arrow$ @UC15[Vedi UC15, Sezione]
      - Lista delle merci $arrow$ @UC16.1[Vedi UC16.1, Sezione]
  ],
  inclusioni: [
    - UC13 @UC13
    - UC14 @UC14
    - UC15 @UC15
    - UC16.1 @UC16.1
  ],
  trigger: "Il Cliente vuole vedere un ordine non confermato specifico registrato nel Sistema per l'utente corrente",
)[
  #use-case-diagram("16", "UC16 - Visualizza ordine non confermato")
]

Il Caso d'Uso UC16 include quattro ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("16-incl", "Inclusione del Caso d'Uso n.16: UC13, UC14, UC15, UC16.1")
Per maggiori informazioni sui Casi d'Uso 13, 14 e 15 si rimanda alle rispettive descrizioni (@UC13, @UC14 e @UC15), mentre per il Caso d'Uso 16.1 sarà qui di seguito descritto assieme ai Casi d'Uso che lo stesso a sua volta include.

==== UC16.1 - Visualizza lista merci ordine non confermato <UC16.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un ordine non confermato registrato nel Sistema per l'utente corrente nel dettaglio
  ],
  post: [Viene visualizzata la lista delle merci di un ordine non confermato],
  scenari: [
    - Il Cliente visualizza a schermo la lista della merce aggiunta all'ordine non confermato selezionato $arrow$ @UC16.1.1[Vedi UC16.1.1 Sezione]
  ],
  inclusioni: [
    - UC 16.1.1 @UC16.1.1
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

===== UC16.1.1 - Visualizza elemento lista merce ordine non confermato <UC16.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un elenco di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzaa la quantità e il nome della merce di un ordine non confermato],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - Quantità di quella merce nell'ordine non confermato selezionato $arrow$ @UC16.1.1.1[Vedi UC16.1.1.1 Sezione];
      - Nome della merce $arrow$ @UC17[Vedi UC17 Sezione];
  ],
  inclusioni: [
    - UC16.1.1.1 @UC16.1.1.1
    - UC17 @UC17
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

====== UC16.1.1.1 - Visualizza q.tà della merce ordine non confermato <UC16.1.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la quantità di una merce in un ordine non confermato],
  scenari: [
    - Viene visualizzata la quantità della singola merce nell'ordine non confermato selezionato
  ],
)[]

=== UC17 - Visualizza nome merce <UC17>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin Globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  post: [Viene visualizzato il nome di una merce],
  scenari: [
    - Viene visualizzata il nome della singola merce
  ],
)[]

=== UC18 - Visualizza elenco delle merci nel Sistema
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato un elenco delle merci nel Sistema],
  scenari: [
    - Il Cliente seleziona dal menu l'opzione relativa alla visualizzazione dell'elenco delle merci memorizzate nel Sistema
    - Il Cliente visualizza a schermo la lista delle merci memorizzate nel Sistema $arrow$ @UC18.1[Vedi UC16 Sezione]
  ],
  inclusioni: [
    - UC18.1 @UC18.1
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci memorizzate nel Sistema",
)[
  #use-case-diagram("18", "UC18 - Visualizza lista delle merci")
]

Il Caso d'Uso UC18 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("18-incl", "Inclusione del Caso d'Uso n.18: UC18.1")
Tale Caso d'Uso sarà descritto qui di seguito assieme alle sue inclusioni, sempre rappresentate in figura, ad eccezione del Caso d'Uso n. 17, la cui descrizione è disponibile alla @UC17.

==== UC18.1 - Visualizza elemento lista delle merci <UC18.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando la lista delle merci memorizzate nel Sistema
  ],
  post: [Nell'elemento della lista delle merci viene visualizzato ID, nome, quantità complessiva in tutti i magazzini e quantità locale della singola merce],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - L'ID della merce $arrow$ @UC19[Vedi UC19, Sezione]
      - Il nome della merce $arrow$ @UC17[Vedi UC17, Sezione]
      - La quantità di merce complessiva in tutti i magazzini $arrow$ @UC20[Vedi UC20, Sezione]
      - La quantità di merce nel magazzino presso cui il Cliente ha fatto l'autenticazione $arrow$ @UC21[Vedi UC21, Sezione]
  ],
  inclusioni: [
    - UC17 @UC17
    - UC19 @UC19
    - UC20 @UC20
    - UC21 @UC21
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci presenti nel Sistema",
)[]

=== UC19 - Visualizza ID merce <UC19>

#use-case(
  attore: "Cliente, Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  post: [Viene visualizzao l'ID della merce],
  scenari: [
    - Viene visualizzata l'ID della singola merce
  ],
)[]

=== UC20 - Visualizza quantità complessiva di una merce in tutti i magazzini <UC20>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci oppure una singola merce nel dettaglio
  ],
  post: [Viene visualizzata la quantità complessiva di una merce in tutti i magazzini],
  scenari: [
    - Il Cliente visualizza la quantità complessiva della merce in tutti i magazzini
  ],
)[]

=== UC21 - Visualizza quantità di una merce nel magazzino attuale <UC21>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci oppure una singola merce nel dettaglio
  ],
  post: [Viene visualizzata la quantità complessiva di una merce nel magazzino attuale],
  scenari: [
    - Il Cliente visualizza la quantità della merce nel magazzino attuale
  ],
)[]

=== UC22 - Visualizza merce
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Della merce selezionata, il Cliente visualizza ID, nome, quantità globale e locale e descrizione],
  scenari: [
    - Il Cliente seleziona da una lista di merci la visualizzazione di una merce in particolare
    - Il Cliente viusalizza della merce selezionata:
      - l'ID della merce $arrow$ @UC19[Vedi UC19, Sezione]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sezione]
      - Quantità della merce disponibile nel magazzino attuale $arrow$ @UC21[Vedi UC20, Sezione]
      - Quantità della merce complessivamente disponibile in tutti i magazzini $arrow$ @UC20[Vedi UC20, Sezione]
      - Descrizione della merce $arrow$ @UC22.1[Vedi UC, Sezione]
  ],
  inclusioni: [
    - UC17 @UC17
    - UC19 @UC19
    - UC20 @UC20
    - UC21 @UC21
    - UC22.1 @UC22.1
  ],
  trigger: "l'utente vuole visualizzare i dettagli di una merce presente nel Sistema",
)[
  #use-case-diagram("22", "UC22 - Visualizza merce")
]

Il Caso d'Uso UC22 include cinque ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("22-incl", "Inclusioni del Caso d'Uso n.22: UC17, UC19, UC20, UC21 e UC22.1")
Tali Casi d'Uso saranno descritti qui di seguito ad eccezione degli UC n.17, 19, 20 e 21 reperibili, rispettivamente, alla @UC17, @UC19, @UC20 e @UC21.

==== UC22.1 - Visualizza descrizione della merce <UC22.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando il dettaglio di una merce
  ],
  post: [Viene visualizzata la descrizione della merce],
  scenari: [
    - Il Cliente visualizza la descrizione della merce
  ],
)[]

=== UC23 - Creazione di un trasferimento da confermare <UC23>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema memorizza l'esistenza di un nuovo trasferimento non confermato con le relative informazioni
  ],
  scenari: [
    - L'Admin Globale seleziona dal menù principale l'opzione relativa alla creazione di un nuovo trasferimento da confermare
    - L'Admin Globale sceglie il magazzino destinatario del nuovo trasferimento da confermare $arrow$ @UC23.2[Vedi UC23.2 Sezione]
    - L'Admin Globale sceglie il magazzino mittente del nuovo trasferimento da confermare $arrow$ @UC23.1[Vedi UC Sezione]
  ],
  trigger: [L'Admin globale vuole creare un nuovo trasferimento da confermare],
  inclusioni: [
    - UC23.1 @UC23.1
    - UC23.2 @UC23.2
  ],
)[
  #use-case-diagram("23", "UC23 - Creazione di un trasferimento da confermare")
]

Il Caso d'Uso UC23 include due ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("23-incl", "Inclusioni del Caso d'Uso n.23: UC23.1 e UC23.2")
Tali Casi d'Uso saranno descritti qui di seguito:

==== UC23.1 - Scelta del magazzino mittente: trasferimento non confermato <UC23.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menu di voler creare un nuovo trasferimento
    - Il Sistema non conosce il magazzino mittente di un trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino mittente del nuovo trasferimento
  ],
  scenari: [
    - L'Admin globale procede ad inserire l'identificativo del magazzino mittente del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin globale vuole creare un nuovo trasferimento da confermare",
)[]

==== UC23.2 - Scelta del magazzino ricevente: trasferimento non confermato <UC23.2>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menù di voler creare un nuovo trasferimento
    - Il Sistema non conosce il magazzino destinatario di un trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino destinatario del nuovo trasferimento
  ],
  scenari: [
    - L'Admin globale procede ad inserire l'identificativo del magazzino destinatario del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin globale vuole creare un nuovo trasferimento di merce tra magazzini da confermare",
)[]

=== UC24 - Aggiunta merce ad un trasferimento non confermato <UC24>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menu di voler aggiungere merce ad un trasferimento
    - Nel Sistema esiste almeno un trasferimento da confermare
  ],
  post: [
    - La merce selezionata è stata aggiunta ad un trasferimento
  ],
  scenari: [
    - L'Admin Globale seleziona la voce del menu relativa all'aggiunta di merce ad un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato a cui aggiungere merce $arrow$ @UC25[Vedi UC25, Sezione]
    - L'Admin Globale inserisce il nome della merce che vuole trasferire $arrow$ @UC5[Vedi UC5, Sezione]
    - L'Admin Globale inserisce la quantità della merce da trasferire $arrow$ @UC6[Vedi UC6 Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale ha scelto una quantità di merce per la merce selezionata superiore alla quantità disponibile nel magazzino mittente $arrow$ @UC7[Vedi UC7, Sezione]
    - L'Admin Globale ha selezionato di voler aggiungere merce ad un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27, Sezione]
  ],
  inclusioni: [
    - UC25 @UC25
    - UC5 @UC5
    - UC6 @UC6
  ],
  estensioni: [
    - UC7 @UC7
    - UC27 @UC27
  ],
  trigger: "L'Admin globale vuole trasferire della merce da un magazzino all'altro",
)[
  #use-case-diagram("24", "UC24 - Aggiunta merce ad un trasferimento non confermato")
]

Il Caso d'Uso UC24 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("24-incl", "Inclusioni del Caso d'Uso n.24: UC5 , UC6 e UC25")
Tali Casi d'Uso saranno descritti qui di seguito ad eccezione di UC5 e UC6, reperibili, rispettivamente, alla @UC5 e alla @UC6.

=== UC25 - Seleziona trasferimento non confermato <UC25>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menu di voler aggiungere merce ad un trasferimento non confermato o di confermarne/cancellarne uno
  ],
  post: [
    - Il Sistema memorizza il trasferimento non confermato alla quale aggiungere la merce o il trasferimento da confermare/cancellare
  ],
  scenari: [
    - L'Admin Globale inserisce l'ID del trasferimento non confermato alla quale aggiungere merce o che vuole confermare/cancellare
  ],
  trigger: "L'Admin globale vuole trasferire della merce da un magazzino all'altro o confermare/cancellare un trasferimento non confermato",
)[]

=== UC26 - Conferma trasferimento non confermato <UC26>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema memorizza un trasferimento come confermato e lo avvia nell'effettivo
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu l'opzione relativa alla conferma di un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato da confermare $arrow$ @UC25[Vedi UC Sezione]
  ],
  scenari_alternativi: [
    - L'Admin Globale ha selezionato il trasferimento non confermato ma la quantità della merce non è più disponibile nel magazzino mittente $arrow$ @UC7[Vedi UC7, Sezione]
    - L'Admin Globale ha selezionato di voler confermare un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27 Sezione]
  ],
  inclusioni: [
    - UC25 @UC25
  ],
  estensioni: [
    - UC7 @UC7
    - UC27 @UC27
  ],
  trigger: "L'Admin Globale vuole confermare un trasferimento non confermato",
)[
  #use-case-diagram("26", "UC26 - Conferma trasferimento non confermato")
]

Il Caso d'Uso UC26 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("26-incl", "Inclusione del Caso d'Uso n.26: UC25")
Tale Caso d'Uso è reperibile alla @UC25.

=== UC27 - Nessun trasferimento non confermato disponibile <UC27>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un trasferimento non confermato
  ],
  post: [
    - L'operazione riguardante un trasferimento non confermato viene annullata
  ],
  scenari: [
    - Il Cliente ha avviato un'operazione riguardante un trasferimento non confermato ma il Sistema non ha memorizzato alcun trasferimento non confermato
  ],
)[]

=== UC28 - Cancella trasferimento non confermato

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema cancella un trasferimento non ancora confermato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu l'opzione relativa alla cancellazione di un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato da cancellare $arrow$ @UC25[Vedi UC Sezione]
  ],
  scenari_alternativi: [
    - L'Admin Globale ha selezionato di voler cancellare un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27, Sezione]
  ],
  inclusioni: [
    - UC25 @UC25
  ],
  estensioni: [
    - UC27 @UC27
  ],
  trigger: "L'Admin Globale vuole cancellare un trasferimento non confermato",
)[
  #use-case-diagram("28", "UC28 - Cancella trasferimento non confermato")
]

Il Caso d'Uso UC28 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("28-incl", "Inclusione del Caso d'Uso n.28: UC25")
Tale Caso d'Uso è reperibile alla @UC25.

=== UC29 - Visualizza elenco dei trasferimenti <UC29>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco dei trasferimenti],
  scenari: [
    - L'Admin Globale seleziona dal menu principale l'opzione relativa alla visualizzazione dell'elenco completo dei trasferimenti nel sistema
    - L'Admin Globale visualizza a schermo la lista di tutti i trasferimenti memorizzati nel Sistema $arrow$ @UC29.1[Vedi UC Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i trasferimenti, a prescindere dallo stato",
  inclusioni: [
    - UC29.1 @UC29.1
  ],
)[
  #use-case-diagram("29", "UC29 - Visualizza l'elenco dei trasferimenti")
]

Il Caso d'Uso UC29 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("29-incl", "Inclusione del Caso d'Uso n. 29: UC29.1")
Tale Caso d'Uso sarà qui di seguito descritto insieme alle sue inclusioni (sempre rappresentate nell'immagine precedente).

==== UC29.1 - Visualizza elemento lista trasferimenti <UC29.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando la lista dei trasferimenti memorizzati nel Sistema
  ],
  post: [Per il singolo elemento della lista dei trasferimenti viene visualizzato ID e stato di tale trasferimento],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata deve presentare:
      - L'ID del trasferimento $arrow$ @UC30[Vedi UC30 Sezione]
      - Lo stato del trasferimento $arrow$ @UC31[Vedi UC31 Sezione]
  ],
  inclusioni: [
    - UC30 @UC30
    - UC31 @UC31
  ],
  trigger: "L'Admin globale vuole visualizzare i trasferimenti, a prescindere dallo stato",
)[]

=== UC30 - Visualizza ID trasferimento <UC30>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando una lista di trasferimenti o un trasferimento nello specifico
  ],
  post: [Viene visualizzato l'ID del trasferimento],
  scenari: [
    - L'Admin Globale visualizza l'ID del trasferimento
  ],
)[]

=== UC31 - Visualizza stato trasferimento <UC31>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin Globale sta visualizzando una lista di trasferimenti o un trasferimento nello specifico
  ],
  post: [Viene visualizzato lo stato del trasferimento],
  scenari: [
    - L'Admin Globale visualizza lo stato del trasferimento
  ],
)[]

=== UC32 - Visualizza trasferimento <UC32>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [Viene visualizzato un trasferimento nel dettaglio. Tale visualizzazione comprende l'ID, il magazzino mittente, il magazzino destinatario, lo stato e l'elenco della merce interessata dal trasferimento],
  scenari: [
    - L'Admin Globale seleziona da una lista di trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin Globale visualizza del suddetto trasferimento:
      - L'ID del trasferimento $arrow$ @UC30[Vedi UC30 Sezione]
      - Il magazzino mittente del trasferimento $arrow$ @UC32.1[Vedi UC32.1, Sezione]
      - Il magazzino destinatario del trasferimento $arrow$ @UC32.2[Vedi UC32.2, Sezione]
      - Lo stato del trasferimento $arrow$ @UC31[Vedi UC31, Sezione]
      - L'elenco della merce interessata dal trasferimento $arrow$ @UC32.3[Vedi UC32.3, Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento specifico",
  inclusioni: [
    - UC30 @UC30
    - UC31 @UC31
    - UC32.1 @UC32.1
    - UC32.2 @UC32.2
    - UC32.3 @UC32.3
  ],
)[
  #use-case-diagram(
    "32",
    "UC32 - Visualizza il singolo trasferimento",
  )
]

Il Caso d'Uso UC32 include cinque ulteriori Casi d'Uso come rappresentato dalla seguente immagine:
#use-case-diagram("32-incl", "Inclusione del Caso d'Uso n.32: UC30, UC31, UC32.1, UC32.2 e UC32.3")
Tali Casi d'Uso saranno ora descitti ad eccezione degli UC30 e UC31 la cui descrizione è reperibile alla, rispettivamente, @UC30 e @UC31.

==== UC32.1 - Visualizza magazzino mittente trasferimento <UC32.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un trasferimento nello specifico
  ],
  post: [Viene visualizzato il magazzino mittente di un trasferimento],
  scenari: [
    - L'Admin globale visualizza il magazzino mittente del trasferimento
  ],
)[]

==== UC32.2 - Visualizza magazzino destinatario trasferimento <UC32.2>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un trasferimento nello specifico
  ],
  post: [Viene visualizzato il magazzino destinatario di un trasferimento],
  scenari: [
    - L'Admin globale visualizza il magazzino destinatario del trasferimento
  ],
)[]

==== UC32.3 - Visualizza elenco merce trasferimento <UC32.3>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'utente ha selezionato dall'elenco dei trasferimenti un trasferimento da visualizzare nel dettaglio
  ],
  post: [Viene visualizzato l'elenco della merce interessata dal trasferimento],
  scenari: [
    - L'Admin globale visualizza l'elenco della merce interessata dal trasferimento $arrow$ @UC32.3.1[Vedi UC32.3.1, Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
  inclusioni: [
    - UC32.3.1 @UC32.3.1
  ],
)[]

Il Caso d'Uso UC32.3 include un ulteriore Caso d'Uso come rappresentato dalla seguente immagine:
#use-case-diagram("32-incl-2", "Inclusione del Caso d'Uso n.32.3: UC32.3.1 e relative inclusioni")
Tale Caso d'Uso e le relative inclusioni saranno ora descritte ad eccezione dell'UC17, una cui descrizione è reperibile alla @UC17.

===== UC32.3.1 - Visualizza elemento lista merce trasferimento <UC32.3.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di merce appartenente ad un rifornimento
  ],
  post: [Per il singolo elemento della lista della merce interessata dal trasferimento viene visualizzato nome e quantità della merce],
  scenari: [
    - Per ogni elemento della lista l'Admin Globale deve visualizzare:
      - Il nome della singola merce interessata dal trasferimento $arrow$ @UC17[Vedi UC17, Sezione]
      - La quantità della singola merce interessata dal trasferimento $arrow$ @UC32.3.1.1[Vedi UC32.3.1.1, Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli della singola merce del trasferimento",
  inclusioni: [
    - UC17 @UC17
    - UC32.3.1.1 @UC32.3.1.1
  ],
)[]

====== UC32.3.1.1 - Visualizza quantità singola merce
<UC32.3.1.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin Globale sta visualizzando un elenco di merce appartenente ad un rifornimento
  ],
  post: [Viene visualizzata la quantità della singola merce interessata dal trasferimento],
  scenari: [
    - L'Admin Globale visualizza la quantità della singola merce interessata dal trasferimento
  ],
)[]

=== UC33 - Visualizza elenco notifiche rifornimento

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [Viene visualizzato l'elenco delle notifiche di rifornimento],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento
    - L'Admin globale visualizza a schermo la lista delle notifiche di rifornimento $arrow$ @UC34[Vedi UC34, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di visualizzare le notifiche di rifornimento ma nessuna notifica è presente $arrow$ @UC37[Vedi UC37, Sezione]
  ],
  inclusioni: [
    - UC34 @UC34
  ],
  estensioni: [
    - UC37 @UC37
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento",
)[
  #use-case-diagram("33", "UC33 - Visualizza elenco notifiche rifornimento")
]

Il Caso d'Uso UC33 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("33-incl", "Inclusione del Caso d'Uso n. 33: UC34")
Tale caso d'uso con le rispettive inclusioni saranno analizzati qui di seguito.

==== UC34 - Visualizza elemento lista notifiche rifornimento <UC34>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando la lista delle notifiche di rifornimento (scaturite per via della soglia di guardia o per mezzo delle tecnologie di _Machine Learning_)
  ],
  post: [Per ogni elemento della lista delle notifiche di rifornimento viene visualizzato lo stato (ad esempio confermata o non confermata) e l'ID della notifica],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dall'Admin globale dovrà contenere:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UC35[Vedi UC35, Sezione]
      - L'ID della notifica $arrow$ @UC36[Vedi UC36, Sezione]
  ],
  inclusioni: [
    - UC35 @UC35
    - UC36 @UC36
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento",
)[]

===== UC35 - Visualizza stato notifica rifornimento <UC35>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  post: [viene visualizzato lo stato (ad esempio confermata o non confermata) della notifica di rifornimento],
  scenari: [
    - Viene visualizzato lo stato della notifica di rifornimento
  ],
)[]

===== UC36 - Visualizza ID notifica rifornimento <UC36>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  post: [Viene visualizzato l'ID della notifica di rifornimento],
  scenari: [
    - Viene visualizzato l'ID della notifica di rifornimento
  ],
)[]

=== UC37 - Nessuna notifica di rifornimento <UC37>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato un'opzione relativa alle notifiche di rifornimento
  ],
  post: [Viene annullata l'operazione di visualizzazione delle notifiche di rifornimento e un errore apposito viene mostrato all'Admin globale],
  scenari: [
    - L'Admin globale ha selezionato un'opzione relativa alle notifiche di rifornimento ma nessuna notifica di rifornimento è disponibile per l'operazione da effettuare
  ],
)[]

=== UC38 - Visualizza lista notifiche di rifornimento forniti da _Machine Learning_

#use-case(
  attore: "Admin globale",
  attori_secondari: "LLM",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [Viene visualizzato l'elenco delle notifiche di rifornimento fornite da _Machine Learning_],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento fornite da _Machine Learning_
    - L'Admin globale visualizza a schermo la lista delle notifiche di rifornimento fornite da _Machine Learning_ $arrow$ @UC34[Vedi UC34, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di visualizzare le notifiche di rifornimento fornite da _Machine Learning_ ma nessuna notifica è presente $arrow$ @UC37[Vedi UC37, Sezione]
  ],
  inclusioni: [
    - UC34 @UC34
  ],
  estensioni: [
    - UC37 @UC37
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento suggerite da "
    + [_Machine Learning_]
    + ".",
)[#use-case-diagram(
    "38",
    "UC38 - Visualizza elenco notifiche di rifornimento con " + [_Machine Learning_],
  )]

Il Caso d'Uso UC35 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("38-incl","Inclusione del Caso d'Uso n.38: UC34")
Maggiori informazioni sono disponibili alla @UC34.

=== UC39 - Visualizza notifica rifornimento
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Per la notifica selezionata viene visualizzato stato, ID, magazzino di destinazione e merce interessata dal rifornimento],
  scenari: [
    - L'Admin globale ha selezionato da una lista di notifiche di rifornimento la visualizzazione di una notifica specifia
    - L'Admin globale visualizza della suddetta notifica:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UC35[Vedi UC35, Sezione]
      - L'ID della notifica $arrow$ @UC36[Vedi UC36, Sezione]
      - L'elenco della merce il cui rifornimento è consigliato $arrow$ @UC39.2[Vedi UC39.2, Sezione]
      - Magazzino di destinazione $arrow$ @UC39.1[Vedi UC39.1, Sezione]
  ],
  inclusioni: [
    - UC35 @UC35
    - UC36 @UC36
    - UC39.1 @UC39.1
    - UC39.2 @UC39.2
  ],
  trigger: "L'Admin globale una notifica di rifornimento specifica registrata nel sistema",
)[#use-case-diagram("39", "UC39 - Visualizza notifica di rifornimento")]

Il Caso d'Uso UC39 include quattro ulteriori Casi d'Uso come raffigurato nella seguente immagine: #use-case-diagram("39-incl","Inclusione del Caso d'Uso n.39: UC35, UC36, UC39.1 e UC39.2")
Riguardo UC34.1.1 e UC36 è possibile avere maggiori informazioni alla @UC35 e alla @UC36.

==== UC39.1 - Visualizza magazzino di destinazione <UC39.1>

#use-case(
  attore: "Cliente, Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin globale
    - L'attore principale sta visualizzando il dettaglio di una notifica di rifornimento
  ],
  post: [Viene visualizzato il magazzino destinatario del trasferimento],
  scenari: [
    - Viene visualizzato il magazzino di destinazione
  ],
)[]

==== UC39.2 - Visualizza elenco merce consigliata da rifornire <UC39.2>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [Viene visualizzato l'elenco della merce il cui rifornimento è consigliato],
  scenari: [
    - L'Admin globale seleziona una notifica di rifornimento specifica
    - L'Admin Globale visualizza a schermo l'elenco delle merci il cui rifornimento è consigliato $arrow$ @UC39.2.1[Vedi UC39.2.1, Sezione]
  ],
  inclusioni: [
    - UC39.2.1 @UC39.2.1
  ],
  trigger: "L'Admin globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC39.2 include un ulteriore caso d'uso come raffigurato nella seguente immagine: #use-case-diagram("39-incl-2","Inclusione del Caso d'Uso n.39.2: UC39.2.1")
Tale Caso d'Uso sarà esposto qui di seguito.

===== UC39.2.1 - Visualizza elemento lista merce consigliata da rifornire <UC39.2.1>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando un elenco di merce il cui rifornimento è consigliato
  ],
  post: [Per ogni elemento della lista delle merci il cui rifornimento è consigliato viene mostrato ID, nome e quantità della merce rispettiva],
  scenari: [
    - Per ogni elemento della lista viene visualizzato:
      - ID della merce $arrow$ @UC19[Vedi UC23, Sezione]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sezione]
      - Quantità da rifornire $arrow$ @UC39.2.1.1[Vedi UC39.2.1.1, Sezione]
  ],
  inclusioni: [
    - UC19 @UC19
    - UC17 @UC17
    - UC39.2.1.1 @UC39.2.1.1
  ],
  trigger: "L'Admin globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC39.2.1 include tre ulteriori Casi d'Uso come descritto sopra.
In merito a UC17 e UC19 è possibile avere maggiori informazioni, rispettivamente, alla @UC17 e alla @UC19, i rimanenti saranno invece esposti qui di seguito.


====== UC39.2.1.1 - Visualizza quantità merce da rifornire <UC39.2.1.1>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando una lista di merci in una notifica di rifornimento
  ],
  post: [Viene visualizzata la quantità di merce il cui rifornimento è consigliato],
  scenari: [
    - Viene visualizzata la quantità da rifornire consigliata della singola merce
  ],
)[]

=== UC40 - Accetta notifica di rifornimento

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il Sistema registra la notifica di rifornimento come accettata
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'accettazione delle notifiche di rifornimento
    - L'Admin globale sceglie quale notifica di rifornimento accettare $arrow$ @UC41[Vedi UC41, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale vuole accettare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da accettare$arrow$ @UC37[Vedi UC37, Sezione]
  ],
  inclusioni: [
    - UC41 @UC41
  ],
  estensioni: [
    - UC37 @UC37
  ],
  trigger: "L'Admin globale vuole accettare una notifica di rifornimento",
)[
  #use-case-diagram("40", "UC40 - Accetta notifica di rifornimento")
]

Il Caso d'Uso UC40 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("40-incl", "Inclusione del Caso d'Uso n.40: UC41")

==== UC41 - Seleziona notifica di rifornimento <UC41>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta compiendo un'operazione riguardante le notifiche di rifornimento
  ],
  post: [
    - Il Sistema registra su quale notifica di rifornimento effettuare l'operazione voluta dall'Admin globale
  ],
  scenari: [
    - L'Admin globale procede ad inserire la notifica sulla quale vuole che l'operazione sia effettuata
  ],
  trigger: "L'Admin globale vuole effettuare un'operazione su una notifica di rifornimento",
)[]

=== UC42 - Rifiuta notifica di rifornimento

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il Sistema registra la notifica di rifornimento come rifiutata
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa al rifiuto delle notifiche di rifornimento
    - L'Admin globale sceglie quale notifica di rifornimento rifiutare $arrow$ @UC41[Vedi UC41, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale vuole rifiutare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da rifiutare $arrow$ @UC37[Vedi UC37, Sezione]
  ],
  inclusioni: [
    - UC41 @UC41
  ],
  estensioni: [
    - UC37 @UC37
  ],
  trigger: "L'Admin globale vuole rifiutare una notifica di rifornimento",
)[
  #use-case-diagram("42", "UC42 - Rifiuta notifica di rifornimento")
]

Il Caso d'Uso UC42 include un ulteriore Caso d'Uso come mostrato nella seguente figura: #use-case-diagram("42-incl", "Inclusione del Caso d'Uso n.42: UC41")
Tale caso d'uso è disponibile per la consultazione alla @UC41.

=== UC43 - Visualizza elenco microservizi

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [Viene visualizzato l'elenco dei microservizi],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione dei microservizi
    - L'Admin globale visualizza a schermo la lista dei microservizi del Sistema $arrow$ @UC43.1[Vedi UC43.1, Sezione]
  ],
  inclusioni: [
    - UC43.1 @UC43.1
  ],
  trigger: "L'Admin globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[#use-case-diagram("43", "UC43 - Visualizza elenco microservizi")]

Il Caso d'Uso UC39 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("43-incl","Inclusioni del Caso d'Uso n.43: UC43.1")
Il presente Caso d'Uso sarà esposto, con le relative inclusioni, qui di seguito.

==== UC43.1 - Visualizza elemento lista microservizi <UC43.1>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando una lista di microservizi
  ],
  post: [Per ogni elemento della lista dei microservizi viene visualizzato il numero di richieste al secondo],
  scenari: [
    - Ogni singolo elemento della lista visualizzata dall'Admin globale dovrà contenere:
      - numero di richieste al secondo $arrow$ @UC43.1.1[Vedi UC43.1.1, Sezione]
  ],
  inclusioni: [
    - UC43.1.1 @UC43.1.1
  ],
  trigger: "L'Admin globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[]

===== UC43.1.1 - Visualizza numero richieste al secondo del microservizio <UC43.1.1>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'admin globale sta visualizzando un microservizio o un elenco di microservizi
  ],
  post: [Viene visualizzato il numero di richieste al secondo di un microservizio],
  scenari: [
    - Viene visualizzato il numero di richieste al secondo per il microservizio
  ],
)[]

=== UC44 - Esportazione ordini
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il file _.csv_ viene generato correttamente e scaricato sul dispositivo dell'Admin globale riportando fedelmente gli ordini eseguiti
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di esportare gli ordini eseguiti ma non ci sono dati da esportare $arrow$ @UC45[Vedi UC45, Sezione]
  ],
  estensioni: [
    - UC45 @UC45
  ],
  trigger: "L'Admin globale richiede l'esportazione degli ordini eseguiti tramite l'apposita funzionalità.",
)[
  #use-case-diagram("44", "UC44 - Esportazione ordini")
]

=== UC45 - Nessun ordine da esportare <UC45>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],
  post: [
    -Il Sistema invia una notifica informando che non c'è alcun ordine da esportare
  ],
  scenari: [
    - L'Admin globale seleziona dal menù la voce relativa all'esportazione degli ordini eseguiti ma nessun ordine è stato eseguito
  ],
)[]

=== UC46 - Esportazione report inventario
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il file _.csv_ viene generato correttamente e scaricato sul dispositivo dell'Admin globale riportando accuratamente lo stato attuale dell'inventario
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di esportare l'inventario ma non ci sono dati da esportare $arrow$ @UC47[Vedi UC47, Sezione]
  ],
  estensioni: [
    - UC47 @UC47
  ],
  trigger: "L'Admin globale richiede l'esportazione del report dell'inventario tramite l'apposita funzionalità.",
)[
  #use-case-diagram("46", "UC46 - Esportazione report inventario")
]

=== UC47 - Nessun dato inventario <UC47>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menu la voce relativa all'esportazione del report dell'inventario
  ],
  post: [
    -Il Sistema invia una notifica informando che non c'è alcun dato dell'inventario disponibile
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario ma nessun dato è disponibile
  ],
)[]

=== UC48 - Creazione di una soglia minima per una merce
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - La soglia minima impostata viene salvata correttamente nel Sistema
  ],
  scenari: [
    - L'Admin globale accede dal menù alla sezione gestione inventario.
    - L'Admin seleziona la merce per cui vuole impostare una soglia minima @UC49[Vedi UC49, Sezione]
    - L'Admin inserisce il valore della soglia minima desiderata @UC48.1[Vedi UC48.1, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale inserisce una soglia minima non valida $arrow$ @UC50[Vedi UC50, Sezione]
  ],
  inclusioni: [
    - UC49 @UC49
    - UC48.1 @UC48.1
  ],
  estensioni: [
    - UC50 @UC50
  ],
  trigger: "L'Admin globale richiede di impostare una soglia minima per una specifica merce.",
)[
  #use-case-diagram("48", "UC48 - Creazione di una soglia minima per una merce")
]

Il Caso d'Uso 48 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("48-incl","Inclusioni del Caso d'Uso n.48: UC48.1 e UC49").
Tali Casi d'Uso saranno di seguito esposti.

=== UC48.1 - Inserisci soglia minima <UC48.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale accede dal menù alla sezione gestione inventario
    - L'Admin ha selezionato la merce per cui vuole impostare una soglia minima
  ],
  post: [
    - Il Sistema conosce la soglia minima da impostare.
  ],
  scenari: [
    - L'Admin inserisce il valore della soglia minima desiderata
  ],
)[]

=== UC49 - Selezione merce <UC49>
#use-case(
  attore: "Admin globale, Admin locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale o locale;
    - L'Attore principale sta eseguendo un'operazione di modifica di una merce
  ],
  post: [
    - Il Sistema conosce la merce sulla quale effettuare l'operazione di modifica;
  ],
  scenari: [
    - L'Attore principale seleziona la merce per cui vuole impostare una soglia minima
  ],
)[#use-case-diagram("49", "UC49 - Selezione merce")]

==== UC50 - Soglia minima non valida <UC50>
#use-case(
  attore: "Admin globale",
  pre: [
    - L'Admin globale accede dal menù alla sezione gestione inventario.
    - L'Admin seleziona la merce per cui vuole impostare una soglia minima.
    - L'Admin inserisce una soglia minima
  ],
  post: [
    - Il Sistema annulla l'operazione.
  ],
  scenari: [
    - L'Admin globale inserisce una soglia minima non valida relativa ad una specifica merce.
  ],
)[#use-case-diagram("50", "UC50 - Soglia minima non valida")]

//Sistema Matteo (su) sistema Marco (giù)
// MARCO

=== UC51 - Aggiunta stock di una merce
#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - La merce selezionata è pre-esistente, ovvero non bisogna farne la creazione
  ],
  post: [
    - Il Sistema registra l'aggiunta di stock a quella determinata merce
  ],
  scenari: [
    - L'Admin Locale seleziona la merce a cui verrà aggiornata la quantità (stock) @UC49[Vedi UC49, Sezione]
    - L'Admin Locale seleziona la quantità da aggiungere a tale merce
  ],
  inclusioni: [
    - UC49 @UC49
    - UC51.1 @UC51.1
  ],
  trigger: "L'Admin Locale vuole aggiornare la quantità (stock) per una determinata merce ",
)[
  #use-case-diagram("51", "UC51 - Aggiunta stock di una merce")
]

Il Caso d'Uso 51 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("51-incl","Inclusioni del Caso d'Uso n.51: UC49 e UC51.1")
L'UC49 è consultabile alla @UC49, UC51.1 sarà invece ora esposto.

=== UC51.1 - Seleziona q.tà da aggiungere alla merce esistente <UC51.1>
#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - l'Admin locale ha avviato un'operazione di aggiornamento dello stock di una merce
  ],
  post: [
    - Il Sistema conosce la quantità di stock da aggiungere
  ],
  scenari: [
    - L'Admin locale seleziona la quantità da aggiungere.
  ],
)[]

=== UC52 - Creazione merce

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - La merce che verrà creata non può essere in nessun modo già esistente all'interno del Sistema
  ],
  post: [
    - Il Sistema registra la creazione di una nuova merce
    - Il Sistema comunica all'Admin Globale la corretta esecuzione del processo di creazione
    - Il Sistema comunica a tutti i magazzini locali la creazione di una nuova merce
  ],
  scenari: [
    - L'Admin Globale seleziona l'opzione di creazione di una nuova merce nel sistema dal menù principale;
    - L'Admin Globale inserisce il nome della nuova merce $arrow$ @UC53[Vedi UC53, Sezione]
    - L'Admin Globale inserisce la descrizione della nuova merce $arrow$ @UC54[Vedi UC54, Sezione]
  ],
  inclusioni: [
    - UC53 @UC53
    - UC54 @UC54
  ],
  trigger: "L'Admin Globale vuole aggiungere al Sistema una nuova merce tramite il processo di creazione",
)[
  #use-case-diagram("52", "UC52 - Creazione di una nuova merce")
]

Il Caso d'Uso 52 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("52-incl","Inclusioni del Caso d'Uso n.52: UC53 e UC54")
Saranno di seguito esposti.

=== UC53 - Inserimento nome merce <UC53>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta eseguendo un'operazione di creazione di una nuova merce o di modifica di una esistente
  ],
  post: [
    - Il Sistema conosce il nome da assegnare alla merce
  ],
  scenari: [
    - L'Admin globale inserisce il nome da assegnare alla nuova merce
  ],
)[#use-case-diagram("53", "UC53 - Inserimento nome merce")]

=== UC54 - Inserimento descrizione merce <UC54>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta eseguendo un'operazione di creazione di una nuova merce
  ],
  post: [
    - Il Sistema conosce la descrizione da assegnare alla merce
  ],
  scenari: [
    - L'Admin globale inserisce la descrizione da assegnare alla nuova merce
  ],
)[#use-case-diagram("54", "UC54 - Inserimento descrizione merce")]

=== UC55 - Aggiornamento informazioni di una merce
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - L'Utente è riconosciuto come Admin Globale
  ],
  post: [
    - il Sistema registra il cambiamento effettuato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla modifica di una merce esistente
    - L'Admin globale seleziona la merce da modificare @UC49[Vedi UC49, Sezione]
    - l'Admin Globale seleziona il nome da assegnare @UC53[Vedi UC53, Sezione]
    - l'Admin Globale seleziona la descrizione da assegnare @UC54[Vedi UC54, Sezione]
  ],
  inclusioni: [
    - UC49 @UC49
    - UC53 @UC53
    - UC54 @UC54
  ],
  trigger: "L'Admin globale vuole modificare le informazioni di una merce nel Sistema",
)[
  #use-case-diagram("55", "UC55 - Aggiornamento informazioni di una merce")
]

Il Caso d'Uso 55 include tre ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("55-incl","Inclusioni del Caso d'Uso n.55: UC49, UC53 e UC54").
Sono stati esposti alla @UC49, @UC53 e alla @UC54 rispettivamente.

=== UC56 - Visualizza elenco ordini eseguiti

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato l'elenco degli ordini eseguiti],
  scenari: [
    - Il Cliente seleziona dal menu la voce relativa alla visualizzazione degli ordini eseguiti registrati nel Sistema
    - Il Cliente visualizza a schermo la lista degli ordini eseguiti registrati nel Sistema $arrow$ @UC56.1[Vedi UC56.1, Sezione]
  ],
  inclusioni: [
    - UC56.1 @UC56.1
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini eseguiti registrati nel Sistema per l'utente corrente",
)[#use-case-diagram("56", "UC56 - Visualizza elenco ordini eseguiti")]

Il Caso d'Uso UC51 include cinque ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("56-incl", "Inclusioni del Caso d'Uso n.56: UC56.1").
Tale Caso d'Uso e relative inclusioni saranno ora esposte (salvo non siano già state esposte precedentemente).

==== UC56.1 - Visualizza singolo elemento lista ordini eseguiti <UC56.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini eseguiti registrati nel Sistema per l'utente corrente
  ],
  post: [Per ogni elemento della lista degli ordini eseguiti viene visualizzato ID, data e nome dell'ordine],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - l'ID dell'ordine $arrow$ @UC13[Vedi UC13, Sezione]
      - La data di creazione dell'ordine $arrow$ @UC14[Vedi UC14, Sezione]
      - Il nome dell'ordine $arrow$ @UC15[Vedi UC15, Sezione]
  ],
  inclusioni: [
    - UC13 @UC13
    - UC14 @UC14
    - UC15 @UC15
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini eseguiti registrati nel Sistema per l'utente corrente",
)[]

=== UC57 - Visualizza ordine eseguito

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato un ordine eseguito con le segeuenti infromazioni: ID, data creazione, nome e lista delle merci di tale ordine],
  scenari: [
    - Il Cliente ha selezionato da una lista di ordini eseguiti la visualizzazione di un ordine specifico
    - Il Cliente visualizza del suddetto ordine:
      - ID dell'ordine $arrow$ @UC13[Vedi UC13, Sezione]
      - Data creazione dell'ordine eseguito $arrow$ @UC14[Vedi UC14, Sezione]
      - Nome dell'ordine $arrow$ @UC15[Vedi UC15, Sezione]
      - Lista delle merci $arrow$ @UC57.1[Vedi UC57.1, Sezione]
  ],
  inclusioni: [
    - UC13 @UC13
    - UC14 @UC14
    - UC15 @UC15
    - UC57.1 @UC57.1
  ],
  trigger: "Il Cliente vuole vedere un ordine eseguito specifico registrato nel Sistema per l'utente corrente",
)[#use-case-diagram("57", "UC57 - Visualizza ordine eseguito", width: 60%)]

Il Caso d'Uso UC57 include cinque ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("57-incl", "Inclusioni del Caso d'Uso n.57: UC13, UC14, UC15, UC57.1 e relative inclusioni")
Per maggiori informazioni sui Casi d'Uso 13, 14 e 15 si rimanda alle rispettive descrizioni (@UC13, @UC14 e @UC15), mentre per il Caso d'Uso UC57.1 sarà qui di seguito descritto assieme ai Casi d'Uso che lo stesso a sua volta include.

==== UC57.1 - Visualizza lista merci ordine eseguito <UC57.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la lista delle merci in un ordine eseguito],
  scenari: [
    - Il Cliente visualizza a schermo la lista della merce aggiunta all'ordine eseguito selezionato $arrow$ @UC57.1.1[Vedi UC57.1.1, Sezione]
  ],
  inclusioni: [
    - UC52.1.1 @UC57.1.1
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini eseguiti la lista delle merci che tali ordini contengono",
)[]

===== UC57.1.1 - Visualizza singolo elemento lista merci ordine eseguito <UC57.1.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un elenco di merci di un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Per ogni elemento della lista delle merci di un ordine eseguito viene mostrata quantità e nome della merce],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - Quantità di quella merce nell'ordine eseguito selezionato $arrow$ @UC57.1.1.1[Vedi UC57.1.1.1, Sezione]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sezione]
  ],
  inclusioni: [
    - UC57.1.1.1 @UC57.1.1.1
    - UC17 @UC17
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini eseguiti la lista delle merci che tali ordini contengono",
)[]

====== UC57.1.1.1 - Visualizza q.tà elemento lista merci ordine eseguito <UC57.1.1.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la quantità della singola merce],
  scenari: [
    - Viene visualizzata la quantità della singola merce nell'ordine eseguito selezionato
  ],
)[]

/*
APPUNTI VARI
Invio SMS, E-Mail e notifiche interne da parte del BE. -> opzionale ma fatto dal BE. Le notifiche sono già state modellate.
L'attore potrebbe essere un dispositivo GSM e un client Email che riceve la notifica, questo rivolterebbe effettivamente il fatto di esser fatto dal BE
Legato a questo c'è il fatto che l'Admin Locale e quello Globale vogliono registrare un Sistema GSM e un client email presso il Sistema

I requisiti del BE sono più di aggiornamento e l'attore potrebbe essere uno scheduler. Esempi sono aggiorna informazioni merci disponibili, aggiorna informazioni notifiche rifornimento, aggiorna elenco transazioni (ordini/trasferimenti) non completate, invia conferma ordini, invia conferma transazioni (ordini/trasferimenti), invia notifica email, invia notifica sms, crea backup regolare ecc.
*/

=== UC58 - Creazione Backup

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema crea un Backup dei dati localmente presenti nel Sistema;
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa alla creazione di un Backup;
  ],
  trigger: "L'Admin Locale vuole creare un Backup del Sistema",
)[]

=== UC59 - Attiva Backup periodico //include selezione ogni quanto fare il backup

#use-case(
  attore: "Admin Locale",
  attori_secondari: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - Non sono presenti altri Backup periodici attivi
  ],
  post: [
    - Il Sistema comunica allo Scheduler la scelta dell'Admin Locale di realizzare periodicamente un Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa all'attivazione di un Backup periodico;
    - L'Admin Locale inserisce la periodicità $arrow$ @UC59.1[Vedi UC59.1, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin Locale vuole attivare un Backup periodico ma la periodicità inserita non è valida $arrow$ @UC60
  ],
  inclusioni: [
    - UC59.1 @UC59.1
  ],
  estensioni: [
    - UC60 @UC60
  ],
  trigger: "L'Admin Locale vuole attivare un Backup periodico del Sistema",
)[]

==== UC59.1 - Selezione periodicità Backup periodico <UC59.1>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di attivare un Backup periodico
  ],
  post: [
    - Il Sistema conosce la periodicità del Backup periodico;
  ],
  scenari: [
    - L'Admin Locale inserisce la periodicità (in ore) del Backup;
  ],
)[]

=== UC60 - Periodicità non valida <UC60>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di attivare un Backup periodico
    - L'Admin Locale ha immesso una periodicità non valida (ad esempio negativa)
  ],
  post: [
    - Il Sistema annulla l'operazione di attivazione di un Backup periodico
  ],
  scenari: [
    - Il Sistema ha ricevuto la periodicità inserita dall'Admin Locale, ma questa non è valida (ad esempio perché negativa)
  ],
)[]

=== UC61 - Elimina Backup periodico

#use-case(
  attore: "Admin Locale",
  attori_secondari: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema comunica allo Scheduler la scelta dell'Admin Locale di non realizzare periodicamente un Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa all'eliminazione di un Backup periodico;
  ],
  scenari_alternativi: [
    - L'Admin Locale vuole attivare un Backup periodico ma nessun Backup periodico è attivo $arrow$ @UC62
  ],
  estensioni: [
    - UC62 @UC62
  ],
  trigger: "L'Admin Locale vuole eliminare il Backup periodico del Sistema",
)[]

=== UC62 - Nessun Backup periodico attivo <UC62>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di disattivare il Backup periodico
  ],
  post: [
    - Il Sistema annulla l'operazione di eliminazione del Backup periodico
  ],
  scenari: [
    - Il Sistema ha ricevuto la richiesta di disattivazione del Backup periodico, ma nessun Backup periodico è attivo
  ],
)[]

=== UC63 - Ripristino dati da utlimo Backup effettuato

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema avvia il ripristino del Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa al ripristino dell'ultimo Backup effettuato;
  ],
  scenari_alternativi: [
    - L'Admin Locale ha selezionato dal menu principale l'opzione relativa al ripristino dell'ultimo Backup effettuato, ma nessun Backup è presente $arrow$ UC64[Vedi UC64, Sezione];
  ],
  estensioni: [
    - UC64 @UC64
  ],
  trigger: "L'Admin Locale vuole ripristinare il Sistema all'ultimo Backup effettuato",
)[]

=== UC64 - Errore nessun Backup trovato <UC64>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di ripristiare l'ultimo Backup effettuato
    - Non è presente alcun Backup
  ],
  post: [
    - Il Sistema annulla l'operazione di ripristino dell'ultimo Backup effettuato
  ],
  scenari: [
    - Il Sistema ha ricevuto la richiesta di ripristino dell'ultimo Backup effettuato da parte dell'Admin Locale, ma non esiste alcun Backup
  ],
)[]

=== UC65 - Visualizzazione elenco attività di accesso

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - L'Admin Globale visualizza la lista delle attività di accesso
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla visualizzazione delle attività di accesso
    - L'Admin Globale visualizza a schermo la lista delle attività di accesso $arrow$ @UC65.1[Vedi UC65.1 Sezione]
  ],
  inclusioni: [
    - UC65.1 @UC65.1
  ],
  trigger: "L'Admin Globale vuole visualizzare le attività di accesso",
)[]

==== UC65.1 - Visualizza elemento lista attività di accesso <UC65.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Il Sistema mostra, per ogni elemento della lista della attività di accesso, indirizzo IP del luogo di accesso, ID del tentativo di accesso e stato dell'accesso (riuscito, bloccato o negato)
  ],
  scenari: [
    - Ogni elemento della lista delle attività di accesso deve presentare:
      - Indirizzo IP del luogo di accesso @UC65.1.1[Vedi UC65.1.1 Sezione]
      - ID del tentativo di accesso @UC65.1.2[Vedi UC65.1.2 Sezione]
      - Stato dell'accesso @UC65.1.3[Vedi UC65.1.3 Sezione]
  ],
  inclusioni: [
    - UC65.1.1 @UC65.1.1
    - UC65.1.2 @UC65.1.2
    - UC65.1.3 @UC65.1.3
  ],
)[]

===== UC65.1.1 - Visualizza indirizzo IP luogo di connessione tentativo di accesso <UC65.1.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato l'indirizzo IP del luogo in cui è stato effettuato il tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato l'indirizzo IP del luogo in cui è stato effettuato il tentativo di accesso
  ],
)[]

===== UC65.1.2 - Visualizza ID tentativo di accesso <UC65.1.2>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato l'ID del tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato l'ID del tentativo di accesso
  ],
)[]

===== UC65.1.3 - Visualizza stato tentativo di accesso <UC65.1.3>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato lo stato del tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato lo stato del tentativo di accesso (riuscito, bloccato o negato)
  ],
)[]

=== UC66 - Blocca tentativo di accesso

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema blocca l'indirizzo IP da cui è stato effettuato il tentativo di accesso selezionato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa al blocco di una attività di accesso
    - L'Admin Globale inserisce l'ID del tentativo di accesso il cui indirizzo IP deve essere bloccato $arrow$ @UC66.1[Vedi UC66.1 Sezione]
  ],
  inclusioni: [
    - UC65.1 @UC66.1
  ],
  trigger: "L'Admin Globale vuole annullare un tentativo di accesso",
)[]

==== UC66.1 - Inserisci ID tentativo di accesso da bloccare <UC66.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato di voler bloccare un tentativo di accesso
  ],
  post: [
    - Il Sistema conosce l'ID del tentativo di accesso il cui indirizzo IP deve essere bloccato
  ],
  scenari: [
    - L'Admin Globale inserisce l'ID del tentativo di accesso il cui indirizzo IP deve essere bloccato
  ],
)[]

=== UC67 - Ricezione Email notifica

=== UC68 - Ricezione SMS notifica

=== UC69 - Aggiungi utente //include inserisci nome utente, inserisci psw utente, inserisci ruolo utente

==== UC69.1 - Inserisci nome nuovo utente

==== UC69.2 - Inserisci password nuovo utente

=== UC70 Inserisci ruolo utente

=== UC71 - Elimina utente

=== UC72 - Seleziona nome utente

=== UC73 - Modifica ruolo utente //include seleziona utente, inserisci ruolo utente

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
  caption: [Requisiti funzionali],
)
== Requisiti di Qualità
== Requisiti di Vincolo

= Informazioni di supporto
== Tabella dei contenuti
#lorem(10)


