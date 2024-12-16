#import "../../lib/importantdocs.typ": *

#let ver = [0.9.0]

#show figure: set block(breakable: true)

#show: body => importantdocs(
  data: datetime(day: 15, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "0.9.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Miglioramento Sezione \"Documentazione Fornita\" del processo di Fornitura. Iniziata redazione processo di Sviluppo.",
    ),
    (
      vers: "0.8.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Ristrutturazione documento, accorpamento di alcune sezioni",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 3, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturata la sezione ruoli. Migliorie generali nel documento",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 2, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Ristrutturata ulteriormente la suddivisione dell'indice. Migliorie generali",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 26, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Ristrutturata la suddivisione dell'indice. Migliorie generali",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 23, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunto processo di infrastruttura (processi organizzativi) e migliorie.",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 22, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunta sezione Valutazione della configurazione. Aggiunta introduzione ai processi organizzativi e processo \"Gestione dei Processi\".",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 20, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunte informazioni sulla sezione \"Documentazione Fornita\" del processo di fornitura. Redatta descrizione attività di redazione e manutenzione del processo \"Documentazione\". Aggiunte convenzioni usate sulla documentazione e informazioni sulla documentazione prodotta. Iniziata la redazione delle informazioni sulla \"Gestione delle Configurazioni\" e parte delle sue attività.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 15, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Prima redazione del documento",
    ),
  ),
  versione: ver,
  stato: [Verificato],
  responsabile: ((p.samuele),),
  verificatore: ((p.lorenzo),),
  redattori: (
    (p.emanuele),
    (p.marco),
    (p.matteo),
  ),
  descrizione: [Questo documento contiene le _Norme di Progetto_ seguite da il gruppo _ALimitedGroup_ per il progetto C6 proposto dall'azienda #M31],
  titolo: "Norme di Progetto",
  body,
)

= Introduzione

== Scopo del documento
Questo documento nasce per descrivere il _Way of Working_ adottato da parte di _ALimitedGroup_ durante tutto l'arco di tempo dedicato allo svolgimento del progetto didattico.

Per realizzare il _Way of Working_, i componenti hanno deciso di prendere come riferimento lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi:

- *Primari*: i processi senza il quale un progetto non può definirsi tale;
- *Supporto*: i processi che coadiuvano i processi primari nello svolgimento delle rispettive azioni;
- *Organizzativi*: processi di carattere più generale che aiutano la realizzazione dei progetti.

Per la stesura di questo documento è stata deciso un metodo incrementale, cioè una stesura passo passo del documento con modifiche, aggiunte e cancellazioni a seguito di modifiche del metodo di lavoro.

I membri dell'intero gruppo si impegnano a visionare constantemente questo documento e a rispettare rigorosamente le regole definite in esso, per svolgere il progetto in modo professionale, coerente ed uniforme.

== Scopo del prodotto

La gestione ottimale dell'inventario in una rete logistica distribuita è fondamentale per garantire la disponibilità continua delle risorse lungo tutta la catena operativa: un contesto in cui magazzini geograficamente distribuiti devono mantenere un flusso costante di materiali e prodotti, richiede un sistema di gestione in grado di minimizzare i tempi di risposta e di ottimizzare la distribuzione delle scorte. \
Il capitolato numero C6 di #M31 propone di sviluppare un sistema distribuito e scalabile, basato su architettura a microservizi, che favorisca l'interoperabilità tra i diversi magazzini e la centralizzazione delle informazioni in modo efficiente e sicuro, anche in scenari di elevato carico di dati e richieste simultanee.\
L'obiettivo che si è posto questo gruppo è realizzare questo progetto entro il *31 Marzo 2025* con un budget a disposizione di: *Euro 12˙930*.

== Glossario

La realizzazione di un sistema software richiede, ancora prima della scrittura del codice, un'importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivate da questa attività saranno appositamente documentate.

Per evitare, perciò, ogni tipo di ambiguità o incomprensioni riguardanti la nomenclatura adottata in tutti i documenti visionabili, è stato deciso di utilizzare un Glossario in cui è trascritta, per ogni parola, la definizione. \
La nomenclatura utilizzata, come descritto nel #link("https://alimitedgroup.github.io/VI%2026-11-2024%20v1.0.0.pdf")[verbale interno] del *26 Novembre 2024*, per segnalare che la definizione di una parola è contenuta nel glossario è la seguente:
#align(center)[parola#super[g]]

_ALimitedGroup_ si impegna a visionare il Glossario periodicamente, per permetter la più completa comprensione di ogni tipo di documento pubblicato dal gruppo.

== Riferimenti
=== Riferimenti normativi
- Capitolato d'appalto C6: Sistema di gestione di un magazzino distribuito \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")
- Standard ISO/IEC 12207:1995 \
  #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")

=== Riferimenti informativi
- I processi di ciclo di vita del software \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")
- Glossario \
  #link("https://alimitedgroup.github.io/Glossario.pdf") ///questo link va assolutamente cambiato quando sarà pubblicato il glossario

#pagebreak()

= Processi Primari
Per sviluppare un buon sistema software la sola scrittura di codice e lo svolgimento di alcuni test non garantisce affatto la realizzazione di un prodotto che possa essere considerato buono, ossia che continuerà ad essere utilizzato da molte persone: per realizzare un prodotto che possa essere in grado di raggiungere tale obiettivo è necessario adottare un modello che fornisca a sua volta dei processi da seguire.\

Tra i processi primari definiti dallo _standard ISO/IEC 12207_ si distinguono i processi di:

- *Fornitura*
- *Sviluppo*

== Fornitura

La fornitura è il processo primario adottato dal fornitore del futuro prodotto finale che si occupa di analizzare le azioni da intraprendere per la sua realizzazione.\
Questo processo prevede un primo studio dei requisiti che il progetto dovrà, nelle componenti prodotte, soddisfare.
Ciò produce il materiale necessario per poter effettuare una contrattazione dei requisiti con il proponente,
e poter comunicare allo stesso una possibile pianificazione del lavoro da svolgere con probabile data di consegna prevista.

=== Strumenti a supporto

Per svolgere le attività previste abbiamo deciso di utilizzare i seguenti strumenti:
- *_Google Calendar_*: per rendere pubblici del gruppo e a portata di mano tutti gli appuntamenti previsti;
- *_GitHub_*: per la gestione del _Backlog_ e il sistema di _ticketing_, utili per tenere traccia e sotto controllo quanto fatto e quanto è ancora da far. GitHub offre inoltre una visualizzazione specifica per avere dei diagrammi di Gantt, utili per fini di pianificazione;
- *_Discord_* e *_Telegram_*: per concordare internamente pianificazioni mediante riunioni interne.
Le comunicazioni verso l'azienda proponente richiedono, invece, l'utilizzo di:
- _*Google Mail*_ per le comunicazioni scritte;
- _*Microsoft Teams*_ per le riunion totalmente e parzialmente svolte in remoto con #M31


=== Attività previste

La fornitura prevede varie attività, qui di seguito descritte:

- *Inizializzazione*: questa prevede l'analisi, da parte del fornitore, delle richieste da parte del proponente, tenendo in considerazione eventuali vincoli organizzativi o di altra natura. È Il momento in cui il fornitore valuta la capacità di realizzare quanto proposto, determinando gli eventuali requisiti da contrattare con il proponente;
- *Preparazione risposte*: questa attività prevede la realizzazione di una contro-proposta per il proponente che tenga conto di quanto derivato dall'attività di inizializzazione;
- *Contrattazione*: è l'attività che prevede un colloquio con il proponente durante il quale verranno presentate al proponente le risposte precedentemente realizzate, con l'obiettivo di giungere alla formalizzazione di un contratto;
- *Pianificazione*: il fornitore, stabiliti i requisiti finali, deve adesso stabilire un'organizzazione e un metodo di lavoro in grado di assicurare la qualità del sistema da realizzare, scegliendo, qualora non lo sia da contratto, il modello di ciclo di vita del software da seguire. La pianificazione include anche l'individuazione delle risorse e le tecnologie necessarie allo sviluppo, considerando anche i potenziali rischi ad esse associate;
- *Esecuzione e controllo*: Il fornitore deve, messo a documenti la pianificazione, realizzare quanto stabilito, monitorando nel frattempo la qualità di quanto prodotto e il progresso raggiunto;
- *Revisione e valutazione*: il fornitore deve, anche durante lo sviluppo, tenersi in contatto con il proponente: questo è necessario per avere feedback su quanto prodotto, con annessa quindi una valutazione sullo stato di lavoro;
- *Consegna e completamento*: il fornitore, completato il progetto, deve fornire quanto prodotto al proponente, con l'impegno di fornire supporto a quest'ultimo.

=== Documentazione Fornita <elenco-documenti>

Vengono ora elencati di seguito tutti i documenti che _ALimitedGroup_ consegnerà all'azienda #M31 e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

==== Analisi dei Requisiti

L'#link("")[*Analisi dei Requisiti*] è il documento in cui _ALimitedGroup_ descriverà tutti i requisiti obbligatori, desiderabili e opzionali previsti dal progetto. Nello specifico il documento contiene, dopo una breve introduzione, i Casi d'Uso rilevati con i relativi attori, i requisiti legati ai Casi d'Uso e al capitolato e, infine, informazioni utili al tracciamento degli stessi.

#figure(
  table(
    table.cell(colspan: 2)[*Analisi dei Requisiti*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Analista],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Analisi dei Requisiti"],
)


==== Dichiarazione degli Impegni

La #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%201.0.0.pdf")[*Dichiarazione degli Impegni*] è il documento in cui _ALimitedGroup_ ha previsto varie informazioni riguardanti i costi preventivi del progetto, dall'impegno orario per persona e per ruolo, al costo complessivo del progetto e dei ruoli che i componenti del gruppo svolgeranno durante lo stesso.

#figure(
  table(
    table.cell(colspan: 2)[*Dichiarazione degli Impegni*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Dichiarazione degli Impegni"],
)

==== Glossario

I componenti di _ALimitedGroup_ hanno verificato la necessità di avere un documento di facile consultazione per ricordare, in maniera rapida ed efficace, i molti termini utilizzati nei vari ambiti di realizzazione del progetto di Ingegneria del Software.

Per questo motivo, il gruppo ha prodotto un #link("https://alimitedgroup.github.io/Glossario.pdf")[*Glossario*], rivelatosi molto utile nel corso del tempo.

#figure(
  table(
    table.cell(colspan: 2)[*Glossario*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Amministratore],
    [*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Glossario"],
)

==== Lettera di Candidatura

La #link("https://alimitedgroup.github.io/Lettera%20di%20candidatura.pdf")[*Lettera di Candidatura*] è il documento con cui _ALimitedGroup_ ha ufficialmente presentato la sua candidatura al capitolato proposto dall'azienda #M31.
Essa contiene, in forma riassunta, i punti chiave che hanno spinto i componenti del gruppo a scegliere questo capitolato, nonché le informazioni generali riguardanti i _repository_ del gruppo contenente tutti i documenti relativi al progetto.

#figure(
  table(
    table.cell(colspan: 2)[*Lettera di Candidatura*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Lettera di Candidatura"],
)

==== Lettera di Presentazione

Di due tipologie:
- La Lettera di presentazione per la *_Requirements and Technology Baseline (RTB)_*
- La lettera di presentazione per la *_Product Baseline (PB)_*

Lo scopo del documento è quello di presentare formalmente la candidatura di _ALimitedGroup_ alle rispettive _Baseline_.

#figure(
  table(
    table.cell(colspan: 2)[*Lettera di Presentazione*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Lettera di Presentazione"],
)

==== Norme di Progetto

Il presente documento: stabilisce il _Way of Working_ e le pratiche di sviluppo adottate dal gruppo.

#figure(
  table(
    table.cell(colspan: 2)[*Norme di Progetto*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Amministratore],
    [*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Norme di Progetto"],
)

==== Piano di Progetto

Il #link("https://alimitedgroup.github.io/Piano%20di%20progetto%200.1.0.pdf")[*Piano di Progetto*] è un documento che elenca in maniera ordinata tutte le informazioni riguardanti la pianificazione del gruppo. Conterrà dunque le attività da svolgere di _sprint_ in _sprint_, nonché l'analisi dei rischi associati a ciascuna attività.\
Dati i requisiti del progetto, questo documento avrà anche il compito di aggiornare, volta per volta, il consumo orario previsto ed effettivo e dunque, conseguentemente a questo, anche il costo derivato.

#figure(
  table(
    table.cell(colspan: 2)[*Piano di Progetto*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Piano di Progetto"],
)

==== Piano di Qualifica

Descrive i metodi di qualifica (verifica e validazione) adottate da _ALimitedGroup_, nonché i test effettuati sul prodotto e i rispettivi esiti.

#figure(
  table(
    table.cell(colspan: 2)[*Piano di Qualifica*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Amministratore],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Piano di Qualifica"],
)

==== Valutazione dei Capitolati

La #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%201.0.0.pdf")[*Valutazione dei Capitolati*] è un documento pubblicato da _ALimitedGroup_ in data 2024-10-31. \
Quest'ultimo fornisce, per ogni capitolato, una dettagliata analisi evidenziando i suoi punti di forza e le sue criticità. É suddiviso nelle seguenti sezioni:
- *Panoramica*: che indica l'azienda proponente, il nome del capitolato e delle informazioni generali su il prodotto da realizzare;
- *Scopo*: indica a che pro viene realizzato il prodotto;
- *Punti di forza*
- *Criticità evidenziate*
- *Conclusioni*: motivazioni del gruppo sulla scelta/non scelta del capitolato.

#figure(
  table(
    table.cell(colspan: 2)[*Valutazione dei Capitolati*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile],
    [*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Valutazione dei Capitolati"],
)

==== Verbale Esterno

Verbale di una riunione svolta con persone esterne al gruppo.

#figure(
  table(
    table.cell(colspan: 2)[*Verbale Esterno*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile o Amministratore],
    [*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Verbale Esterno"],
)

==== Verbale Interno

Verbale di una riunione svolta senza la presenza di persone esterne al gruppo.

#figure(
  table(
    table.cell(colspan: 2)[*Verbale Interno*],
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 { gray } else { lime },
    stroke: none,
    gutter: 0.2em,
    [*Redattore*], [Responsabile o Amministratore],
    [*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    [*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Verbale Interno"],
)

== Sviluppo

Il *Processo di Sviluppo* stabilisce le attività che hanno come scopo quello di Analisi dei Requisiti, la progettazione, la codifica del Software, l'installazione e l'accettazione di quanto prodotto.

=== Attività previste

Le attività previste dal *Processo di Sviluppo* in base allo standard _ISO/IEC 12207:1995_ sono le seguenti:

- *Implementazione del processo*: ovvero la scelta del *Ciclo di Vita* del Software più appropriato in base allo scopo, l'importanza e la complessità del progetto;
- *Analisi dei Requisiti*: ovvero l'analisi di cosa l'utilizzatore finale del Software ha bisogno che quest'ultimo assolva con le sue funzionalità. Un'Analisi dei Requisiti completa dovrebbe descrivere le funzionalità del Sistema, i bisogni degli utilizzatori finali e vincoli imposti dal proponente;
- *Progettazione dell'architettura*: ovvero l'individuazione degli elementi _Hardware_ e _Software_ del prodotto finale, al fine che quest'ultimo riesca a soddisfare tutti i requisiti individuati (a questo proposito, fondamentale è il tracciamento dei requisiti stessi);
- *Analisi dei Requisiti Software*: ovvero l'analisi del modo in cui il Software soddisfa i requisiti lato utente. Tale analisi deve includere anche le caratteristiche di qualità, quali, a scopo di esempio, caratteristiche funzionali (includendo anche eventuali requisiti prestazionali), le interfacce di ogni elemento Software e requisiti di sicurezza;
- *Progettazione dell'architettura Software*: ovvero la progettazione delle varie componenti Software che soddisferanno i requisiti Software da un punto di vista di "alto livello" ovvero non nel dettaglio;
- *Progettazione in dettaglio del Software*: ovvero la progettazione in dettaglio delle singole componenti Software, fino ad individuare le singole unità di ciascuna;
- *Codifica e _testing_ del Software*: ovvero la produzione di tutte le unità di tutte le componenti individuate. Ciascuna di queste parti dovrà dunque essere adeguatamente testata per assicurare il suo corretto funzionamento;
- *Integrazione del Software*: ovvero l'integrazione delle varie parti di una componente nella sua componente completa. Tale integrazione dovrà quindi essere adeguatamente testata per assicuranrne il corretto funzionamento;
- *Test di qualifica del Software*: ovvero la realizzazione di appositi test per assicurare la conformità del Software agli obbiettivi di qualità attesi;
- *Integrazione del Sistema*: ovvero l'integrazione di tutte le componenti realizzati nel Sistema finale;
- *Test di qualifica del Sistema*: ovvero il test dell'intero Sistema per assicurarne il corretto funzionamento;
- *Installazione del Software*: ovvero la fornitura di quanto realizzato al cliente finale nell'ambiente da lui indicato in accordo a quanto stabilito tra lui e il fornitore;
- *Supporto per approvazione del Software*: ovvero l'attività per cui il fornitore dovrà supportare l'utilizzatore finale al fine di comprendere se nell'effettivo tutti i requisiti richiesti sono effettivamente soddisfatti.

=== Tecnologie utilizzate

= Processi di Supporto
Tra i processi di supporto utilizzati nel progetto distinguiamo:

- *Documentazione*
- *Gestione delle configurazioni*
- *Accertamento qualità*
- *Qualifica*, formata a sua volta da:
  - *Verifica*
  - *Validazione*
- *Revisione*
- *Revisione congiunta*
- *Gestione dei cambiamenti*

Saranno ora descritti nel dettaglio le attività previste.

== Documentazione <documentazione>

Il processo di documentazione è parte fondamentale di tutti i processi primari: il prodotto di tale processo è infatti essenziale per tenere traccia delle decisioni intraprese e per favorire il lavoro asincrono, molto più produttivo di quello sincrono nel nostro ambito.\

Nel dettaglio, il processo di documentazione si occupa della registrazione delle informazioni prodotto da un processo o da un'attività nel ciclo di vita.\
Riguarda dunque l'insieme delle attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari a tutti gli interessati.\

=== Strumenti a supporto

Per redigere la documentazione il gruppo fa utilizzo di due strumenti in particolare:

- *_Typst_*: trattasi di un linguaggio _mark-up_ molto recente ma che si sta rivelando una valida alternativa a *LaTeX* per la dezione di documenti a carattere scientifico e non solo.
  _Typst_ permette la realizzazione di una preview sostanzialmente istantanea, senza necessità di compilare ogni volta il documento, allo stesso modo mettendo a disposizione una sintassi quanto più vicina possibile ai normali linguaggi di programmazione. _ALimitedGroup_ lo utilizza di tutti i documenti.
  Nello specifico, la redazione dei documenti sfrutta funzioni di _Typst_ appositamente scritte allo scopo presenti all'interno di documenti che noi chiamiamo _Template_.\
  La descrizione dei vari template nel dettaglio è consultabile nella @creazione-typst, in questa Sezione saranno invece descritte le strutture dei vari documenti.

- *_GitHub_*: il gruppo ha deciso di utilizzare il sistema di _ticketing_ e le _pull request_ di _GitHub_ per permettere la rezione, verifica e approvazione di tutti i documenti. Per ulteriori dettagli consultare la @infrastruttura.

=== Attività previste

Il processo di documentazione è un processo assai delicato, e molto importante. Le attività cardine di questo processo sono due:
- *Produzione*: l'attività che stabilisce con quale metodo il documento debba essere redatto, per ulteriori informazioni vedere la @regole-branch-issue;
- *Manutenzione*: l'attività che definisce come un documeto viene, eventualmente, modificato; per ulteriori informazioni vedere la @sezione_manutenzione.

=== Verbali <desc-templ-verbale>

La redazione di un verbale sfrutta il _template_ nel _file_ #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/verbale.typ")[_verbale.typ_]

Generalmente un verbale possiede questa struttura iniziale:
- *Pagina di copertina*, con al suo interno:
  - Logo del gruppo;
  - Tipo di verbale (interno o esterno) con annessa data della riunione verbalizzata;
  - Stato del documento;
  - Persone presenti alla riunione;
  - Distribuzione (ossia, i destinatari);
  - Ordine del giorno (in formato riassuntivo).
- Allegato con *tabella delle versioni*;
- *Indice del documento*, generato automaticamente da _Typst_.

Un verbale successivamente prevede sempre una prima sezione con alcune informazioni generali tra cui:
- *Modalità*, distinta tra "in presenza" o "virtuale" (se virtuale si intende avvenuta sulla piattaforma _Discord_ salvo diversamente specificato);
- *Data della riunione*;
- *Orario di inizio*;
- *Orario di fine*.

cui seguirà, in elenco, l'ordine del giorno nei vari punti.\

La seconda sezione, che segue quanto appena scritto, esplicita quanto discusso per ogni punto dell'ordine del giorno.\

Segue quindi la penultima sezione, denominata "Esiti della riunione", che riassume quanto concordato; l'ultima sezione, invece, si riferisce alla _tabella delle decisioni e delle azioni_ che, tramite il sistema di _ticketing_, elenca tutte le decisioni e azioni prese
dal gruppo, tale tabella è facilmente realizzabile tramite la funzione "tabella-decisioni".\

In ultima istanza, i *verbali esterni* devono avere anche una sezione dedicata all'approvazione esterna e su ogni pagina (ad eccezione della pagina di copertina) del verbale deve essere riportato il numero di pagina e un _header_ con:
- *Nome del gruppo*;
- *Tipo verbale*;
- *Data della riunione*.

=== Diari di bordo

Nell'ambito del progetto di Ingegneria del Software, il _#prof(p.tullio)_ ha previsto delle attività volte ad accertare, in maniera condivisa, lo stato di progesso per ogni singolo gruppo iscritto al I lotto.

In genere, la struttura di un diario di bordo è composta dalle seguenti parti:
- *Risultati raggiunti e confronto con le previsioni*, che elenca quanto abbiamo fatto nel periodo corrente;
- *Obiettivi e attività per il periodo successivo*, che elenca le attività future da completare;
- *Difficoltà riscontrate e questioni aperte*, che ci permette di esporre le problematiche che abbiamo affrontato e quelle su cui ancora nutriamo dei dubbi.

=== Altri documenti
Per tutti gli altri documenti la struttura è composta da:

- *Pagina di copertina*, con:
  - Nome del documento;
  - Versione;
  - Stato del documento;
  - Data di ultima modifica;
  - Distribuzione (destinatari).
- *Registro delle modifiche*, che viene realizzata automaticamente invocando la funzione per la copertina;
- *Indice dei contenuti*, viene realizzato automaticamente con la stessa funziona menzionata sopra;
- *Corpo del documento*, con sezioni e sotto-sezioni che vengono scritte manualmente.

Ogni pagina, ad eccezione della copertina, dovrà inoltre contenere:
- _*Header*_ con:
  - *Nome del gruppo*;
  - *Titolo del documento*;
  - *Versione del documento*
- *Numero di pagina*

=== Produzione <regole-branch-issue>
La produzione di un documento segue solitamente questi passaggi:

- *Creazione della issue e del branch secondario*: anzitutto viene aperta una issue su GitHub, elemento necessario per tenere traccia dei compiti da svolgere, quindi viene aperto un branch secondario rispetto al principale nel sistema di versioning, in maniera di poter eseguire modifiche senza intaccare il ramo stabile. La denominazione del _branch_ e delle _issue_ segue una nomenclatura specifica decisa nel #link("https://alimitedgroup.github.io/VI%2018-11-2024%20v1.0.0.pdf")[*verbale interno*] del *18 Novembre 2024* e riportata nella @creazione-github.

- *Assegnazione della issue e inizio stesura*: una delle persone che in quel periodo hanno il compito di realizzare quel documento (vedi la @elenco-documenti per maggiori informazioni) si assegna l'issue di redazione e inizia la redazione del documento nel branch dedicato
- *Verifica*: terminata la redazione, il redattore apre una _pull request_ su GitHub per chiedere, ad un verificatore, la verifica del documento. Il verificatore procederà quindi a tale attività che potrà avere esito positivo oppure negativo, lasciando, in questo caso, l'elenco delle modifiche da apportare ai relatori.
\
A questo punto il processo diviene differente per i verbali e i rimanenti documenti:

- *Approvazione e pubblicazione (verbali)*: A modifiche ultimate o solo in caso di verifica positiva, il verificatore richiede al responsabile di approvare il documento.
Il responsabile, una volta approvato il documento, risolverà la pull request e procede quindi al merge del branch secondario in quello principale. L'azione scatenera l'avvio di una *_GitHub Action_* che aggiornerà il sito web del progetto con i nuovi documenti approvati. \ Dal momento che un verbale descrive un evento trascorso, è poco probabile debba essere cambiato in futuro, questo anche considerando che con il tempo la memoria potrebbe non più essere precisa come prima: per queste ragioni il gruppo ha deciso che i verbali saranno pubblicati solamente quando approvati.
- *Pubblicazione (altri documenti)*: una volta verificato, il documento può essere pubblicato nella sua versione attuale: ciò avviene completando il _merge_ e risolvendo quindi la _Pull Request_. Tale processo è diversificato per i documenti rispetto ai verbali in quanto, essendo gli altri documenti di consultazione più frequente, è necessario avere a disposizione la versione più recente disponibile per la visione;
- *Approvazione (altri documenti)*: l'approvazione di un documento implica il raggiungimento di una determinata accuratezza dello stesso. Similmente a quanto avviene per i verbali, sarà il responsabile ad approvare il documento a seguito di opportuna _Pull Request_.

Nell'ambito della redazione dei documenti vengono utilizzate alcune convenzioni, definite nella prossima sezione.

==== Denominazione e datazione dei documenti

Come osservato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024*, Sezione 2.3.1 e in seguito estesa a tutti i documenti, la denominazione dei file seguirà la seguente sintassi:

#align(center)[*TIPO AAAA-MM-GG** \# VERSIONE*]

dove:
- *TIPO* è una sigla che identifica il tipo di documento. Le possibili scelte sono:
  - *VI* per *V*\erbale *I*\nterno
  - *VE* per *V*\erbale *E*\sterno
  - *DB* per *D*\iario di *B*\ordo
  - *NP* per *N*\orme di *P*\rogetto
  - *PP* per *P*\iano di *P*\rogetto
  - *AR* per *A*\nalisi dei *R*\equisiti
  - *PQ* per *P*\iano di *Q*\ualifica
- *AAAA-MM-GG* indica la data in formato anno-mese-giorno (con due cifre per giorno e mese e 4 cifre per l'anno)
- *\#* è un modificatore, ossia un numero crescente a partire da 2 per indicare eventuali documenti dello stesso tipo redatti lo stesso giorno. Viene omesso sempre per il primo documento in ordine cronologico
- *VERSIONE* indica la versione corrente del documento
\
Le date nei documenti dovranno essere scritte sempre nel formato *GG-MM-AAAA* (giorno-mese-anno, con due cifre per giorno e mese e quattro cifre per l'anno).\
Eventuali identificatori dovranno sempre seguire la regola del *_Kebab Case_*, ossia parole separate dal carattere *-*.

=== Manutenzione <sezione_manutenzione>

L'attività di manutenzione è necessaria nel momento in cui un documento ha bisogno di essere aggiornato con nuove informazioni. Il processo di aggiornamento non differisce di molto rispetto al processo di prima redazione, prevedendo infatti la realizzazione di una issue dedicata e di un processo di verifica mediante _Pull Request_.

Per le regole sulla nomenclatura da utilizzare per _Branch_ e _Issue_ si veda @creazione-github nella parte precedente di questo documento.

== Gestione delle Configurazioni

La gestione delle configurazioni è un processo fondamentale in un progetto: essa permette di identificare le singole componenti del sistema sviluppato e controllarne le modifiche e i rilasci, nonché registrare lo stato di sviluppo di ciascuna. Complessivamente, il processo permette di avere un buon sviluppo.

L'attività di gestione delle configurazioni svolta dal gruppo si avvale delle seguenti attività:
- *Identificazione della configurazione*
- *Controllo della configurazione*
- *Registrazione dello stato di configurazione*
- *Valutazione della configurazione*

Per ogni attività esposta precedentemente ed a supporto di ognuna, _ALimitedGroup_ utilizza:
- _Git_
- _GitHub_

Per ulteriori informazioni si veda la @implementazione.

=== Identificazione della configurazione

Il capitolato sviluppato dal nostro gruppo è formato da molte parti, motivo per cui l'identificazione della configurazione si renderà essenziale: per questo motivo, durante la fase di progettazione, sarà necessario schematizzare le varie parti dell'architettura del sistema da sviluppare e allegare il risultato di quanto compreso all'#link("")[*Analisi Progettuale (CAMBIARE LINK O NOME DOCUMENTO SE NECESSARIO*)].

Per quanto riguarda invece la parte di documentazione, le parti componenti tale sezione del progetto sono state descritte nella @documentazione.

=== Controllo della configurazione <controllo-config>

Il *Controllo della configurazione* è l'attività che disciplina le richieste di modifica: queste devono poter essere identificate e valutate con esito favorevole alla loro implementazione o contrario.
Un buon controllo della configurazione dovrebbe prevedere un sistema che permetta di tracciare le modifiche da approvare, consigliando eventuali suggerimenti per ottenere l'approvazione.

Per realizzare al meglio questa attività sono stati predisposti metodi differenti per la documentazione e il codice vero e proprio, qui di seguito descritti.

_ALimitedGroup_ ha deciso di attuare questa attività nel repository dei documenti con l'ausilio delle *_issue_*, delle *_board_* e delle *_Pull Request_* di *_GitHub_*, così come descritto qui di seguito:

- _*Issue*_: ogni modifica da fare deve essere documentata mediante una _issue_ da assegnare al componente che prenderà in carico la modifica o la redazione di un documento.
  Generalmente una issue possiede:
  - un numero univoco nella _repository_ che funge da identificativo
  - un nome che esplicita in cosa consiste la _issue_
  - una descrizione facoltativa
  - una _milestone_ o una _baseline_ associata
  - un assegnatario che prenderà in carico il lavoro da effettuare
  - un legame con la _board_ del progetto

- _*Board*_: serve per stabilire se una _issue_ presa in carico è ancora da iniziare, in sviluppo o terminata
- _*Pull Request*_: un sistema che permette di chiedere la verifica e (eventualmente) l'approvazione prima di fondere la modifica nel ramo principale del _repository_. Le _Pull Request_ sono il cuore del controllo della configurazione: permettono infatti di generare un elenco dettagliato e una discussione sulle modifiche da effettuare, permettendo di suggerire cambiamenti prima di considerarle definitive

Il tracciamento delle modifiche approvate è inoltre garantito, sotto il cofano, dall'utilizzo di _Git_, un _version control system_ sviluppato da Linus Torvalds e brevemente descritto nella @infrastruttura.

[PROSEGUIRE con Codice]

=== Registrazione dello Stato di Configurazione

_ALimitedGroup_ è consapevole della necessità di tracciare i cambiamenti effettuati a documentazione e codice.

L'attività di *Registrazione dello Stato di Configurazione* si occupa proprio di questo e i componenti di _ALimitedGroup_ hanno deciso di implementarla come segue.

Come verbalizzato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024* ed esteso poi a tutta la documentazione, i documenti utilizzeranno il seguente sistema di versionamento:

#align(center)[*MAJOR.MINOR.PATCH*]

dove:

- *MAJOR*: subisce un incremento solo alla pubblicazione del file finale
- *MINOR*: subisce un incremento solo quando completato il processo di modifica e di verifica
- *PATCH*: subisce un incremento per modifiche di entità minore, quali correzioni ortografiche e/o di sintassi.

Lo spunto d'uso di tale sistema proviene dal sito #link("https://semverdoc.org/")[semverdoc.org].

In aggiunta, ogni documento avrà un allegato contenente l'elenco cronologico di tutte le modifiche apportate per ogni versione, come anche descritto nella @desc-templ-verbale.

[PROSEGUIRE]

=== Valutazione della configurazione <valutazione-della-configurazione>

La *Valutazione della configurazione* è l'attività che prevede di controllare la completezza del software prodotto rispetto ai suoi requisiti e al design scelto.

_ALimitedGroup_, per compiere questa attività, realizzerà dei test appositi, in parte manuali in parte automatizzati, per renedere possibile tale controllo.
Questi test saranno descritti in un documento apposito, il #link("")[*Test Book (CAMBIARE LINK)*], che descriverà anche che requisito quei test, se svolti con successo, promettono di soddisfare.

[PROSEGUIRE, probabile prematuro fare adesso]

== Accertamento qualità
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

== Qualifica
=== Verifica <verifica>
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

=== Validazione <validazione>
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

== Revisione
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

== Revisione congiunta
// This process may be employed by any two parties, where one party
(reviewing party) reviews another party (reviewed party).
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

== Gestione dei cambiamenti
[PROSEGUIRE] Sezione Strumenti a supporto
[PROSEGUIRE] Sezione Attività previste
[PROSEGUIRE] Sezione Documentazione prodotta o di supporto

= Processi Organizzativi

I *Processi Organizzativi* sono dei processi a supporto del progetto che assicurano il buon andamento dell'intero progetto.
Le attività previste assicurano la buona esecuzione di tutti i processi adottati e l'adozione di eventuali miglioramenti, la gestione delle infrastrutture utilizzate e la formazione del team nei compiti da seguire.

Tra i processi organizzativi si individuano:

- *Gestione dei Processi*
- *Infrastruttura*
- *Miglioramento*
- *Formazione*

== Gestione dei Processi

La *Gestione dei Processi* ha il l'obbiettvo di individuare i compiti da svolgere e i ruoli alla quale questi saranno assegnati, nonché permettere una comunicazione interna ed esterna efficace e altresì garantire lo svolgimento delle varie attività in maniera efficace mediante una opportuna pianificazione.

Le attività principali, osservate da _ALimitedGroup_, previste da questo processo sono:
- *Inizializzazione*: è necessario stabilire i requisiti delle attività da svolgere, cercando di comprendere quali risorse esse richiedono. È compito del *Responsabile* determinare queste caratteristiche che vengono comunque discusse internamente a mezzo di riunioni interne.
- *Pianificazione*: è necessario, stabiliti i requisiti, comprendere il tempo necessario per completare le attività, così come è necessario anche stimare i costi economici e temporali necessari allo svolgimento. Per facilitare questo compito, è stato scelto di dividere le responsabilità in vari ruoli, vedi @ruoli.
- *Esecuzione e controllo*: L'esecuzione delle attività è affidata quindi ai vari ruoli e il *Responsabile* dovrà costantemente monitorare lo stato di progresso e avanzamento complessivo.
- *Revisione e valutazione*: Una volta effettuata l'attività è necessario controllare la conformità di quanto prodotto: questo avviene per opera del *Verificatore*. Per un dettaglio più specifico delle attività di revisione si veda la @regole-branch-issue per quanto riguarda la documentazione mentre @valutazione-della-configurazione, @verifica e @validazione per il codice.
- *Finalizzazione*: Un'attività è da reputarsi conclusa solo nel momento in cui viene definitvamente approvata. Come anticipato nelle Sezioni precedenti, questa operazione viene eseguita al pari di una normale attività di verifica, con la sola eccezione che la risoluzione della _Pull Request_ associata determina la chiusura della _Issue_ e del _Branch_ utilizzato per la redazione/modifica della componente.

Nell'interesse dello scopo del presente documento saranno ora descritti i ruoli prima citati e le loro responsabilità, previsti in particolar modo dall'attività di *pianificazione*.
Sarà quindi dato spazio ad una parte fondamentale del gruppo, ovvero i metodi di *coordinamento*.

=== Ruoli <ruoli>
#figure(
  table(
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    table.header([*Ruolo*], [*Compiti e responsabilità*]),
    "Responsabile",
    (
      "Al Responsabile spetta il compito di comprendere, tenendo in considerazione quanto già portato a termine, quanto da realizzare nei periodi di sviluppo successivi, individuando le attività, i costi e rischi associati e infine assegnandone lo svolgimento ai componenti che vestono in quel periodo il ruolo più appropriato.
Il Responsabile è anche colui che ha il compito, a nome di tutto il gruppo, di dialogare con le parti esterne ad " + [_ALimitedGroup_] + ", quali, a mero titolo esemplificativo, l'azienda proponente del capitolato " + [#M31] + ".
In ultima istanza, è sempre compito di questo ruolo " + [*approvare*] + " i vari documenti prodotti da " + [_ALimitedGroup_] + "."
    ),

    "Amministratore",
    (
      "Noto anche come " + [_System Administrator_ o _SysAdmin_] + ", ha l'importante compito di gestire e migliorare l'infrastruttura che i membri di " + [_ALimitedGroup_] + " utilizza per portare a compimento le varie attività del progetto didattico, a partire dal sistema di ticketing sino agli strumenti utilizzati per la verifica e validazione di quanto realizzato.
    È questo ruolo che copre la responsabilità di risolvere quanto prima eventuali problematiche legate alle infrastrutture. Per via della sua approfondita conoscenza del " + [_Way of Working_] + " adottato dal gruppo, necessario per poter al meglio gestire le infrastrutture, è di questo ruolo il compito di redigere il presente documento e il " + [*Piano di Qualifica*] + ", ma può risultare un ruolo adatto anche a redigere sia i verbali interni sia quelli esterni."
    ),

    "Verificatore",
    (
      "Ha il compito di garantire che tutto ciò che è prodotto, dalla documentazione alla più piccola attività, sia svolta a regola d'arte.
Si occupa di eseguire test approfonditi e revisioni del software, identificando eventuali aree di miglioramento specie in ambito qualitativo. È sempre di questo ruolo la responsabilità di verificare la correttezza dei vari documenti ad ogni modifica effettuata."
    ),

    "Analista",
    (
      "Questo ruolo è responsabile nell'identificazione dei requisiti obbligatori, desiderabili e facoltativi del progetto, considerando quanto discusso nelle riunioni esterne con l'azienda proponente " + [#M31] + ".
È sempre affidato a questo ruolo il compito di regidere l'" + [*Analisi dei Requisiti*] + "."
    ),

    "Programmatore",
    (
      "Il Programmatore è responsabile dello sviluppo del software, traducendo il design architetturale in codice funzionante. Collabora strettamente con il progettista per assicurarsi che tutte le funzionalità siano implementate secondo le specifiche.
    Il suo lavoro è fondamentale per il progresso del progetto e richiede una buona conoscenza delle tecnologie adottate. È affidata a questo ruolo anche la responsabilità di realizzare test automatici per verificare il corretto funzionamento del codice sviluppato."
    ),

    "Progettista",
    (
      "È un ruolo cruciale per lo svolgimento del capitolato: esso infatti ha il compito di trasformare requisiti in un design architetturale, producendo documenti e schemi esplicativi e definendo le scelte tecnologiche."
    ),
  ),
  caption: [Compiti e responsabilità di ogni singolo ruolo],
)

=== Coordinamento

Una parte fondamentale del progetto risiede nelle capacità di coordinamento da parte del gruppo, sia internamente che esternamente.

Per svolgere adeguatamente questa attività è necessario prevedere e svolgere riunioni apposite e avere canali di comunicazioni funzionanti e utili allo scopo.

==== Riunioni

Le riunioni sono di due tipi: *interne* ed *esterne*.

_ALimitedGroup_ realizza periodicamente, generalmente all'inizio di ogni _Sprint_, riunioni interne per il coordinamento interno: durante le stesse viene effettuato un punto della situazione sul progetto, un momento in cui i componenti si aggiornano sulle attività svolte e su quelle non terminate in tempo.
L'attività di dialogo permetterà al *Responsabile* di avere una panoramica attuale su quanto svolto, permettendogli così di gestire al meglio il periodo successivo.
In queste occasioni è anche possibile effettuare la rotazione dei ruoli in caso di necessità (quali, a mero titolo di esempio, il termine delle ore di un determinato ruolo per una determinata persona oppure l'esaurimento di compiti appartenenti a quel ruolo).

Durante lo svolgimento del progetto è inoltre utile avere degli incontri con #M31: si tratta dunque di riunioni *esterne* dove i componenti di _ALimitedGroup_ hanno l'occasione di presentare il lavoro sino ad ora svolto e porre eventuali dubbi riscontrati. Contrariamente alle riunioni interne, non è prevista una periodicità: gli incontri sono fissati di volta in volta a mezzo di richiesta ad #M31 mediante posta elettronica.

L'esito degli incontri dovrà sempre essere documentato mediante la redazione di appositi *verbali*, rispettivamente *interni* ed *esterni*: per maggiori informazioni si veda la @elenco-documenti.

==== Comunicazioni

In merito ai metodi comunicativi, _ALimitedGroup_ utilizza *Telegram* e *Discord* per, rispettivamente, comunicazioni asincrone e sincrone (riunioni).
In genere una comunicazione urgente ma che non richiede approfondita discussione o per comunicazioni di servizio minori (come, a titolo di esempio, dubbi minori e non urgenti su particolari argomenti) i componenti utilizzeranno l'apposito gruppo realizzato su *Telegram* o messaggi diretti ad un componente specifico sempre utilizzando la medesima piattaforma, mentre per la realizzazione di riunioni interne e la discussione di criticità complesse richiederanno lo svolgimento di una riunione presso il _Server_ *Discord* appositamente realizzato.

Per quanto riguarda invece le comunicazioni esterne, queste verranno sempre realizzate dal *Responsabile* mediante l'utilizzo dell'inidirizzo di posta elettronica di _ALimitedGroup_ #link("mailto:alimitedgroup@gmail.com")[alimitedgroup\@gmail.com].

Per maggiori informazioni si consiglia la lettura del processo di *Infrastruttura* alla @infrastruttura.

== Infrastruttura <infrastruttura>

Il processo di *Infrastruttura* è responsabile della creazione e del mantenimento dei componenti (di qualsiasi natura, sia _Hardware_ che _Software_) necessari per permettere tutti gli altri processi.

Si compone delle seguenti atività:

- *Implementazione*
- *Creazione*
- *Manutenzione*

=== Implementazione <implementazione>

_ALimitedGroup_ ha compreso, durante lo svolgimento del progetto didattico, la necessità di adottare appositi strumenti per permettere il lavoro asincrono dei suoi componenti. Di seguito vengono elencati l'iniseme di tutti gli strumenti utilizzati.

- _Discord_
- _Git_
- _GitHub_
- _Google Calendar_
- _Google Fogli_
- _Google Mail_
- _Microsoft Teams_
- Script in _Python_
- _Telegram_
- _Typst_

#figure(
  table(
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    table.header([*Strumento*], [*Descrizione*]),
    [*Discord*],
    [_Discord_ è un programma di messagistica istantanea e videoconferenza utilizzato da _ALimitedGroup_ per realizzare le proprie riunioni interne in modalità *virtuale*.],

    [*Git*],
    [Programma originariamente sviluppato da Linus Torvalds per il versionamento del codice: _ALimitedGroup_ ha deciso di impiegarlo come strumento di versionamento per il sorgente della propria documentazione e il codice prodotto.
      Git è dunque un potente _Version Control System (VCS)_ che permette di efficacemente versionare tutto ciò che viene prodotto grazie anche alla possibilità di organizzare gli sviluppi in _Branch_ separati.],

    [*GitHub*],
    [*GitHub* è un prodotto che permette principalmente la memorizzazione su dispositivo remoto di _repository_ Git, ma non solo: esso infatti si è evoluto nel corso del tempo per permettere la collaborazione asincrona tra _developer_
      _ALimitedGroup_ utilizza _GitHub_ per sincronizzare tra i membri gli sviluppi tra i vari membri, tenere traccia del _backlog_ mediante il sistema di _issue_ e _project board_, nonché permettere la verifica di quanto redatto prima che tali documenti o codice raggiunga il _branch_ principale. Per i dettagli d'uso si rimanda alla @controllo-config.],

    [*Google Calendar*],
    [Per condividere con il gruppo tutti gli appuntamenti futuri _ALimitedGroup_ utilizza *Google Calendar*.],

    [*Google Fogli*], [[PROSEGUIRE]],
    [*Google Mail*], [[PROSEGUIRE]],
    [*Microsoft Teams*],
    [*Microsoft Teams* viene utilizzato da _ALimitedGroup_ per realizzare le riunioni esterne con l'azienda proponente #M31.],

    [*Script in Python*],
    [Per automatizzare l'aggiornamento del sito web con i nuovi documenti e la compilazione dei file Typst, _ALimitedGroup_ ha deciso di realizzare degli appositi script in Python.
      Un ulteriore script inoltre permette di realizzare una sostituzione parziale delle parole nei documenti per collegarle ai termini contenuti nel glossario],

    [*Telegram*],
    [Telegram viene utilizzato dal gruppo per comunicare in maniera diretta tra i membri in caso di dubbi minori per cui non è necessaria una riunione interna.],

    [*Typst*],
    [Typst viene utilizzato da _ALimitedGroup_ per la redazione di tutti i documenti. Vengono compilati automaticamente utilizzando gli script prodotti direttamente dal gruppo.],
  ),
  caption: [Strumenti componenti l'Infrastruttura],
)

== Creazione <creazione>

L'attività di *creazione* guida la realizzazione dell'infrastruttura. Di seguito i dettagli per ogni prodotto utilizzato.

=== Discord

Per utilizzare *Discord* è stato realizzato un server con un canale testuale e un canale apposito per le riunioni.

=== Git

*Git* non richiede particolari modifiche: deve essere configurato inserendo username e email con cui il componente interagisce normalmente con il _repository_ GitHub del progetto

=== GitHub <creazione-github> //action

Il #link("https://github.com/alimitedgroup/alimitedgroup.github.io/tree/main")[_repository_ *GitHub* dedicato alla documentazione] è strutturato in maniera da favorire la produzione dei documenti. All'interno è possibile trovare varie _directories_, qui di seguito descritte:

- *.github/workflows*: contiene lo script in _Python_ che si occupa di compilare i files _Typst_ dei documenti ed aggiornare il sito di conseguenza;
- *.vscode*: contiene informazioni utili per l'_IDE_ di sviluppo _Microsoft Visual Studio Code_, se questo viene utilizzato per la stesura dei documenti;
- *01-candidatura*: contiene, con le eventuali _sub-directories_ i file della candidatura, ossia la prima fase del progetto;
- *02-RTB*: contiene, con le eventuali _sub-directories_ i file della _Requirements and Technology Baseline_ (RTB), ossia la seconda fase del progetto;
- *assets*: contiene _files_ utili per il sito web e i documenti, come loghi e _fonts_;
- *lib*: contiene i file _template_ per la redazione dei documenti;
- *website*: contiene i file relativi al sito web del gruppo.


È inoltre possibile trovare il file _*.gitignore*_ (utile per evitare il tracciamento di alcuni file specifici), il file _*README.md*_ (che permette di realizzare la descrizione nella pagina principale del _repository_) e _*docs.typ*_ (altro file di utilità per i documenti).

Come descritto nella @regole-branch-issue, la redazione o modifica di un documento richiede la creazione di un branch secondario. Tale branch avrà un nome che segue il seguente schema:

#align(center)[*\#-azione-documento-data*]

Dove:
- Al posto di *\#* va inserito il numero della _Issue_ le cui modifiche operate nel branch determineranno la chiusura
- Al posto di *azione* va inserita l'azione fatta nel _Branch_ ossia:
  - *redazione* per indicare la redazione di un nuovo documento
  - *aggiornamento* per indicare la modifica di un documento esistente
- Al posto di *documento* va inserito la tipologia di documento interessato dalla modifica, come, a mero scopo esemplificativo, *verbale* oppure *norme-progetto*
- Al posto di *data* la data del documento, se tale documento la prevede (ad esempio i *verbali*)

Il gruppo ha poi deciso di utilizzare le _Issue_ di GitHub per tracciare le attività da fare. Generalmente, il nome di una _Issue_ segue il seguente schema:

#align(center)[*azione documento data*]

Dove *azione*, *documento* e *data* hanno lo stesso significato della nomenclatura utilizzata per i _Branch_.

Ogni _Issue_ è inoltre legata ad una _Project Board_, uno strumento di GitHub che permette di vedere velocemente che attività ci sono ancora da svolgere e quali invece sono in corso.

La chiusura di una _Issue_ avviene sempre ed esclusivamente mediante l'apertura di una _Pull Request_ e al seguito di una verifica con esito positivo: in tal caso il *Verificatore* che ha effettuato la verifica o il *Responsabile* potrà procedere alla chiusura della stessa con conseguente entrata delle modifiche nel _Branch_ principale e questa azione determinerà la chiusura automatica della Issue. Qualora _GitHub_ non segnalasse tale automazione, sarà necessario procedere ad aggiungere al commento di chiusura della _Pull Request_ la dicitura
#align(center)[*fix #issue*]

dove al posto di *_issue_* va inserito il numero della issue associata alla _Pull Request_.

È bene sottolineare che seppur la chiusura di una _Issue_ può essere effettuata manualmente in caso di necessità, questo *compromette fortemente* la *tracciabilità* di quanto effettuato.

In ultima istanza, il gruppo ha configurato anche la funzionalità fornita da GitHub denominata *GitHub Actions*, che permette di realizzare azioni automatiche quando un commit viene realizzato nel branch di sviluppo principale (*main*): nello specifico, l'action esegue, grazie anche all'ausilio di uno script Python, la compilazione dei documenti e la pubblicazione nel #link("https://alimitedgroup.github.io/")[sito web] del gruppo.

=== Google Calendar

In merito al calendario condiviso, è affidato al *Responsabile* il compito di aggiungere gli eventi del gruppo, dai diari di bordo sino alle riunioni interne ed esterne programmate.

Il calendario è condiviso tra i vari membri, che riceveranno un promemoria almeno un giorno prima rispetto l'evento in questione.

Rimane responsabilità di ogni membro controllarlo periodicamente.

=== Google Fogli

[PROSEGUIRE]

=== Google Mail

[PROSEGUIRE]

=== Microsoft Teams

La piattaforma *Microsoft Teams* viene controllata direttamente da #M31, in quanto tale non necessita di alcuna operazione.

=== Script in Python

In merito agli Script di _Python_, questi non necessitano di particolare modifiche manuali: possono essere eseguiti direttamente senza necessita di alcuna operazione aggiuntiva.

In merito allo Script sulla compilazione dei file _Typst_ e aggiornamento del sito, questo viene eseguito automaticamente come descritto nella sezione @creazione-github.

=== Telegram

Il gruppo ha realizzato un gruppo *Telegram* per le comunicazioni di minore importanza.
Tale gruppo è configurato in maniera tale da escludere il possibile ingresso di persone esterne: ad eccezione di questo, non richiede operazioni di interesse per questo documento.

=== Typst <creazione-typst> //migliorare

L'ambiente per la realizzazione dei documenti, *Typst*, è stato personalizzato a partire dalla realizzazione di _template_, contenenti funzioni utili alla stesura dei documenti e conservati nella cartella _lib_ del _repository_.

In merito ai *verbali*, le funzioni sono contenute nel file
#link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/documentazione.typ")[*_verbale.typ_*] e sono, in elenco:
- *verbale*: inserisce la pagina di copertina, la tabella delle modifiche e l'indice;
- *inizio-verbale-interno*: permette di inserire un testo con le informazioni iniziali della riunione (come, a titolo di esempio, la data, il luogo e la durata);
- *inizio-verbale-esterno*: permette di inserire un testo con le informazioni iniziali della riunione (come, a titolo di esempio, la data, l'azienda con cui è stata fatta la riunione, il luogo e la durata);
- *approvazione-esterna*: permette di inserire il testo per certificare, nella sezione esterna, l'approvazione da parte dell'azienda con cui si è svolto l'incontro (solo in caso di verbale esterno);
- *tabella-decisioni*: permette di inserire la *tabella delle decisioni e delle azioni*.

In merito ai *diari di bordo*, il file #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/diario.typ")[*_diario.typ_*] possiede funzioni primarie e secondarie per la realizzazione delle presentazioni. In esso vi è un'unica funzione di interesse primario, *presentazione*, che permette di generare automaticamente l'intero documento se ad essa vengono forniti i punti per ciascuna delle sezioni.

Per i rimanenti *documenti* funzioni di interesse sono contenute nel template #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/common.typ")[*common.typ*], tra cui:
- *prima-pagina*: Inserisce la pagina di copertina e il registro delle modifiche;
- *indice*: genera l'indice del documento;
- *indice-tabelle*: genera un elenco di tutte le tabelle inserite nel documento;
- *indice-immagini*: genera un elenco di tutte le immagini presenti nel documento

Per i seguenti documenti:
- *Norme di Progetto*;
- *Piano di Progetto*;
- *Piano di Qualifica*;
- *Analisi dei Requisiti*;

che assumono, all'interno del progetto, un'importanza significativa rispetto ad altri (verbali, diari di bordo etc...) abbiamo realizzato il _template_, che permette di automatizzare la realizzazione della struttura _standard_ adatta a loro.\
Tuttavia, l'utilizzo di #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/importantdocs.typ")[*_importantdocs.typ_*] non è strettamente obbligatorio.


I vari documenti sono spesso accomunati da esigenze particolari servibili mediante l'utilizzo di funzioni non caratteristiche di alcun documento.\
Tali funzioni sono sempre nel file #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/common.typ")[*_common.typ_*]:
- *p* : permette l'inserimento delle informazioni riguardanti ogni persona coinvolta in questo progetto, quali i componenti del gruppo o i docenti di Ingegneria del Software, utile per evitare erroneamente di inserire informazioni non veritiere;
- *M31* : permette di visualizzare il nome dell'azienda proponente. Il nome è personalizzato con il font _"Futura"_ e messo sempre in grassetto;
- *abbrev* : preso un _output_ fornito dalla funzione _p_, inseriesce nome e cognome della persona selezionata;
- *prof* : permette la visualizzazione, da un _output_ della funzione _p_, del nome e cognome del docente selezionato preceduti dalla dicitura "Prof.";
- *issue* : fornisce la possibilità di inserire il _link_ che si riferisce ad una determinata _issue_, tramite il numero associato a quest'ultima (e opzionalmente il _repository_, altrimenti viene di _default_ inserito quella della documentazione);
- *pr* : come sopra, ma per indicare le _pull request_;
- *doc* : che, preso in _input_ il nome del documento e il testo da inserire, fornisce il _link_ per quel documento con al suo posto il testo dato.

== Manutenzione

A causa dei continui sviluppi nel progetto _ALimitedGroup_ è consapevole che l'infrastruttura subirà nel tempo cambiamenti e potrà causare possibili problemi: è per questo affidato il compito all'*Amministratore* di presiedere al controllo del regolare funzionamento della stessa, aggiornandone le funzionalità qualora errori o cambiamenti lo rendano necessario.

=== Processo di miglioramento
=== Processo di formazione
