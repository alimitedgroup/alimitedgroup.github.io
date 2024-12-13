#import "../../lib/importantdocs.typ": *
#import "../../lib/use-case.typ": *
#let ver = [0.12.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
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

Vengono inoltre utilizzati i seguenti attori secondari:

#figure(
  image("../../assets/diagrams/LLM - Actor.svg", width: 6%),
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
    - UC14.1.1.2 @UC14.1.1.2
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

=== UC14.1.1.2 - Visualizza stato singola merce nell'ordine <UC14.1.1.2>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine registrato nel Sistema per l'utente corrente
  ],
  scenari: [
    - Viene visualizzato lo stato della singola merce nell'ordine selezionato
  ],
)[]

=== UC15 - Visualizza nome merce <UC15>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin Globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  scenari: [
    - Viene visualizzata il nome della singola merce
  ],
)[]


// TODO: definire numero UC da qui in poi

// LORIS

=== UC - Visualizza la lista delle merci
#use-case(
  attore: "Cliente",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - Il Cliente deve essere autenticato nella dashboard
  ],
  scenari: [
    - Il Cliente visualizza a schermo la lista delle merci presenti nel catalogo
  ],
  inclusioni: [
    - UC Visualizza elemento lista delle merci
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci presenti nel Sistema",
)[
  #use-case-diagram("x-lista_merci", "UCx - Visualizza lista delle merci")
]

==== UC - Visualizza elemento lista delle merci
#use-case(
  attore: "Cliente",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - Il Cliente deve essere autenticato nella dashboard
  ],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
    - il nome della merce $arrow$ UC Visualizza nome di una merce
    - lo stock totale della merce $arrow$ UC Visualizza lo stock totale di una merce
  ],
  inclusioni: [
    - UC Visualizza nome di una merce
    - UC Visualizza lo stock totale di una merce
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci presenti nel Sistema",
)[
  // #use-case-diagram("x-merce", "UCx - Visualizza lista delle merci")
]


=== UC - Visualizza merce
#use-case(
  attore: "Cliente",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - Il Cliente deve essere autenticato nella dashboard
    - Il Cliente ha selezionato una merce
  ],
  scenari: [
    - Il Cliente visualizza a schermo i dettagli della merce selezionata
  ],
  inclusioni: [
    - UC Visualizza lo stock totale di una merce
    - UC Visualizza stock di una merce per magazzino
    - UC Visualizza nome di una merce
    - UC Visualizza descrizione di una merce
  ],
  trigger: "l'utente vuole visualizzare i dettagli di una merce presente nel Sistema",
)[
  #use-case-diagram("x-merce", "UCx - Visualizza merce")
]


==== UC - Visualizza lo stock totale di una merce
#use-case(
  attore: "Cliente",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - Il Cliente deve essere autenticato nella dashboard
    - Il Cliente ha selezionato una merce
  ],
  scenari: [
    - Il Cliente visualizza a schermo lo stock totale della merce selezionata
  ],
  trigger: "l'utente vuole visualizzare lo stock totale di una merce presente nel Sistema",
)[]


==== UC - Visualizza stock di una merce per magazzino
#use-case(
  attore: "Cliente",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - Il Cliente deve essere autenticato nella dashboard
    - Il Cliente ha selezionato una merce
  ],
  scenari: [
    - Il Cliente visualizza a schermo lo stock della merce selezionata per magazzino
  ],
  trigger: "l'utente vuole visualizzare lo stock di una merce per magazzino presente nel Sistema",
)[]


// TODO: siamo sicuri di volerla fare? non è nel capitolato e implementarla è difficile per via della gestione degli ordini in corso
=== UC - Eliminazione di una merce dal catalogo
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - L'Admin globale deve essere autenticato nella dashboard
  ],
  post: [
    - La merce verrà eliminata in tutti i magazzini locali
  ],
  scenari: [
    - L'Admin globale modifica le informazioni di una merce nel catalogo
  ],
  trigger: "L'Admin globale vuole modificare le informazioni di una merce nel catalogo",
)[]


// EMANUELE

// #### TODO: VERIFICARE NUMERO UC ####

=== UCea - Creazione di un trasferimento
<UCea>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù di voler creare un nuovo trasferimento
  ],
  post: [
    - Il Sistema memorizza l'esistenza di un nuovo trasferimento non confermato con le relative informazioni (identificativo viene fornito dal Sistema)
  ],
  scenari: [
    - L'Admin globale seleziona dal menù principale l'opzione relativa alla creazione di un nuovo trasferimento da confermare
    - L'Admin globale inserisce l'identificativo del magazzino destinatario del nuovo trasferimento da confermare $arrow$ @UCea.1[Vedi UCe.1 Sezione]
  ],
  trigger: [L'Admin globale vuole creare un nuovo trasferimento da confermare],
  inclusioni: [
    - UCe.1 @UCea.1
  ],
)[
  #use-case-diagram("ea-creazione-trasferimento", "UCea - Creazione di un trasferimento")
]



// Questi erano di Sara, credo vada integrato il tutto con il lavoro di Emanuele
==== UCea.1 - Selezione del magazzino di destinazione
<UCea.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menù di voler creare un nuovo trasferimento
    - Il Sistema non conosce l'indirizzo di spedizione del nuovo trasferimento
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino destinatario del nuovo trasferimento
  ],
  scenari: [
    - L'Admin globale procede ad inserire l'identificativo del magazzino destinatario del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin globale vuole creare un nuovo trasferimento da confermare",
)[]


=== UCeb - Selezione merce per il trasferimento
<UCeb>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menù di voler aggiungere merce ad un trasferimento
    - Nel Sistema esiste almeno un trasferimento da confermare
  ],
  post: [
    - La merce desiderata è stata aggiunta ad un trasferimento
  ],
  scenari: [
    - L'Admin globale procede ad aggiungere merce da trasferire in un trasferimento esistente da confermare
  ],
  trigger: "L'Admin globale vuole trasferire oggetti specifici da un magazzino all'altro",
)[
  #use-case-diagram("eb-selezione-trasferimento", "UCeb - Selezione degli oggetti per il trasferimento")
]

=== UCec - Conferma del trasferimento
<UCec>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato dal menù di voler creare un nuovo trasferimento
    - Il Sistema non conosce l'indirizzo di spedizione del nuovo trasferimento
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino destinatario del nuovo trasferimento
  ],
  scenari: [
    - L'Admin globale procede ad inserire l'identificativo del magazzino destinatario del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin globale vuole creare un nuovo trasferimento da confermare",
)[
  #use-case-diagram("ec-conferma-trasferimento", "UCec - Conferma del trasferimento")
]

=== UCed - Visualizza l'elenco dei trasferimenti
<UCed>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù di voler visualizzare ogni trasferimento
  ],
  scenari: [
    - L'Admin globale seleziona dal menù principale l'opzione relativa alla visualizzazione dell'elenco completo dei trasferimenti nel sistema
    - L'Admin globale seleziona un traferimento in particolare dall'elenco per visualizzarne i dettagli $arrow$ @UCed.1[Vedi UCed.1 Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i trasferimenti, a prescindere dallo stato",
  inclusioni: [
    - UCed.1 @UCed.1
  ],
)[
  #use-case-diagram("ed-visualizza-trasferimenti", "UCed - Visualizza l'elenco dei trasferimenti")
]

==== UCed.1 - Visualizza il singolo trasferimento
<UCed.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale seleziona dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza l'id del trasferimento $arrow$ @UCed.1.1[Vedi UCed.1.1 Sezione]
    - L'Admin globale visualizza l'identificativo del magazzino mittente del trasferimento $arrow$ @UCed.1.2[Vedi UCed.1.2 Sezione]
    - L'Admin globale visualizza l'identificativo del magazzino destinatario del trasferimento $arrow$ @UCed.1.3[Vedi UCed.1.3 Sezione]
    - L'Admin globale visualizza lo stato del trasferimento $arrow$ @UCed.1.4[Vedi UCed.1.4 Sezione]
    - L'Admin globale visualizza l'elenco della merce interessata dal trasferimento $arrow$ @UCed.1.5[Vedi UCed.1.5 Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
  inclusioni: [
    - UCed.1.1 @UCed.1.1
    - UCed.1.2 @UCed.1.2
    - UCed.1.3 @UCed.1.3
    - UCed.1.4 @UCed.1.4
    - UCed.1.5 @UCed.1.5
  ],
)[
  #use-case-diagram("ed-visualizza-dettaglio-trasferimento", "UCed.1 - Visualizza il singolo trasferimento")
]

===== UCed.1.1 - Visualizza id trasferimento
<UCed.1.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza l'id del trasferimento
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
)[]

===== UCed.1.2 - Visualizza magazzino mittente trasferimento
<UCed.1.2>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza il magazzino mittente del trasferimento
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
)[]

===== UCed.1.3 - Visualizza magazzino destinatario trasferimento
<UCed.1.3>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza il magazzino destinatario del trasferimento
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
)[]


===== UCed.1.4 - Visualizza stato trasferimento
<UCed.1.4>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza lo stato del trasferimento
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
)[]

===== UCed.1.5 - Visualizza elenco merce trasferimento
<UCed.1.5>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza l'elenco della merce interessata dal trasferimento
    - L'Admin globale visualizza la singola merce $arrow$ @UCed.1.5.1 [Vedi UCed.1.5.1 Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli di un trasferimento",
  inclusioni: [
    - UCed.1.5.1 @UCed.1.5.1
  ],
)[]

====== UCed.1.5.1 - Visualizza singola merce trasferimento
<UCed.1.5.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza l'elenco della merce interessata dal trasferimento
    - L'Admin globale visualizza il nome della singola merce interessata dal trasferimento $arrow$ @UCee [Vedi UCef Sezione]
    - L'Admin globale visualizza la quantità della singola merce interessata dal trasferimento $arrow$ @UCed.1.5.1.1 [Vedi UCed.1.5.1.1 Sezione]
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli della singola merce del trasferimento",
  inclusioni: [
    - UCee @UCee
    - UCed.1.5.1.1 @UCed.1.5.1.1
  ],
)[
  #use-case-diagram("ed-visualizza-singola-merce-trasferimento", "UCed.1.5.1 - Visualizza singola merce trasferimento")
]

======= UCed.1.5.1.1 - Visualizza quantità singola merce trasferimento
<UCed.1.5.1.1>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente ha selezionato dal menù dall’elenco un trasferimento da visualizzare
  ],
  scenari: [
    - L'Admin globale ha selezionato dall'elenco dei trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin globale visualizza l'elenco della merce interessata dal trasferimento
    - L'Admin globale visualizza la quantità della singola merce interessata dal trasferimento
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli della singola merce del trasferimento",
)[]


=== UCee - Visualizza nome merce
<UCee>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L’utente sta visualizzando una merce
  ],
  scenari: [
    - L'Admin globale sta visualizzando una merce
  ],
  trigger: "L'Admin globale vuole visualizzare i dettagli della singola merce",
)[
  #use-case-diagram("ee-nome-merce", "UCee - Visualizza nome merce")
]

// MATTEO

=== UC - Visualizza elenco notifiche rifornimento

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento
    - L'Admin globale visualizza a schermo la lista delle notifiche di rifornimento $arrow$ @UCsingoloelementonot[Vedi UC Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di visualizzare le notifiche di rifornimento ma nessuna notifica è presente $arrow$ @UCerrnessunanotifica[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @UCsingoloelementonot
  ],
  estensioni: [
    - UC @UCerrnessunanotifica
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento",
)[
  #use-case-diagram("M1", "UC Visualizza elenco notifiche rifornimento")
]

=== UC - Nessuna notifica di rifornimento <UCerrnessunanotifica>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale ha selezionato un'opzione relativa alle notifiche di rifornimento
  ],
  scenari: [
    - L'Admin globale ha selezionato un'opzione relativa alle notifiche di rifornimento ma nessuna notifica di rifornimento è disponibile per l'operazione da effettuare
  ],
)[]

Il Caso d'Uso UC include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("M1-incl", "Inclusione del Caso d'Uso n.: UC")
Tale caso d'uso con le rispettive inclusioni saranno analizzati qui di seguito.

==== UC - Visualizza elemento lista notifiche rifornimento <UCsingoloelementonot>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando la lista delle notifiche di rifornimento (scaturite per via della soglia di guardia o per mezzo delle tecnologie di _Machine Learning_)
  ],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dall'Admin globale dovrà contenere:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UCstatonot[Vedi UC, Sezione]
      - L'ID della notifica $arrow$ @UCIDnot[Vedi UC, Sezione]
  ],
  inclusioni: [
    - UC @UCstatonot
    - UC @UCIDnot
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento",
)[]

=== UC - Visualizza stato notifica rifornimento <UCstatonot>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  scenari: [
    - Viene visualizzato lo stato della notifica di rifornimento
  ],
)[]

=== UC - Visualizza ID notifica rifornimento <UCIDnot>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  scenari: [
    - Viene visualizzato l'ID della notifica di rifornimento
  ],
)[]

=== UC - Visualizza elenco notifiche di rifornimento fornite da _Machine Learning_

#use-case(
  attore: "Admin globale",
  attori_secondari: "LLM",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento fornite da _Machine Learning_
    - L'Admin globale visualizza a schermo la lista delle notifiche di rifornimento fornite da _Machine Learning_ $arrow$ @UCsingoloelementonot[Vedi UC Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di visualizzare le notifiche di rifornimento fornite da _Machine Learning_ ma nessuna notifica è presente $arrow$ @UCerrnessunanotifica[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @UCsingoloelementonot
  ],
  estensioni: [
    - UC @UCerrnessunanotifica
  ],
  trigger: "L'Admin globale vuole visualizzare la lista delle notifiche di rifornimento suggerite da" + [_Machine Learning_] + ".",
)[#use-case-diagram(
    "M5",
    "UC - Visualizza elenco notifiche di rifornimento fornite da " + [_Machine Learning_],
  )]

Il Caso d'Uso UC include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("M5-incl","Inclusione del Caso d'Uso n.: UC")
Maggiori informazioni sono disponibili alla @UCsingoloelementonot

=== UC - Visualizza notifica rifornimento
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  scenari: [
    - L'Admin globale ha selezionato da una lista di notifiche di rifornimento la visualizzazione di una notifica specifia
    - L'Admin globale visualizza della suddetta notifica:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UCstatonot[Vedi UC, Sezione]
      - L'ID della notifica $arrow$ @UCIDnot[Vedi UC, Sezione]
      - L'elenco della merce il cui rifornimento è consigliato $arrow$ @UCmerceconsrif[Vedi UC Sezione]
      - Magazzino di destinazione $arrow$ @UCmagdest[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @UCstatonot
    - UC @UCIDnot
    - UC @UCmerceconsrif
    - UC @UCmagdest
  ],
  trigger: "L'Admin globale una notifica di rifornimento specifica registrata nel sistema",
)[#use-case-diagram("M4", "UC - Visualizza notifica di rifornimento")]

Il Caso d'Uso UC include ulteriori Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("M4-incl","Inclusione del Caso d'Uso n.: UC, UC e UC").
Riguardo UC e UC è possibile avere maggiori informazioni alla @UCstatonot e alla @UCIDnot, mentre di seguito sarà esposto UC.

==== UC - Visualizza magazzino di destinazione <UCmagdest>

#use-case(
  attore: "Cliente, Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin globale
    - L'attore principale sta visualizzando il dettaglio di una notifica di rifornimento
  ],
  scenari: [
    - Viene visualizzata il magazzino di destinazione
  ],
)[]

==== UC - Visualizza elenco merce consigliata da rifornire <UCmerceconsrif>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  scenari: [
    - L'Admin globale seleziona una notifica di rifornimento specifica
    - L'Admin Globale visualizza a schermo l'elenco delle merci il cui rifornimento è consigliato $arrow$ @UCelementolistamercerif[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @UCelementolistamercerif
  ],
  trigger: "L'Admin globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC include un ulteriore caso d'uso come raffigurato nella seguente immagine: #use-case-diagram("M4-incl-2","Inclusione del Caso d'Uso n.: UC"). Sarà esposto qui di seguito.

===== UC - Visualizza elemento lista merce consigliata da rifornire <UCelementolistamercerif>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando un elenco di merce il cui rifornimento è consigliato
  ],
  scenari: [
    - Per ogni elemento della lista viene visualizzato:
      - ID della merce $arrow$ @UCIDmerce[Vedi UC Sezione]
      - Nome della merce $arrow$ @UC15[Vedi UC Sezione]
      - Quantità da rifornire $arrow$ @UCqtamercedarif
  ],
  inclusioni: [
    - UC @UCIDmerce
    - UC @UC15
    - UC @UCqtamercedarif
  ],
  trigger: "L'Admin globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC include ulteriori Caso d'Uso come descritto sopra.
In merito a UC è possibile avere maggiori informazioni alla @UC15, i rimanenti saranno invece esposti qui di seguito.

====== UC - Visualizza ID merce <UCIDmerce>

#use-case(
  attore: "Cliente, Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  scenari: [
    - Viene visualizzata l'ID della singola merce
  ],
)[]

====== UC - Visualizza quantità merce da rifornire <UCqtamercedarif>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando una lista di merci in una notifica di rifornimento
  ],
  scenari: [
    - Viene visualizzata la quantità da rifornire consigliata della singola merce
  ],
)[]


=== UC - Accetta notifica di rifornimento

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
    - L'Admin globale sceglie quale notifica di rifornimento accettare $arrow$ @UCselectnot[Vedi UC, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale vuole accettare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da accettare$arrow$ @UCerrnessunanotifica[Vedi UC, Sezione]
  ],
  inclusioni: [
    - UC @UCselectnot
  ],
  estensioni: [
    - UC @UCerrnessunanotifica
  ],
  trigger: "L'Admin globale vuole accettare una notifica di rifornimento",
)[
  #use-case-diagram("M2", "UC - Accetta notifica di rifornimento")
]

Il Caso d'Uso UC include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("M2-incl", "Inclusione del Caso d'Uso n.: UC")

=== UC - Seleziona notifica di rifornimento <UCselectnot>

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

=== UC - Rifiuta notifica di rifornimento

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
    - L'Admin globale sceglie quale notifica di rifornimento rifiutare $arrow$ @UCselectnot[Vedi UC, Sezione]
  ],
  scenari_alternativi: [
    - L'Admin globale vuole rifiutare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da rifiutare $arrow$ @UCerrnessunanotifica[Vedi UC, Sezione]
  ],
  inclusioni: [
    - UC @UCselectnot
  ],
  estensioni: [
    - UC @UCerrnessunanotifica
  ],
  trigger: "L'Admin globale vuole rifiutare una notifica di rifornimento",
)[
  #use-case-diagram("M3", "UC - Rifiuta notifica di rifornimento")
]

Il Caso d'Uso UC include un ulteriore Caso d'Uso come mostrato nella seguente figura: #use-case-diagram("M3-incl", "Inclusione del Caso d'Uso n.: UC")
Tale caso d'uso è disponibile per la consultazione alla @UCselectnot.

=== UC - Visualizza elenco microservizi

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa alla visualizzazione dei microservizi
    - L'Admin globale visualizza a schermo la lista dei microservizi del Sistema $arrow$ @UCsingoloelementomicr[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @UCsingoloelementomicr
  ],
  trigger: "L'Admin globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[#use-case-diagram("M6", "UC - Visualizza elenco microservizi")]

Il Caso d'Uso UC10 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("M6-incl","Inclusione del Caso d'Uso n.: UC").
Il presente Caso d'Uso sarà esposto, con le relative inclusioni, qui di seguito.

==== UC - Visualizza elemento lista microservizi <UCsingoloelementomicr>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale sta visualizzando una lista di microservizi
  ],
  scenari: [
    - Ogni singolo elemento della lista visualizzata dall'Admin globale dovrà contenere:
      - numero di richieste al secondo $arrow$ @ricsecmicr[Vedi UC Sezione]
  ],
  inclusioni: [
    - UC @ricsecmicr
  ],
  trigger: "L'Admin globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[]

===== UC - Visualizza numero richieste al secondo del microservizio <ricsecmicr>

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'admin globale sta visualizzando un microservizio o un elenco di microservizi
  ],
  scenari: [
    - Viene visualizzato il numero di richieste al secondo per il microservizio
  ],
)[]


// SARA

=== UC - Esportazione ordini

#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il file CSV viene generato correttamente e scaricato sul dispositivo dell'Admin globale riportando fedelmente gli ordini eseguiti

  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di esportare gli ordini eseguiti ma non ci sono dati da esportare $arrow$ @UCerrnessunordine[Vedi UC, Sezione]
  ],
  estensioni: [
    - UC @UCerrnessunordine
  ],
  trigger: "L’Admin globale richiede l’esportazione degli ordini eseguiti tramite l’apposita funzionalità.",
)[
  //#use-case-diagram("M1", "UC Visualizza elenco notifiche rifornimento")
]

=== UC - Nessun ordine da esportare <UCerrnessunordine>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],

  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione degli ordini eseguiti ma nessun ordine è stato eseguito
  ],
)[]



=== UC - Esportazione report inventario
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
  ],
  post: [
    - Il file CSV viene generato correttamente e scaricato sul dispositivo dell'Admin globale riportando accuratamente lo stato attuale dell’inventario

  ],
  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario
  ],
  scenari_alternativi: [
    - L'Admin globale cerca di esportare l'inventario ma non ci sono dati da esportare $arrow$ @UCerrnessundatoinventario[Vedi UC, Sezione]
  ],
  estensioni: [
    - UC @UCerrnessundatoinventario
  ],
  trigger: "L’Admin globale richiede l’esportazione del report dekk'inventario tramite l’apposita funzionalità.",
)[
  //#use-case-diagram("M1", "UC Visualizza elenco notifiche rifornimento")
]

=== UC - Nessun ordine da esportare <UCerrnessundatoinventario>
#use-case(
  attore: "Admin globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin globale
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario
  ],

  scenari: [
    - L'Admin globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario ma nessun dato è disponibile
  ],
)[]


=== UC - Creazione di una soglia minima per una merce


==== UC - Soglia minima non valida


// MARCO

=== UC - Aggiunta stock di una merce
#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - La merce selezionata è pre-esistente, ovvero non bisogna farne la creazione
  ],
  post: [
    - Il Sistema registra l'aggiunta di stock a quella determinata merce
    - Il Sistema comunica all'Admin Locale la corretta esecuzione del processo di aggiunta
    - Il Sistema comunica al magazzino globale l'aggiunta di stock a tale merce
  ],
  scenari: [
    - L'Admin Locale seleziona la merce a cui verrà aggiornata la quantità (stock)
    - L'Admin Locale seleziona la quantità da aggiungere a tale merce
  ],
  trigger: "L'Admin Locale vuole aggiornare la quantità (stock) per una determinata merce ",
)[
  #use-case-diagram("42", "UC - Aggiunta stock di una merce")
]

=== UC - Creazione merce globale

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
    - L'Admin Globale crea una nuova merce nel Sistema
    - L'Admin Globale associa a tale merce: ID e descrizione
  ],
  trigger: "L'Admin Globale vuole aggiungere al Sistema una nuova merce tramite il processo di creazione",
)[
  #use-case-diagram("43", "UC - Creazione di una merce globale")
]

=== UC - Aggiornamento informazioni di una merce
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il sistema è attivo, in modalità online o offline
    - L'Admin globale deve essere autenticato nella dashboard
  ],
  post: [
    - L'aggiornamento della merce verrà propagato in tutti i magazzini locali
  ],
  scenari: [
    - L'Admin globale modifica le informazioni di una merce nel catalogo
  ],
  trigger: "L'Admin globale vuole modificare le informazioni di una merce nel catalogo",
)[]

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


