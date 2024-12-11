#import "../../lib/importantdocs.typ": *
#import "../../lib/use-case.typ": *
#let ver = [0.7.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.7.0",
      date: datetime(day: 10, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Completato fino ad UC15",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 09, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Aggiunti Casi d'Uso sino a UC13 e relative inclusioni ed estensioni. Impostazione UC14.",
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
      descr: "Redazione Capitolo 2 e Sezioni 3.1 e 3.2. Aggiunti UC1, UC1.1, UC1.2, UC1.3 e UC2",
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

Il presente documento di _Analisi dei Requisiti_ ha lo scopo di definire in maniera precisa e dettagliata i requisiti funzionali e non funzionali del sistema software da sviluppare.\
Esso rappresenterà il riferimento di base per la progettazione, l'implementazione e il collaudo del prodotto finale, garantendo che il sistema realizzato soddisfi pienamente le esigenze e le aspettative del committente. \
I requisiti identificati sono classificati in:
- Obbligatori: irrinunciabili e imprescindibili per il corretto funzionamento del sistema;
- Desiderabili: non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;
- Opzionali: relativamente utili oppure contrattabili per essere implementati in futuro.

Il documento di _Analisi dei Requisiti_ viene redatto dagli _Analisti_ del team di progetto ed è rivolto ai seguenti principali destinatari:

- Il _Committente_, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le sue specifiche;
- Il _Team di Progettisti e di Programmatori_, che utilizzerà questo documento come guida fondamentale per la realizzazione del sistema software;
- Il Team di _Verificatori_, che baserà sull'Analisi dei Requisiti la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

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
Il presente documento analizza in modo dettagliato ed esaustivo i requisiti emersi dal capitolato C6 _Sistema di Gestione di un Magazzino Distribuito_ e dalla fase di contrattazione con il committente _M31_.

Include una descrizione approfondita dei casi d'uso, dei requisiti obbligatori, desiderabili e opzionali, nonché delle funzionalità previste per il sistema.

Verranno utilizzati, per agevolare la comprensione, i *Diagrammi dei Casi d'Uso* per visualizzare le interazioni tra attori e sistema;

A supporto di una consultazione rapida e intuitiva, è stata inoltre predisposta una tabella dei contenuti, che consente di:

- Associare ciascun requisito al relativo caso d'uso;
- Risalire alla fonte originaria di ogni requisito;
- Comprendere immediatamente il contesto e l'importanza di ciascun elemento.

La struttura del documento mira a garantire trasparenza, tracciabilità e comprensione condivisa tra tutti i soggetti coinvolti nel progetto.

#pagebreak()
= Descrizione generale
== Prospettiva del prodotto
Il prodotto che _ALimitedGroup_ si promette di sviluppare è un sistema efficace e scalabile per la gestione di magazzini.

Nello specifico, si vuole sviluppare un sistema che sia in grado non solo di gestire un magazzino locale, ma che sia in grado di avere in tempo reale una visione globale di tutti i magazzini connessi al Sistema.
Per questo è necessario che il prodotto sia reattivo alle molteplici operazioni effettuate in ogni magazzino, potendo, in caso di carico molto importante, scalare i propri servizi per essere in grado di mantenere la reattività.
fondamentale per il prodotto è la fornitura agli utilizzatori di consigli di approvvigionamento merci e la messa a disposizione di opzioni dedicate al trasferimento di merci tra magazzini connessi al Sistema.
== Funzioni del prodotto
Dal punto di vista dell'utilizzatore finale, il prodotto dovrà fornire le seguenti funzionalità:

- Avere una _Command Line Interface_ per interagire con le _API_ del sistema
- Possibilità di realizzare un ordine con prodotti disponibili sia localmente che globalmente;
- Possibilità di realizzare trasferimenti tra magazzini;
- Possibilità di ricevere suggerimenti di riassortimento quando la disponibilità locale di merce sia sotto una certa soglia;
- Possibilità di modifica della soglia per il riassortimento per ogni merce;
- Possibilità di esportare gli ordini e i report di inventario;
- Possibilità di visualizzare in tempo reale il numero di richieste per ogni Servizio del sistema;


Rispetto a quanto originariamente scritto nel #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Capitolato*] i requisiti obbligatori sono stati rimodulati in base a quanto riportato nel #link("https://alimitedgroup.github.io/VE%2019-11-2024%20v1.0.0.pdf")[*Verbale Esterno*] del *19 Ottobre 2024*. Nello specifico non sono più obbligatori:

- Il riassortimento predittivo basato su _Machine Learning_;
- Il monitoraggio della telemetria;
- Il riconoscimento di traffico anomalo;
- La creazione di una _Graphic User Interface_ (a vantaggio di _API_ con la quale la _Command Line Interface_ dovrà interagire)

Nel seguente documento saranno comunque riportati tutti i requisiti, debitamente segnando a mezzo di nomenclatura i requisiti obbligatori, desiderabili e opzionali.

== Caratteristiche dell'utente

Gli utilizzatori finali del prodotto non sono specifici: l'obiettivo è soprattutto quello di fornire una progettazione efficace che permetta al proponente #M31 di sviluppare il prodotto in maniera definitiva.

In generale è possibile dire che gli Utenti finali sono tutti coloro che hanno bisogno di un sistema scalabile, reattivo e semplice da utilizzare per la gestione di numerosi magazzini, principalmente dunque medie e grandi imprese.

= Casi d'uso
== Introduzione

I casi d'uso si compongono di un grafico UML e una descrizione testuale che permetta di comprendere al meglio cosa il prodotto deve fornire.
La descrizione testuale, in particolar modo, dovrà contenere le informazioni nella tabella qui presente, salvo i casi in cui lo specifico campo non risulti irrilevante per il caso d'uso (ad esempio, un Caso d'Uso che non prevede la possibilità di errori non avrà Scenari secondari):

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

    [*Scenario principale*],
    [Descrizione ragionevole delle operazioni che l'attore deve fare per compiere l'azione descritta dal Caso d'Uso],

    [*Scenario secondario*],
    [Descrizione ragionevole degli eventi che possono accadere qualora una delle operazioni descritte nello *Scenario principale* non vada a buon fine],

    [*Inclusioni*],
    [Casi d'Uso ulteriori che l'Attore deve compiere per realizzare il Caso d'Uso attualmente descritto],

    [*Estensioni*],
    [Casi d'Uso ulteriori che possono realizzarsi durante l'esecuzione delle operazioni del Caso d'Uso principale],

    [*Trigger*], [Motivazioni che portano l'Attore a svolgere l'azione descritta dal Caso d'Uso],
  ),
  caption: [Campi della descrizione testuale dei Casi d'Uso],
)
#pagebreak()
== Attori

Di seguito sono esposti gli attori utilizzati:
#v(1em)

#figure(
  image("../../assets/diagrams/attori.svg", width: 50%),
  caption: [Diagramma degli attori],
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
  caption: [Attori],
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
Il Caso d'Uso UC1 include tre ulteriori _use-case_ come raffigurato nella seguente immagine:
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
    - L'attore principato ha scelto di accedere al sistema, ovvero ha selezionato di essere riconosciuto come Admin globale, Admin locale o Cliente
    - L'attore principale non è autenticato al sistema (@UC1[Vedi UC1 Sezione])
    - L'attore principale ha immesso uno Username o una password non corretta oppure ha selezionato una tipologia di utente sbagliata],
  post: [- Il Sistema annulla il tentativo di autenticazione],
  scenari: [
    - Il Sistema ha ricevuto Username, Password e tipologia di utente ma non è riuscito a verificare tali credenziali
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

=== UC4 - Aggiunta di una merce ad un ordine non confermato
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
    - Il Cliente seleziona la tipologia di merce da aggiungere all'ordine non confermato $arrow$ @UC4.1[Vedi UC4.1 Sezione]
    - Il Cliente seleziona la quantità di tale merce da aggiungere all'ordine non confermato $arrow$ @UC4.2[Vedi UC4.2 Sezione]
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di aggiunta $arrow$ @UC7[Vedi UC7 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente seleziona una merce non valida e/o una quantità non disponibile $arrow$ @UC5[Vedi UC5 Sezione]
    - Il Cliente cerca di aggiungere merce ad un ordine non confermato ma nessun ordine non confermato è registrato nel sistema per l'utente corrente $arrow$ @UC6[Vedi UC6 Sezione]
  ],
  inclusioni: [
    - UC4.1 @UC4.1
    - UC4.2 @UC4.2
    - UC7 @UC7
  ],
  estensioni: [
    - UC5 @UC5
    - UC6 @UC6
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine non confermato",
)[
  #use-case-diagram("4", "UC4 - Aggiunta di una merce ad un ordine non confermato")
]

Il Caso d'Uso UC4 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("4-incl", "Inclusioni del Caso d'Uso n.4: UC4.1, UC4.2, UC7")

==== UC4.1 - Seleziona merce da aggiungere all'ordine non confermato <UC4.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu di voler aggiungere merce ad un ordine non confermato
    - Il Sistema non conosce la merce che il Cliente vuole aggiungere all'ordine non confermato
  ],
  post: [
    - Il Sistema riceve la tipologia di merce da aggiungere all'ordine non confermato
  ],
  scenari: [
    - L'utente procede ad inserire la tipologia di merce che vuole aggiungere all'ordine
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine non confermato",
)[]

==== UC4.2 - Seleziona quantità merce da aggiungere all'ordine non confermato <UC4.2>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu di voler aggiungere merce ad un ordine non confermato
    - Il Sistema non conosce la quantità della tipologia di merce che il Cliente vuole aggiungere all'ordine non confermato
  ],
  post: [
    - Il Sistema riceve la quantità della tipologia di merce merce da aggiungere all'ordine non confermato
  ],
  scenari: [
    - L'utente procede ad inserire la quantità della tipologia di merce che vuole aggiungere all'ordine
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine non confermato",
)[]

=== UC5 - Aggiunta merce non valida <UC5>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha eseguito l'operazione di aggiunta di una merce ad un ordine non confermato
  ],
  post: [
    - L'operazione di aggiunta di una merce ad un ordine non confermato viene annullata
  ],
  scenari: [
    - Il Cliente ha scelto la tipologia di merce da aggiungere all'ordine non confermato, la quantità e l'ordine a cui aggiungere tale merce ma il Sistema ha verificato che la merce selezionata non esiste o eccede la quantità disponibile
  ],
)[]

=== UC6 - Nessun ordine non confermato disponibile <UC6>

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


=== UC7 - Seleziona ordine non confermato <UC7>

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

=== UC8 - Cancella ordine non confermato

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
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di cancellazione $arrow$ @UC7[Vedi UC7 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di cancellare un ordine non confermato ma nessun ordine non confermato è registrato nel sistema per l'utente corrente $arrow$ @UC6[Vedi UC6 Sezione]
  ],
  inclusioni: [
    - UC7 @UC7
  ],
  estensioni: [
    - UC6 @UC6
  ],
  trigger: "Il Cliente vuole cancellare un ordine non confermato",
)[
  #use-case-diagram("8", "UC8 - Cancella ordine non confermato")
]

Il Caso d'Uso UC8 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("8-incl", "Inclusione del Caso d'Uso n.8: UC7")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC7.

=== UC9 - Conferma ordine non confermato

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema conferma un ordine non confermato registrato nel Sistema
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla conferma di un ordine non confermato
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di conferma $arrow$ @UC7[Vedi UC7 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di confermare un ordine non confermato ma la merce selezionata non esiste più oppure la quantità immessa eccede le risorse a disposizione $arrow$ @UC5[Vedi UC5 Sezione]
    - Il Cliente cerca di confermare un ordine non confermato ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC6[Vedi UC6 Sezione]
  ],
  inclusioni: [
    - UC7 @UC7
  ],
  estensioni: [
    - UC5 @UC5
    - UC6 @UC6
  ],
  trigger: "Il Cliente vuole confermare un ordine non confermato",
)[
  #use-case-diagram("9", "UC9 - Conferma ordine non confermato")
]

Il Caso d'Uso UC9 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("9-incl", "Inclusione del Caso d'Uso n.9: UC7")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC7.

=== UC10 - Visualizza elenco ordini non confermati

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  scenari: [
    - Il Cliente seleziona dal menu la voce relativa alla visualizzazione degli ordini non confermati registrati nel Sistema
    - Il Cliente visualizza a schermo la lista degli ordini non confermati registrati nel Sistema $arrow$ @UC10.1[Vedi UC10.1 Sezione]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di visualizzare gli ordine non confermati ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC6[Vedi UC6 Sezione]
  ],
  inclusioni: [
    - UC10.1 @UC10.1
  ],
  estensioni: [
    - UC6 @UC6
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[
  #use-case-diagram("10", "UC10 - Visualizza elenco ordini non confermati")
]

Il Caso d'Uso UC10 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("10-incl", "Inclusione del Caso d'Uso n.10: UC10.1")
Il presente Caso d'Uso presenta inoltre ulteriori due inclusioni, anch'esse qui di seguito descritte.

==== UC10.1 - Visualizza elemento lista ordini non confermati <UC10.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini non confermati registrati nel Sistema per l'utente corrente
  ],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - l'ID dell'ordine $arrow$ @UC11[Vedi UC11 Sezione]
      - La data di creazione dell'ordine $arrow$ @UC12[Vedi UC12 Sezione]
      - Il nome dell'ordine $arrow$ @UC13[Vedi UC13 Sezione]
  ],
  inclusioni: [
    - UC11 @UC11
    - UC12 @UC12
    - UC13 @UC13
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[]

=== UC11- Visualizza ID ordine <UC11>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzato l'ID dell'ordine
  ],
)[]

=== UC12 - Visualizza data creazione ordine <UC12>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzato la data di creazione dell'ordine
  ],
)[]

=== UC13 - Visualizza nome ordine <UC13>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzato il nome dell'ordine
  ],
)[]

=== UC14 - Visualizza ordine non confermato

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  scenari: [
    - Il Cliente ha selezionato da una lista di ordini non confermati la visualizzazione di un ordine specifico
    - Il Cliente visualizza del suddetto ordine:
      - ID dell'ordine $arrow$ @UC11[Vedi UC11 Sezione]
      - Data creazione dell'ordine non confermato $arrow$ @UC12[Vedi UC12 Sezione]
      - Nome dell'ordine $arrow$ @UC13[Vedi UC13 Sezione]
      - Lista delle merci $arrow$ @UC14.1[Vedi UC14.1 Sezione]
  ],
  inclusioni: [
    - UC11 @UC11
    - UC12 @UC12
    - UC13 @UC13
    - UC14.1 @UC14.1
  ],
  trigger: "Il Cliente vuole vedere un ordine non confermato specifico registrato nel Sistema per l'utente corrente",
)[
  #use-case-diagram("14", "UC14 - Visualizza ordine non confermato")
]

Il Caso d'Uso UC14 include ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("14-incl", "Inclusione del Caso d'Uso n.14: UC11, UC12, UC13, UC14.1")
Per maggiori informazioni sui Casi d'Uso 11, 12 e 13 si rimanda alle rispettive descrizioni (@UC11, @UC12 e @UC13), mentre per il Caso d'Uso 14.1 sarà qui di seguito descritto assieme ai Casi d'Uso che lo stesso a sua volta include.

==== UC14.1 - Visualizza lista merce ordine non confermato <UC14.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  scenari: [
    - Il Cliente visualizza a schermo la lista della merce aggiunta all'ordine non confermato selezionato $arrow$ @UC14.1.1[Vedi UC14.1.1 Sezione]
  ],
  inclusioni: [
    - UC 14.1.1 @UC14.1.1
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

==== UC14.1.1 - Visualizza elemento lista merce ordine non confermato <UC14.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un elenco di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - Quantità di quella merce nell'ordine non confermato selezionato $arrow$ @UC14.1.1.1[Vedi UC14.1.1.1 Sezione];
      - Nome della merce $arrow$ @UC15[Vedi UC15 Sezione];
  ],
  inclusioni: [
    - UC14.1.1.1 @UC14.1.1.1
    - UC15 @UC15
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

==== UC14.1.1.1 - Visualizza quantità singola merce nell'ordine non confermato <UC14.1.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzata la quantità della singola merce nell'ordine non confermato selezionato
  ],
)[]

=== UC15 - Visualizza nome merce <UC15>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzata il nome della singola merce nell'ordine non confermato selezionato
  ],
)[]

// TODO: definire numero UC da qui in poi

// LORIS
=== UC - Visualizzazione ordini eseguiti


==== UC - Visualizza elemento ordine eseguito


=== UC - Visualizzazione dettaglio ordine


==== UC - Visualizzazione merci di un ordine


==== UC - Visualizza stato delle merci di un ordine


==== UC - Visualizza la lista delle merci


=== UC - Visualizzazione dettaglio merce


==== UC - Visualizza lo stock totale di una merce


==== UC - Visualizza stock di una merce per magazzino


=== UC - Aggiunta di una merce


=== UC - Aggiornamento informazioni di una merce


=== UC - Eliminazione di una merce


// EMANUELE

=== UC - Trasferimento merce

// Questi erano di Sara, credo vada integrato il tutto con il lavoro di Emanuele
=== UC - Selezione degli oggetti per il trasferimento


=== UC - Selezione del magazzino di destinazione


=== UC - Conferma del trasferimento


=== UC - Visualizza l'elenco dei trasferimenti


=== UC - Visualizza il singolo trasferimento


==== UC - Visualizza id trasferimento


==== UC - Visualizza stato trasferimento


==== UC - Visualizza elenco merci trasferimento


=== UC - Visualizza singolo prodotto


=== UC - Conferma un ordine di trasferimento


// MATTEO

=== UC - Visualizza elenco notifiche rifornimento


==== UC - Errore nessuna notifica di rifornimento


==== UC - Visualizza singola notifica


===== UC - Visualizza stato notifica rifornimento


===== UC - Visualizza ID notifica rifornimento


=== UC - Visualizza singola notifica rifornimento


==== UC - Visualizza elenco merce da riassortire


===== UC - Visualizza singola merce da rifornire


====== UC - Visualizza ID merce


====== UC - Visualizza nome merce


====== UC - Visualizza quantità merce


===== UC - Accetta notifica di rifornimento


===== UC - Rifiuta notifica di rifornimento


==== UC - Seleziona notifica di rifornimento


=== UC - Mostra lista dei microservizi


==== UC - Visualizza singolo elemento microservizi


===== UC - Visualizza numero di richieste al secondo


// SARA

=== UC - Esportazione ordini


=== UC - Esportazione report inventario


=== UC - Creazione di una soglia minima per una merce


==== UC - Soglia minima non valida


// MARCO

=== UC - Aggiunta stock di una merce



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


