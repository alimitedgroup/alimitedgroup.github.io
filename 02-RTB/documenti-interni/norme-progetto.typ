#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [1.0.0]

#show figure: set block(breakable: true)

#show: body => importantdocs(
  data: datetime(day: 18, month: 02, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 18, month: 02, year: 2025),
      autore: p.matteo,
      verifica: p.emanuele,
      approvazione: p.samuele,
      descr: "Correzioni minori.",
    ),
    (
      vers: "0.15.0",
      date: datetime(day: 02, month: 02, year: 2025),
      autore: p.matteo,
      verifica: p.emanuele,
      descr: "Aggiunte " + [@metriche, @metriche-qt-processo e @metriche-qt-prodotto.],
    ),
    (
      vers: "0.14.0",
      date: datetime(day: 06, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.emanuele,
      descr: "Aggiunto processo di Validazione " + [(@validazione).],
    ),
    (
      vers: "0.13.0",
      date: datetime(day: 04, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.emanuele,
      descr: "Aggiunto processo di Accertamento Qualità e di Verifica " + [(@accertamento-qualità e @verifica).],
    ),
    (
      vers: "0.12.0",
      date: datetime(day: 31, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Sistemazione titolazione di alcuni paragrafi non correttamente numerati. Descritto il processo di Miglioramento e quello di Formazione "
        + [(@miglioramento e @formazione).],
    ),
    (
      vers: "0.11.0",
      date: datetime(day: 16, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Proseguo redazione processo di Sviluppo " + [(@sviluppo)] + ". Proseguo redazione " + [@infrastruttura.],
    ),
    (
      vers: "0.10.0",
      date: datetime(day: 16, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.sara,
      descr: "Miglioramento delle tabelle del documento.",
    ),
    (
      vers: "0.9.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Miglioramento Sezione \"Documentazione Fornita\" del processo di Fornitura "
        + [(@elenco-documenti)]
        + ". Iniziata redazione processo di Sviluppo "
        + [(@sviluppo).],
    ),
    (
      vers: "0.8.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Ristrutturazione documento, accorpamento di alcune sezioni.",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 3, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturata la sezione ruoli " + [(@ruoli)] + ". Migliorie generali nel documento.",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 2, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Ristrutturata ulteriormente la suddivisione dell'indice. Migliorie generali.",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 26, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Ristrutturata la suddivisione dell'indice. Migliorie generali.",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 23, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunto processo di infrastruttura (" + [@infrastruttura] + ") e migliorie.",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 22, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunta sezione Valutazione della Configurazione "
        + [(@valutazione-della-configurazione)]
        + ". Aggiunta introduzione ai processi organizzativi e processo \"Gestione dei Processi\" "
        + [(@gest-process).],
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 20, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunte informazioni sulla "
        + [@fornitura]
        + ". Redatta descrizione attività di redazione e manutenzione del processo \"Documentazione\" "
        + [(@documentazione)]
        + ". Aggiunte convenzioni usate sulla documentazione e informazioni sulla documentazione prodotta "
        + [(@denanddatdoc).]
        + "Iniziata la redazione delle informazioni sulla \"Gestione delle Configurazioni\" e parte delle sue attività "
        + [(@gest-config).],
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 15, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Prima redazione del documento" + [ (@introduzione).],
    ),
  ),
  versione: ver,
  stato: [Approvato per RTB],
  responsabile: ((p.samuele),),
  verificatore: ((p.emanuele), (p.lorenzo), (p.samuele), (p.sara)),
  redattori: (
    (p.marco),
    (p.matteo),
  ),
  descrizione: [Questo documento contiene le _Norme di Progetto_ seguite da il gruppo _ALimitedGroup_ per il progetto C6 proposto dall'azienda #M31],
  titolo: "Norme di Progetto",
  body,
)

= Introduzione <introduzione>

== Scopo del documento
Questo documento nasce per descrivere il _Way of Working#super[G]_ adottato da parte di _ALimitedGroup_ durante lo svolgimento del progetto didattico.

Per realizzare il _Way of Working#super[G]_, i componenti hanno deciso di prendere come riferimento lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi:

- *Primari*: i processi senza il quale un progetto non può definirsi tale;
- *Supporto*: i processi che coadiuvano i processi primari nello svolgimento delle rispettive azioni;
- *Organizzativi*: processi di carattere più generale che aiutano la realizzazione dei progetti.

La stesura di questo documento è incrementale, cioè una stesura passo passo con modifiche, aggiunte e cancellazioni a seguito di miglioramenti del metodo di lavoro.

I membri dell'intero gruppo si impegnano a visionare costantemente questo documento e a rispettare rigorosamente le regole definite in esso, per svolgere il progetto in modo professionale, coerente ed uniforme.

== Scopo del prodotto

La gestione ottimale dell'inventario in una rete logistica distribuita è fondamentale per garantire la disponibilità continua delle risorse lungo tutta la catena operativa: un contesto in cui magazzini geograficamente distribuiti devono mantenere un flusso costante di materiali e prodotti, richiede un sistema di gestione in grado di minimizzare i tempi di risposta e di ottimizzare la distribuzione delle scorte. \
Il capitolato numero C6 di #M31 propone di sviluppare un sistema distribuito e scalabile, basato su architettura a microservizi, che favorisca l'interoperabilità tra i diversi magazzini e la centralizzazione delle informazioni in modo efficiente e sicuro, anche in scenari di elevato carico di dati e richieste simultanee.\
L'obiettivo che si è posto questo gruppo è realizzare questo progetto entro il *31 Marzo 2025* con un budget a disposizione di: *Euro 12˙930*.

== Glossario

La realizzazione di un sistema Software richiede, ancora prima della scrittura del codice, un'importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivanti da questa attività saranno appositamente documentate.

Per evitare ogni tipo di ambiguità o incomprensioni riguardanti la nomenclatura adottata in tutti i documenti visionabili, viene utilizzato un Glossario in cui è trascritta, per ogni parola, la definizione. \
La nomenclatura utilizzata, come descritto nel #link("https://alimitedgroup.github.io/VI%2026-11-2024%20v1.0.0.pdf")[verbale interno] del *26 Novembre 2024*, per segnalare che la definizione di una parola è contenuta nel glossario è la seguente:
#align(center, text(1.2em)[*`parola`*#super[G]])

_ALimitedGroup_ si impegna a visionare il Glossario periodicamente, per permetter la più completa comprensione di ogni tipo di documento pubblicato dal gruppo.

== Riferimenti
=== Riferimenti normativi
- *Capitolato d'appalto C6: Sistema di gestione di un magazzino distribuito* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*
- *Standard ISO/IEC 9126* \
  #link("https://it.wikipedia.org/wiki/ISO/IEC_9126") \
  *Ultimo Accesso 6 Febbraio 2025*
- *Standard ISO/IEC 12207:1995* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*

=== Riferimenti informativi
- *I processi di ciclo di vita del Software* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*
- *Glossario* \
  #link("https://alimitedgroup.github.io/Glossario.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*

#pagebreak()

= Processi Primari
Per sviluppare un buon sistema Software la sola scrittura di codice e lo svolgimento di alcuni Test non garantisce affatto la realizzazione di un prodotto che possa essere considerato buono, ossia che continuerà ad essere utilizzato da molte persone: per realizzare un prodotto che possa essere in grado di raggiungere tale obiettivo è necessario adottare un modello che fornisca a sua volta dei processi da seguire.\

Tra i processi primari definiti dallo _standard ISO/IEC 12207_ si distinguono i processi di:

- *Fornitura*
- *Sviluppo*

== Fornitura <fornitura>

La fornitura è il processo primario adottato dal fornitore del futuro prodotto finale che si occupa di analizzare le azioni da intraprendere per la sua realizzazione.\
Questo processo prevede un primo studio dei requisiti che il progetto dovrà, nelle componenti prodotte, soddisfare.
Ciò produce il materiale necessario per poter effettuare una contrattazione dei requisiti con il proponente#super[G],
e poter comunicare allo stesso una possibile pianificazione del lavoro da svolgere con probabile data di consegna prevista.

=== Strumenti a supporto

Per svolgere le attività previste abbiamo deciso di utilizzare i seguenti strumenti:
- *_Google Calendar_*: per segnalare tutti gli appuntamenti previsti;
- *_GitHub_*: per la gestione del _Backlog_ e il sistema di _ticketing_, utili per tenere traccia e sotto controllo quanto fatto e quanto è ancora da fare. GitHub offre inoltre una visualizzazione specifica per avere dei diagrammi di Gantt, utili per fini di pianificazione;
- *_Discord_*#super[G] e *_Telegram_*: per concordare internamente pianificazioni mediante riunioni interne.
Le comunicazioni verso l'azienda proponente richiedono, invece, l'utilizzo di:
- _*Google Mail*_ per le comunicazioni scritte;
- _*Microsoft Teams*_ per le riunioni totalmente e parzialmente svolte in remoto con #M31


=== Attività previste

La fornitura prevede varie attività, qui di seguito descritte:

- *Inizializzazione*: questa prevede l'analisi, da parte del fornitore, delle richieste da parte del proponente#super[G], tenendo in considerazione eventuali vincoli organizzativi o di altra natura. È Il momento in cui il fornitore valuta la capacità di realizzare quanto proposto, determinando gli eventuali requisiti da contrattare con il proponente#super[G];
- *Preparazione risposte*: questa attività prevede la realizzazione di una contro-proposta per il proponente che tenga conto di quanto derivato dall'attività di inizializzazione;
- *Contrattazione*: è l'attività che prevede un colloquio con il proponente durante il quale verranno presentate al proponente le risposte precedentemente realizzate, con l'obiettivo di giungere alla formalizzazione di un contratto;
- *Pianificazione*: il fornitore, stabiliti i requisiti finali, deve adesso stabilire un'organizzazione e un metodo di lavoro in grado di assicurare la qualità del sistema da realizzare, scegliendo, qualora non lo sia da contratto, il modello di ciclo di vita del Software da seguire. La pianificazione include anche l'individuazione delle risorse e le tecnologie necessarie allo sviluppo, considerando anche i potenziali rischi ad esse associate;
- *Esecuzione e controllo*: Il fornitore deve, messo a documenti la pianificazione, realizzare quanto stabilito, monitorando nel frattempo la qualità di quanto prodotto e il progresso raggiunto;
- *Revisione e valutazione*: il fornitore deve, anche durante lo sviluppo, tenersi in contatto con il proponente#super[G]: questo è necessario per avere feedback su quanto realizzato, con annessa quindi una valutazione sullo stato di lavoro;
- *Consegna e completamento*: il fornitore, completato il progetto, deve fornire quanto prodotto al proponente#super[G], garantendogli supporto.

=== Documentazione Fornita <elenco-documenti>

Vengono ora elencati tutti i documenti che _ALimitedGroup_ consegnerà all'azienda #M31 e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

==== Analisi dei Requisiti#super[G]

L'#link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G]*] è il documento in cui _ALimitedGroup_ descriverà tutti i requisiti obbligatori, desiderabili e opzionali previsti dal progetto. Nello specifico il documento contiene, dopo una breve introduzione, i Casi d'Uso rilevati con i relativi attori, i requisiti legati ai Casi d'Uso e al capitolato e, infine, informazioni utili al loro tracciamento.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Analisi dei Requisiti*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Analista],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Analisi dei Requisiti"],
)


==== Dichiarazione degli Impegni

La #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%201.0.0.pdf")[*Dichiarazione degli Impegni*] è il documento in cui _ALimitedGroup_ ha stimato i costi del progetto, dall'impegno orario per persona e per ruolo, al costo complessivo del progetto e dei ruoli che i componenti del gruppo ricopriranno.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Dichiarazione degli Impegni*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Responsabile],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Dichiarazione degli Impegni"],
)

==== Glossario

I componenti di _ALimitedGroup_ ritengono necessario avere un documento di facile consultazione per ricordare, in maniera rapida ed efficace, i termini utilizzati nei vari ambiti di realizzazione del progetto di Ingegneria del Software.

Per questo motivo, il gruppo ha prodotto un #link("https://alimitedgroup.github.io/Glossario.pdf")[*Glossario*], rivelatosi molto utile nel corso del tempo.

#pagebreak()

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Glossario*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Amministratore],
    text(white)[*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Glossario"],
)

==== Lettera di Candidatura

La #link("https://alimitedgroup.github.io/Lettera%20di%20candidatura.pdf")[*Lettera di Candidatura*] è il documento con cui _ALimitedGroup_ ha ufficialmente presentato la sua candidatura al capitolato proposto dall'azienda #M31.
Essa contiene, in forma riassunta, i punti chiave che hanno spinto i componenti del gruppo a scegliere questo capitolato#super[G], nonché le informazioni generali riguardanti i _repository_#super[G] del gruppo contenente tutti i documenti relativi al progetto.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Lettera di Candidatura*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Responsabile],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Lettera di Candidatura"],
)

==== Lettera di Presentazione

Di due tipologie:
- La Lettera di presentazione per la *_Requirements and Technology Baseline#super[G] (RTB)_*
- La lettera di presentazione per la *_Product Baseline#super[G] (PB)_*

Lo scopo del documento è quello di presentare formalmente la candidatura di _ALimitedGroup_ alle rispettive _Baseline_#super[G].

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Lettera di Presentazione*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Responsabile],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Lettera di Presentazione"],
)

==== Norme di Progetto#super[G]

Il presente documento: stabilisce il _Way of Working#super[G]_ e le pratiche di sviluppo adottate dal gruppo.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Norme di Progetto*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Amministratore],
    text(white)[*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Norme di Progetto"],
)

==== Piano di Progetto#super[G]

Il #link("https://alimitedgroup.github.io/PP%20v1.0.0.pdf")[*Piano di Progetto#super[G] ver. 1.0.0*] è un documento che elenca in maniera ordinata tutte le informazioni riguardanti la pianificazione del gruppo. Conterrà dunque le attività da svolgere di _sprint_#super[G] in _sprint_#super[G], nonché l'analisi dei rischi associati a ciascuna attività.\
Dati i requisiti del progetto, questo documento avrà anche il compito di aggiornare, volta per volta, il consumo orario previsto ed effettivo e dunque, conseguentemente a questo, anche il costo derivato.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Piano di Progetto*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Responsabile],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Piano di Progetto"],
)

==== Piano di Qualifica

Descrive i metodi di qualifica (Verifica e Validazione#super[G]) adottate da _ALimitedGroup_, nonché i Test effettuati sul prodotto e i rispettivi esiti.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Piano di Qualifica*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Amministratore],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Piano di Qualifica"],
)

==== Valutazione dei Capitolati

La #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%201.0.0.pdf")[*Valutazione dei Capitolati*] è un documento pubblicato da _ALimitedGroup_ in data 2024-10-31. \
Quest'ultimo fornisce, per ogni capitolato#super[G], una dettagliata analisi evidenziando i suoi punti di forza e le sue criticità. È suddiviso nelle seguenti sezioni:
- *Panoramica*: che indica l'azienda proponente#super[G], il nome del capitolato e delle informazioni generali sul prodotto da realizzare;
- *Scopo*: indica che vantaggi porta la realizzazione del prodotto;
- *Punti di forza*
- *Criticità evidenziate*
- *Conclusioni*: motivazioni del gruppo sulla scelta/non scelta del capitolato#super[G].
#figure(
  table(
    table.cell(colspan: 2, text(white)[*Valutazione dei Capitolati*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Responsabile],
    text(white)[*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Valutazione dei Capitolati"],
)

==== Verbale Esterno

Verbale delle riunioni svolte con persone esterne al gruppo.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Verbale Esterno*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Amministratore],
    text(white)[*Destinatari*], [#M31, _ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Esterno],
  ),
  caption: [Proprietà del documento "Verbale Esterno"],
)

==== Verbale Interno

Verbali delle riunioni svolte senza la presenza di persone esterne al gruppo.

#figure(
  table(
    table.cell(colspan: 2, text(white)[*Verbale Interno*]),
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    stroke: none,
    gutter: 0.2em,
    text(white)[*Redattore*], [Amministratore],
    text(white)[*Destinatari*], [_ALimitedGroup_, #profBreve(p.tullio), #profBreve(p.cardin)],
    text(white)[*Uso*], [Interno],
  ),
  caption: [Proprietà del documento "Verbale Interno"],
)

== Sviluppo <sviluppo>

Il *Processo di Sviluppo* stabilisce le attività che hanno come scopo quello di Analisi dei Requisiti#super[G], la progettazione, la codifica del Software, l'installazione e l'accettazione di quanto prodotto.

=== Attività previste

Le attività previste dal *Processo di Sviluppo* in base allo standard _ISO/IEC 12207:1995_ sono le seguenti:

- *Implementazione del processo*: ovvero la scelta del *Ciclo di Vita* del Software più appropriato in base allo scopo, l'importanza e la complessità del progetto;
- *Analisi dei Requisiti#super[G]*: consiste nell'identificazione e nella definizione delle necessità dell'utente finale in relazione alle funzionalità che il Software deve offrire. Un'Analisi dei Requisiti#super[G] completa deve descrivere le funzionalità del Sistema, i bisogni degli utilizzatori finali e vincoli imposti dal proponente#super[G];
- *Progettazione dell'architettura*: ovvero l'individuazione degli elementi _Hardware_ e _Software_ del prodotto finale, affinché tutti i requisiti individuati siano soddisfatti (a questo proposito, fondamentale è il tracciamento dei requisiti stessi);
- *Analisi dei Requisiti#super[G] Software*: ovvero l'analisi del modo in cui il Software soddisfa i requisiti lato utente. Deve includere anche le caratteristiche di qualità: caratteristiche funzionali (includendo anche eventuali requisiti prestazionali), le interfacce di ogni elemento Software e requisiti di sicurezza;
- *Progettazione dell'architettura Software*: consiste nel definire le diverse componenti del Sistema e il loro funzionamento, ponendo l'attenzione sulla struttura generale, non nel dettaglio implementativo;
- *Progettazione in dettaglio del Software*: ovvero la progettazione in dettaglio delle singole componenti Software, fino ad individuare le singole unità di ciascuna;
- *Codifica e _testing_ del Software*: ovvero la produzione di tutte le unità di tutte le componenti individuate. Ciascuna di queste parti dovrà essere adeguatamente testata per assicurare il suo corretto funzionamento;
- *Integrazione del Software*: ovvero l'integrazione delle varie parti di una componente nella sua componente completa. Essenziali sono i Test per assicurare il corretto funzionamento;
- *Test di qualifica del Software*: ovvero la realizzazione di appositi Test per assicurare la conformità del Software agli obiettivi di qualità attesi;
- *Integrazione del Sistema*: ovvero l'integrazione di tutte le componenti realizzati nel Sistema finale;
- *Test di qualifica del Sistema*: ovvero il Test dell'intero Sistema per assicurarne il corretto funzionamento;
- *Installazione del Software*: ovvero la fornitura di quanto realizzato al cliente finale nell'ambiente concordato;
- *Supporto per approvazione del Software*: ovvero l'attività per cui il fornitore dovrà supportare l'utilizzatore finale al fine di comprendere se nell'effettivo tutti i requisiti richiesti siano effettivamente soddisfatti.

Apportando lo scopo del processo alle _Baseline_#super[G] previste dal progetto (_Requirements and Technology Baseline#super[G] (RTB)_ e _Product Baseline#super[G] (PB)_), riteniamo particolarmente di interesse le attività di *Analisi dei Requisiti#super[G]* e *Codifica* per la _RTB_#super[G] mentre *Progettazione dell'architettura*, *Progettazione dell'architettura Software* e *Codifica* per la _PB_#super[G] :_ALimitedGroup_ ha quindi deciso di discutere maggiormente nel dettaglio queste attività, aggiungendo e aggiornando le loro sezioni nel momento opportuno (nel dettaglio, le attività di *Progettazione dell'architettura* e *Progettazione dell'architettura Software* saranno inserite a _RTB_#super[G] raggiunta).

=== Analisi dei Requisiti#super[G]

L'*Analisi dei Requisiti#super[G]* è tra le attività cardine della _Requirements and Technology Baseline#super[G] (RTB)_ e ha come fine l'individuazione di tutti i requisiti che il Sistema da noi sviluppato dovrà soddisfare.
Tale analisi, reperibile nell'apposito documento visualizzabile su #link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*], espone nel dettaglio tutte le informazioni necessarie, che saranno poi fondamentali per supportare il lavoro dei progettisti e dei programmatori nelle rispettive attività di progettazione dell'architettura e codifica della stessa (fondamentale riferimento sarà il #link("https://alimitedgroup.github.io/PQ%20v1.0.0.pdf")[*Piano di Qualifica ver. 1.0.0*] che, contenendo i Test e il loro stato alla *Sezione 4*, permetterà di determinare quali requisiti sono soddisfatti e quanti ancora non lo sono).

In particolar modo, il documento raggruppa tutti i Casi d'Uso rilevati e i requisiti ad essi associati. Per una più rapida consultazione sarà ora discussa la nomenclatura nel dettaglio.

==== Casi d'Uso

Per i casi d'Uso viene utilizzata la seguente nomenclatura:

#align(center, text(1.2em)[*`UCPrincipale.Secondario`*])

dove:

- *UC* è un acronimo stante per *U*\se *C*\ase, ovvero la traduzione inglese di Caso d'Uso#super[G];
- *Principale* è un numero crescente stante ad indicare che il Caso d'Uso#super[G] non è correlato ad altri Casi d'Uso oppure è utilizzato da più Casi d'Uso mediante inclusione.
- *Secondario* è un numero crescente stante ad indicare che il Caso d'Uso#super[G] è correlato esclusivamente al Caso d'Uso#super[G] identificato dal valore *Principale*

Si noti che *Principale* è *univoco* tra tutti i Casi d'Uso, dunque non può sussistere l'esistenza di due Casi d'Uso aventi stesso valore *Principale* mentre è possibile che uno stesso valore *Secondario* sia ripetuto, ma *mai* per la stesso valore *Principale*.

Si noti, inoltre, che un Caso d'Uso#super[G] *Secondario* può avere a sua volta delle inclusioni: in tal caso la nomenclatura *Principale*.*Secondario* sarà la parte *Principale* di tale inclusione e seguirà le regole sopra esposte.

La nomenclatura utilizzata è volta ad assicurare l'unicità di ogni Caso d'Uso#super[G].


Ogni Caso d'Uso#super[G] è inoltre accompagnato da un nome che ne riassume lo scopo e una descrizione: per maggiori informazioni si consiglia la lettura della parte introduttiva del documento di #link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*] *(Sezione 2.1)*.

==== Requisiti

Identificati i Casi d'Uso, il documento di #link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*] si concentra sull'individuazione dei requisiti deducibili dagli stessi e dal capitolato#super[G] *(Sezione 3)*.
I requisiti sono anch'essi identificati da una nomenclatura:

#align(center, text(1.2em)[*`R-Numero-Tipolgia-Priorità`*])

dove:
- *R* è per abbreviare la parola *R*\equisito;
- *Numero* è un valore univoco che identifica il requisito;
- *Tipologia* indica il tipo di requisito. I possibili valori sono:
  - *F* per *F*\unzionale;
  - *Q* per *Q*\ualità;
  - *V* per *V*\incolo;
- *Priorità* indica la priorità di sviluppo che quel requisito assume. I valori possibili sono:
  - *Ob* per *Ob*\bligatorio;
  - *De* per *De*\siderabile;
  - *Op* per *Op*\zionale;

Per maggiori informazioni circa la tipologia e la priorità si consiglia la lettura della parte introduttiva del documento di #link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*] *(Sezione 1.1)*.

=== Codifica

==== Scopo
La codifica svolta dai programmatori di _ALimitedGroup_ ha come scopo la realizzazione di quanto progettato dagli analisti e dai progettisti.

Questa sezione descrive le regole e le convenzioni che i programmatori devono seguire per garantire la qualità del codice prodotto.

==== Stile di codifica: Golang

===== Formattazione del codice

La struttura di un file sorgente Golang deve seguire lo standard prodotto dall'eseguibile *gofmt*, un tool sviluppato dal team del linguaggio Golang.

Tale eseguibile dev'essere eseguito in automatico sia nell'ambiente locale di uno sviluppatore (possibilmente dopo l'azione di Save File) sia in ambiente di CI/CD tramite Github Action che bloccano l'errata introduzione di codice non formattato secondo lo standard all'interno del branch#super[G] principale.

===== Pratiche di programmazione
- Variabili globali: evitare l'uso di variabili globali dove possibile
- Funzioni: evitare funzioni troppo lunghe, preferire funzioni brevi e ben definite

===== Convenzioni sintattiche
- Lingua: usare la lingua inglese per tutti i costrutti e commenti
- Nomi: usare nomi significativi per variabili, funzioni, metodi e strutture
- Commenti: commentare il codice in modo chiaro e conciso, ogni funzione deve avere un commento che ne descriva lo scopo e i suoi argomenti
- Indentazione: usare quattro spazi per l'indentazione
- Più istruzioni su una linea: evitare più istruzioni su una linea in quanto rendono difficile la lettura del codice

#pagebreak()
= Processi di Supporto
Tra i processi di supporto utilizzati nel progetto distinguiamo:

- *Documentazione*
- *Gestione delle configurazioni*
- *Accertamento Qualità*
- *Qualifica*, formata a sua volta da:
  - *Verifica*#super[G]
  - *Validazione*#super[G]

Saranno ora descritte nel dettaglio le attività previste.

== Documentazione <documentazione>

Il processo di documentazione è parte fondamentale di tutti i processi primari: il prodotto di tale processo è infatti essenziale per tenere traccia delle decisioni intraprese e per favorire il lavoro asincrono, molto più produttivo di quello sincrono nel nostro ambito.\

Nel dettaglio, il processo di documentazione si occupa della registrazione delle informazioni derivanti da un processo o da un'attività nel ciclo di vita.\
Riguarda dunque l'insieme delle attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari a tutti gli interessati.\

=== Strumenti a supporto

Per redigere la documentazione il gruppo utilizza due strumenti in particolare:

- *_Typst_*: si tratta di un linguaggio _mark-up_ molto recente ma che si sta rivelando una valida alternativa a *LaTeX*#super[G] per la redazione di documenti a carattere scientifico e non solo.
  _Typst_#super[G] permette la realizzazione di una anteprima istantanea, senza necessità di compilare ogni volta il documento, inoltre la sintassi è molto vicina ai linguaggi di programmazione. _ALimitedGroup_ lo utilizza in tutti i documenti.
  Nello specifico, la redazione dei documenti sfrutta funzioni di _Typst_#super[G] appositamente implementate dai componenti di _ALimitedGroup_ presenti all'interno della cartella _lib_ del _repository_#super[G].\
  La descrizione dei vari template nel dettaglio è consultabile nella @creazione-typst, in questa sezione saranno invece descritte le strutture dei vari documenti.

- *_GitHub_*: il gruppo ha deciso di utilizzare il sistema di _ticketing_ e le _pull request#super[G]_ di _GitHub_#super[G] per permettere la redazione, Verifica e approvazione di tutti i documenti. Per ulteriori dettagli consultare la @infrastruttura.

=== Attività previste

Il processo di documentazione è un processo assai delicato, e molto importante. Le attività cardine di questo processo sono due:
- *Produzione*: l'attività che stabilisce con quale metodo il documento deve essere redatto, per ulteriori informazioni vedere la @regole-branch-issue;
- *Manutenzione*#super[G]: l'attività che definisce come un documento viene, eventualmente, modificato; per ulteriori informazioni vedere la @sezione_manutenzione.

=== Verbali <desc-templ-verbale>

La redazione di un verbale sfrutta il _template_ nel _file_ #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/verbale.typ")[_verbale.typ_]

Generalmente un verbale possiede questa struttura iniziale:
- *Pagina di copertina*, con al suo interno:
  - Logo del gruppo;
  - Tipo di verbale (interno o esterno) con annessa data della riunione verbalizzata;
  - Stato del documento;
  - Persone presenti alla riunione;
  - Distribuzione (ossia, i destinatari);
  - Ordine del giorno (in formato riassuntivo);
- Allegato con *tabella delle versioni*;
- *Indice del documento*, generato automaticamente da _Typst_#super[G].

Un verbale successivamente prevede sempre una prima sezione con alcune informazioni generali tra cui:
- *Modalità*, distinta tra "in presenza" o "virtuale" (se virtuale si intende avvenuta sulla piattaforma _Discord_#super[G] salvo diversamente specificato);
- *Data della riunione*;
- *Orario di inizio*;
- *Orario di fine*.

cui seguirà, in elenco, l'ordine del giorno nei vari punti.\

La seconda sezione, che segue quanto appena scritto, esplicita quanto discusso per ogni punto dell'ordine del giorno.\

Segue quindi la penultima sezione, denominata "Esiti della riunione", che riassume quanto concordato. \ L'ultima sezione è dedicata alla _tabella delle decisioni e delle azioni_, che riassume in modo strutturato tutte le decisioni prese e le azioni concordate.\ Queste informazioni vengono integrate e tracciate nel _sistema di ticketing_. \ La tabella è creata tramite la funzione "tabella-decisioni".\

In ultima istanza, i *verbali esterni* devono includere una sezione dedicata all'approvazione esterna.\ Ogni pagina, ad eccezione della copertina, deve riportare il numero e un _header_ con:
- *Nome del gruppo*;
- *Tipo verbale*;
- *Data della riunione*.

=== Diari di bordo

Nell'ambito del progetto di Ingegneria del Software, il _#prof(p.tullio)_ ha previsto delle attività volte ad accertare, in maniera condivisa, lo stato di progresso per ogni singolo gruppo iscritto al I lotto.

In genere, la struttura di un diario di bordo è composta dalle seguenti parti:
- *Risultati raggiunti e confronto con le previsioni*, che elenca quanto abbiamo fatto nel periodo corrente;
- *Obiettivi e attività per il periodo successivo*, che elenca le attività future da completare;
- *Difficoltà riscontrate e questioni aperte*, che ci permette di esporre le problematiche che abbiamo affrontato e quelle su cui ancora nutriamo dei dubbi.

=== Altri documenti <desc-templ-altri-doc>
Per tutti gli altri documenti la struttura è composta da:

- *Pagina di copertina*, con:
  - Nome del documento;
  - Versione;
  - Stato del documento;
  - Data di ultima modifica;
  - Distribuzione (destinatari);
- *Registro delle modifiche*, che viene realizzata automaticamente invocando la funzione per la copertina;
- *Indice dei contenuti*, viene realizzato automaticamente con la stessa funziona menzionata sopra;
- *Elenchi di tabelle e figure*, se presenti nel documento;
- *Corpo del documento*, con sezioni e sotto-sezioni che vengono scritte manualmente.

Ogni pagina, ad eccezione della copertina, dovrà inoltre contenere:
- _*Header*_ con:
  - *Nome del gruppo*;
  - *Titolo del documento*;
  - *Versione del documento*;
- *Numero di pagina*.

=== Produzione <regole-branch-issue>
La produzione di un documento segue questi passaggi:

- *Creazione della issue e del branch secondario*: innanzitutto viene aperta una issue su GitHub#super[G], essenziale per tenere traccia dei compiti da svolgere, in seguito viene creato un branch secondario rispetto al principale nel sistema di versioning, per poter eseguire modifiche senza intaccare il ramo stabile. La denominazione del _branch_#super[G] e delle _issue_#super[G] segue una nomenclatura specifica decisa nel #link("https://alimitedgroup.github.io/VI%2018-11-2024%20v1.0.0.pdf")[*verbale interno*] del *18 Novembre 2024* e riportata nella @creazione-github.

- *Assegnazione della issue e inizio stesura*: in base al ruolo (vedi la @elenco-documenti per maggiori informazioni) viene assegnata l'issue di redazione e si inizia la stesura del documento nel branch dedicato.
- *Verifica*#super[G] : terminata la redazione, il redattore apre una _pull request#super[G]_ su GitHub per chiedere, ad un verificatore#super[G], la Verifica del documento.\ L'esito dell'attività potrà essere positivo oppure negativo. \ Se negativo, il verificatore allega un elenco delle modifiche da apportare ai redattori.

A questo punto il processo diviene differente per i verbali e i rimanenti documenti:

- *Approvazione e pubblicazione (verbali)*: A modifiche ultimate o solo in caso di Verifica positiva, il verificatore richiede al Responsabile di approvare il documento.
Il Responsabile#super[G], una volta approvato il documento, risolve la pull request#super[G] e procede quindi al merge del branch secondario in quello principale. L'azione scatenerà l'avvio di una *_GitHub Action_* che aggiornerà il sito web del progetto con i nuovi documenti approvati. \ Dal momento che un verbale descrive un evento trascorso, è poco probabile debba essere cambiato in futuro, perciò il _ALimitedGroup_ ha deciso che i verbali saranno pubblicati solamente quando approvati.
- *Pubblicazione (altri documenti)*: una volta verificato, il documento può essere pubblicato nella sua versione attuale completando il _merge_ e risolvendo la _Pull Request#super[G]_. \ Questo processo differisce da quello dei verbali, in quanto questi ultimi possono essere integrati nel branch principale (main) solo dopo l'approvazione formale. \ Al contrario, gli altri documenti, essendo di consultazione più frequente, possono essere pubblicati nel branch principale semplicemente dopo la Verifica#super[G], per garantire l'accesso alla versione più aggiornata.
- *Approvazione (altri documenti)*: l'approvazione di un documento implica il raggiungimento di determinati standard di qualità. Similmente a quanto avviene per i verbali, sarà il Responsabile ad approvare il documento a seguito di opportuna _Pull Request#super[G]_.

Nell'ambito della redazione dei documenti vengono utilizzate alcune convenzioni, definite nella prossima sezione.

==== Denominazione e datazione dei documenti <denanddatdoc>

Come osservato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024*, *Sezione 2.3.1* e in seguito estesa a tutti i documenti, la denominazione dei file seguirà la seguente sintassi:

#align(center, text(1.2em)[*`TIPO AAAA-MM-GG # VERSIONE`*])

dove:
- *TIPO* è una sigla che identifica il tipo di documento. Le possibili scelte sono:
  - *VI* per *V*\erbale *I*\nterno;
  - *VE* per *V*\erbale *E*\sterno;
  - *DB* per *D*\iario di *B*\ordo;
  - *NP* per *N*\orme di *P*\rogetto;
  - *PP* per *P*\iano di *P*\rogetto;
  - *AR* per *A*\nalisi dei *R*\equisiti;
  - *PQ* per *P*\iano di *Q*\ualifica.
- *AAAA-MM-GG* indica la data in formato anno-mese-giorno (con due cifre per giorno e mese e 4 cifre per l'anno);
- *\#* è un modificatore, ossia un numero crescente a partire da 2 per indicare eventuali documenti dello stesso tipo redatti lo stesso giorno. Viene omesso sempre per il primo documento in ordine cronologico;
- *VERSIONE* indica la versione corrente del documento.
\
Le date nei documenti dovranno essere scritte sempre nel formato *GG-MM-AAAA* (giorno-mese-anno, con due cifre per giorno e mese e quattro cifre per l'anno).\
Eventuali identificatori dovranno sempre seguire la regola del *_Kebab Case_*, ossia parole separate dal carattere *-*.

=== Manutenzione <sezione_manutenzione>

L'attività di manutenzione è necessaria nel momento in cui un documento ha bisogno di essere aggiornato con nuove informazioni. Il processo di aggiornamento non differisce di molto rispetto al processo di prima redazione, prevedendo infatti la realizzazione di una issue dedicata e di un processo di Verifica mediante _Pull Request#super[G]_.

Per le regole sulla nomenclatura da utilizzare per _branch_#super[G] e _Issue_#super[G] si veda @creazione-github nella parte precedente di questo documento.

== Gestione delle Configurazioni <gest-config>

La gestione delle configurazioni è un processo fondamentale in un progetto: essa permette di identificare le singole componenti del sistema sviluppato e controllarne le modifiche e i rilasci, nonché registrare lo stato di sviluppo di ciascuna. Complessivamente, il processo permette di avere un buon sviluppo.

=== Strumenti a Supporto

Per ogni attività prevista dal processo, _ALimitedGroup_ utilizza:

- _GitHub_#super[G] :per gestire i cambiamenti da effettuare ai documenti e al codice, nonché per garantire a tutti i membri di _ALimitedGroup_ di accedere ai compiti da svolgere;

Per ulteriori informazioni si veda la @implementazione.

=== Attività Previste

L'attività di gestione delle configurazioni svolta dal gruppo si avvale delle seguenti attività:

- *Identificazione della configurazione* ovvero l'identificazione delle componenti che formeranno il prodotto da sviluppare;
- *Controllo della configurazione* ovvero il controllo dei cambiamenti con opportuni metodi di approvazione e rifiuto degli stessi;
- *Registrazione dello stato di configurazione* ovvero il come rappresentare la storia dei cambiamenti subiti da ciascun elemento sviluppato;
- *Valutazione della configurazione* ovvero come determinare l'efficacia del prodotto sviluppato, ossia la sua conformità ai requisiti;

=== Identificazione della configurazione

Il capitolato sviluppato dal nostro gruppo è formato da molte parti, motivo per cui l'identificazione della configurazione si renderà essenziale: per questo motivo, durante la fase di progettazione, sarà necessario schematizzare le varie parti dell'architettura del sistema da sviluppare e allegare il risultato di quanto compreso in un documento apposito da determinare durante la _Product Baseline#super[G] (PB)_.

Per quanto riguarda invece la parte di documentazione, le parti componenti tale sezione del progetto sono state descritte nella @documentazione.

=== Controllo della configurazione <controllo-config>

Il *Controllo della configurazione* è l'attività che disciplina le richieste di modifica che devono essere notificate per poi essere o meno approvate.
Un buon controllo della configurazione dovrebbe prevedere un sistema che permetta di tracciare le modifiche da approvare, consigliando eventuali suggerimenti per ottenere l'approvazione.

_ALimitedGroup_ ha deciso di attuare questa attività mediante l'utilizzo delle *_issue_*, delle *_board_*#super[G] e delle *_Pull Request#super[G]_* di *_GitHub_*, così come descritto qui di seguito:

- _*Issue*_: ogni modifica da apportare deve essere documentata mediante una _issue_#super[G] da assegnare al componente che prenderà in carico la modifica o la redazione di un documento o di una parte di codice.
Generalmente una issue possiede:
- un numero univoco nella _repository_#super[G] che funge da identificativo della _issue_#super[G];
- un nome che esplicita in cosa consiste la _issue_#super[G];
- una descrizione facoltativa;
- una _milestone_#super[G] o una _baseline_#super[G] associata;
- un assegnatario che prenderà in carico il lavoro da effettuare;
- un legame con la _board_#super[G] del progetto;
Una _issue_#super[G] può essere chiusa solo nel momento in cui l'attività che prevedeva è stata verificata e portata dunque nel ramo principale dei _repository_#super[G] :tale operazione può essere effettuata in automatico inserendo, nel commento del _commit_ che esegue lo spostamento delle modifiche al ramo principale, il numero della _issue_#super[G] preceduto da `fix #` (esempio `fix #1` chiude in automatico la issue numero 1).

- _*Board*_: serve per stabilire se una _issue_#super[G] presa in carico è ancora da iniziare, in sviluppo o terminata. La _*Board*_#super[G] identifica in quale periodo è necessario svolgere le attività e, mediante dei diagrammi di Gantt generati da _GitHub_#super[G], aiuta a comprendere la loro durata preventivata ed effettiva, individuando eventuali ritardi;
- _*Pull Request#super[G]*_: un sistema che permette di chiedere la Verifica e (eventualmente) l'approvazione prima di fondere la modifica nel ramo principale del _repository_#super[G]. Le _Pull Request#super[G]_ sono il cuore del controllo della configurazione: permettono infatti di generare un elenco dettagliato e una discussione sulle modifiche da effettuare, permettendo di suggerire cambiamenti prima di considerare le modifiche apportate come definitive.
- _*Teams di GitHub*_: la struttura del _repository_#super[G] permettere solo ai verificatori (e al Responsabile per eventuali approvazioni) la possibilità di poter trasportare delle modifiche nel ramo principale (previa verifica#super[G]).Per queste esigenze, i _repository_#super[G] prevedono tre categorie:
  - Responsabile#super[G];
  - Verificatori;
  - Redattori.

=== Registrazione dello Stato di Configurazione

_ALimitedGroup_ è consapevole della necessità di tracciare i cambiamenti effettuati a documentazione e codice.

L'attività di *Registrazione dello Stato di Configurazione* si occupa proprio di questo e i componenti di _ALimitedGroup_ hanno deciso di implementarla come segue.

Come verbalizzato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024* ed esteso poi a tutta la documentazione, i documenti utilizzeranno il seguente sistema di versionamento:

#align(center, text(1.2em)[*`MAJOR.MINOR.PATCH`*])

dove:

- *MAJOR*: subisce un incremento solo ad approvazione del file;
- *MINOR*: subisce un incremento solo quando è completato sia il processo di modifica che quello di Verifica#super[G];
- *PATCH*: subisce un incremento per modifiche di entità minore, quali correzioni ortografiche e/o di sintassi.

Lo spunto d'uso di tale sistema proviene dal sito #link("https://semverdoc.org/")[semverdoc.org].

In aggiunta, ogni documento avrà un allegato contenente l'elenco cronologico di tutte le modifiche apportate per ogni versione, come anche descritto nella @desc-templ-verbale e @desc-templ-altri-doc.

=== Valutazione della configurazione <valutazione-della-configurazione> //tracciamento dei requisiti, non sono i Test

La *Valutazione della configurazione* è l'attività che prevede di controllare la completezza del Software prodotto rispetto ai suoi requisiti e al design scelto.

_ALimitedGroup_ intende realizzare un *Tracciamento dei Requisiti* per controllare l'aderenza di quanto sviluppato con le aspettative. Più nello specifico, l'obiettivo è realizzare un Prodotto che sia efficiente, cioè soddisfa tutti i requisiti e sufficiente nel senso che soddisfa solo i requisiti necessari.
Il gruppo, durante la parte di sviluppo effettiva, si impegnerà a tracciare, anche nel codice tramite commenti, cosa intende realizzare.

== Accertamento Qualità <accertamento-qualità>

L'*Accertamento della Qualità* (detto anche _*Quality Assurance*_) è un processo che ha come scopo quello di attestare che la realizzazione dei processi e dei prodotti finali sia stata fatta a regola d'arte: i processi e prodotti devono soddisfare determinati requisiti minimi affinché siano efficienti ed efficaci.

Per assicurare qualità _ALimitedGroup_ eseguirà, come suggerito dallo standard _ISO/IEC 12207:1995_ attività di Verifica (@verifica) e Validazione (@validazione).

=== Attività previste

Le attività previste dal processo di *Accertamento della qualità* sono le seguenti:

- *Implementazione del processo*, che prevede l'individuazione degli standard di qualità da rispettare, nonché le procedure da eseguire per raccogliere le valutazioni;
- *Accertamento qualità prodotto*, che prevede il controllo di tutto il materiale prodotto per verificare che questo rispetti gli standard decisi;
- *Accertamento qualità processo*, che prevede il controllo di tutti i processi eseguiti dal gruppo per verificare che questi rispettino gli standard decisi.

_ALimitedGroup_ per assicurare qualità ha individuato specifiche misure discusse alla @metriche. Si è deciso, per una consultazione più rapida, di definire in una sezione apposita tali misurazioni per renderle più velocemente consultabili.

Le misurazioni dovranno essere realizzate alla fine di ogni _sprint_#super[G] e adeguatamente riportate nel #link("https://alimitedgroup.github.io/PQ%20v1.0.0.pdf")[*Piano di Qualifica ver. 1.0.0*] *(Sezione 5)*.

Le metriche per la qualità di prodotto sono disponibili alla @metriche-qt-prodotto mentre quelle di processo alla @metriche-qt-processo.

== Qualifica
=== Verifica <verifica> //did I build the System right? ovvero i Test

Il processo di *Verifica*#super[G] ha come scopo quello di verificare che quanto prodotto sia stato svolto a regola d'arte, in conformità con i requisiti imposti.

Possiamo racchiudere l'obiettivo di questo processo nella risposta alla domanda _"Did I build the System right?"_, ovvero _"Ho realizzato il Sistema correttamente?_.

Tutti gli obiettivi e gli esiti di questo processo dovranno essere adeguatamente riportati nel #link("https://alimitedgroup.github.io/PQ%20v1.0.0.pdf")[*Piano di Qualifica ver. 1.0.0*] *(Sezione 4)*.

==== Strumenti a supporto

Questa sezione sarà ampliata durante lo svolgimento della _Product Baseline#super[G] (PB)_.

Per il calcolo dell'indice di Gulpease è stato utilizzato il seguente servizio #link("https://farfalla-project.org/readability_static/")[farfalla-project.org/readability_static/]

==== Attività previste

In base allo standard _ISO/IEC 12207:1995_, le attività previste da questo processo sono:

- *Implementazione del processo*, che prevede la realizzazione di quanto necessario al perseguimento dell'attività di Verifica#super[G], dalla rilevazione delle criticità del Progetto da analizzare sino alla rilevazione delle problematiche e ai metodi di mitigazione;
- *Attività di Verifica*, ovvero l'attività di Verifica vera e propria in cui è necessario controllare l'efficacia di *Processi*, *Requisiti* (in termini di esaustività e consistenza), *Progettazione* (in termini di efficacia rispetto ai requisiti ed esigenze di #M31), *Codice* (in termini di grado di soddisfacimento dei requisiti che una parte di codice dovrebbe soddisfare), *Integrazione* (delle varie parti del Sistema tra loro) e *Documentazione*.

==== Implementazione del processo

_ALimitedGroup_ ha concluso che la principale necessità è assicurare che il Progetto soddisfi le esigenze di #M31 e per questo ha intenzione di realizzare approfonditi Test#super[G], dalla Documentazione al Codice prodotto.

In merito alla verifica delle componenti del progetto, _ALimitedGroup_ ha stabilito che nessun documento o parte di codice possa essere portato nel ramo principale del _repository_#super[G] del gruppo senza che questo sia prima stato adeguatamente verificato e/o testato ove possibile, così come descritto nella @attività-verifica. Si comprende dunque che il ramo principale del _repository_#super[G] non possa contenere elementi che sono, in quanto potenzialmente non corretti, non di qualità.

Eventuali problematiche di qualsiasi natura non singolarmente risolvibili saranno oggetto di discussione in sede di riunione interna.

Ai fini di descrivere al meglio la parte di _Way of Working#super[G]_ che _ALimitedGroup_ intende adottare per il processo di Verifica#super[G], saranno ora esposti i vari aspetti dell'attività.

==== Attività di Verifica <attività-verifica>

Iniziando dalla *Documentazione*, attività in cui il gruppo si è particolarmente concentrato nella prima fase del Progetto, _ALimitedGroup_ ha stabilito che ogni documento sia sottoposto alla fase di verifica dopo essere redatto, prima che questo possa essere portato nel ramo principale del _repository_#super[G]. Questa attività consiste nel controllare la correttezza grammaticale e sintattica del documento, ma anche la correttezza del contenuto.

Per maggiori informazioni sul processo di redazione di un documento si consiglia la lettura della @regole-branch-issue.

In merito invece alle verifiche relative al *Codice*, questo sarà un argomento che _ALimitedGroup_ affronterà maggiormente nel dettaglio non appena raggiunta la _Requirements and Technology Baseline#super[G]_.

In generale tutte le informazioni relative alla Verifica#super[G], dalle misurazioni agli esiti dei Test effettuati, dovranno essere riportati nel #link("https://alimitedgroup.github.io/PQ%20v1.0.0.pdf")[*Piano di Qualifica ver. 1.0.0*] *(Sezione 4)*.

La Verifica#super[G], in generale può essere realizzata in due modi: mediante *Analisi Statica* e mediante *Analisi Dinamica*, qui di seguito descritte.

===== Analisi Statica

L'*Analisi Statica* è così chiamata in quanto sono attività di Verifica che *non* prevedono l'esecuzione dell'oggetto da verificare. Si tratta dunque di una Verifica che si concentra maggiormente sulla sintassi e sulla correttezza effettiva di quanto scritto, al fine di rilevare potenziali problemi ancor prima che questi si possano verificare mediante l'esecuzione.

L'*Analisi Statica* può essere realizzata mediante *metodi formali*, ovvero mediante prove matematiche, oppure per *metodi di lettura*, meno formali ma comunque efficaci.

I *metodi di lettura* sono due:

- *Walkthrough*, che suppone di essere consapevoli dell'esistenza di un problema, ma di non sapere di che cosa si tratta e dove si trova. Richiede dunque un'analisi approfondita di tutto l'oggetto di verifica#super[G] :è una metodologia costosa e poco applicabile perché difficilmente automatizzabile;
- *Ispezione*, si basa sulla conoscenza dei possibili problemi senza però verificarne la presenza, risulta meno efficace rispetto al primo sistema, in quanto non è completamente esaustiva, soprattutto per attività appena avviate. Tuttavia, consente di creare una lista di controllo da applicare all’oggetto di verifica#super[G], permettendo così di individuare potenziali errori o problemi.

Tra i due, data l'alta mole di oggetti da verificare, l'*ispezione* è preferibile in quanto, potendola realizzare mediante una lista di controllo, è automatizzabile.

===== Analisi Dinamica

L'*Analisi Dinamica* è così chiamata perché prevede, per poter essere effettuata, l'esecuzione dell'oggetto da verificare.
L'intento è quello di rimuovere i _fault_, ovvero elementi che hanno determinato un comportamento inatteso, mediante l'esecuzione del codice e la rilevazione delle _failure_, ovvero esecuzioni il cui esito non era quello atteso.

L'*Analisi Dinamica* assolve il proprio compito mediante i Test#super[G], che devono essere *ripetibili* (poiché se si presenta un _failure_ e i _fault_ che lo ha causato viene risolto è necessario eseguire nuovamente il Test per verificarne l'effettiva correzione) e automatizzabili (questo ottenibile mediante _driver_ che chiamano le parti di codice non direttamente eseguibili, _stub_ che sostituiscono parti di codice richiamabili per testare la componente che le chiama e _logger_ che registrano l'esito dei Test in un formato comprensibile da un automa).

Per essere corretto, un Test#super[G] deve essere indipendente dall'ambiente di esecuzione e restituire, dato uno stesso input, lo stesso output, che deve essere corretto rispetto all'input fornito.

Le principali tipologie di Test#super[G] sono:
- *Test di Unità*;
- *Test di Integrazione*;
- *Test di Sistema*;
- *Test di Regressione*.

La nomenclatura utilizzata per descrivere tali Test (reperibili nel #link("https://alimitedgroup.github.io/PQ%20v1.0.0.pdf")[*Piano di Qualifica ver. 1.0.0*] alla *Sezione 4*) è la seguente:

#align(center, text(1.2em)[*`T-#-Tipo`*])

dove:

- *T* indica la parola *T*\est
- *\#* è un numero crescente che identifica, all'interno del tipo, un determinato Test
- *Tipo* classifica il Testin una delle seguenti tipologie:
  - *U* per Test di *U*\nità
  - *I* per Test di *I*\ntegrazione
  - *S* per Test di *S*\istema
  - *A* per Test di *A*\ccettazione

Ogni Testha poi uno stato tra i seguenti:

- *S* ovvero *S*\uperato
- *I* ovvero *I*\mplementato
- *NI* ovvero *N*\on *I*\mplementato

====== Test di Unità

I *Test di Unità* verificano la correttezza delle unità del codice, ovvero parti del Sistema che, eventualmente avvalendosi di moduli, costituiscono una componente piccola ma con una responsabilità unica, non condivisa e sufficientemente grande per poter essere testata.

Questi Test#super[G] sono di due tipologie:

- *Test Funzionali*: sono Test che verificano gli input e gli output dati al sistema, ma senza verificare la logica che porta alle conclusioni di tali risultati. Non guardando la logica dell'unità, sono per questo detti anche *black-box*. Per realizzare dei buoni Test funzionali è necessario realizzare, data una unità, Test su cinque classi di valori in input: uno non ammissibile "inferiore" all'insieme dei valori ammissibile, uno tra i valori "estremi inferiori" ammissibili, uno tra i valori ammissibili, uno tra i valori "estremi superiori" ammissibili e uno tra i valori non ammissibili "superiori".
- *Test Strutturali*: sono Test che invece concentrano l'attenzione sulla logica del programma, su quanti e quali _statement_ del codice vengono effettivamente eseguiti.

====== Test di Integrazione

Una volta attestato che le varie unità funzionano correttamente, è necessario assicurarsi che le varie unità "parlino" correttamente tra di loro, verificandone quindi l'integrazione. Per effettuare tale integrazione è possibile seguire due metodologie:

- *Top - Down*: prevede di verificare prima le componenti con maggior numero di dipendenze, ovvero quelle che hanno maggiore responsabilità verso l'esterno del Sistema;
- *Bottom - Up*: ovvero a partire dalle componenti con minore dipendenze d'uso, solitamente dunque quelle con maggiore importanza all'interno del Sistema.

====== Test di Sistema

Sono Test#super[G] che mirano a verificare la correttezza del Sistema nel suo complesso, per controllare l'effettiva efficacia del Sistema rispetto ai suoi requisiti.

======= Test di Regressione

Durante l'esecuzione dei Test#super[G] descritti in precedenza, è possibile che uno di questi segnali un problema: in tal caso è necessario analizzare il problema, sviluppare una soluzione, codificarla e infine controllare che il problema sia stato risolto ripetendo il Test#super[G].

È tuttavia necessario assicurarsi che una correzione apportata non introduca un problema precedentemente risolto: a questo scopo non ci si limita all'esecuzione del solo Test#super[G] fallito, bensì di tutti i Test#super[G], per evitare, di fatto, una regressione.

=== Validazione <validazione>

Lo scopo del processo di *Validazione*#super[G] è quello di tracciare l'efficacia di quanto sviluppato, ovvero comprendere se quanto realizzato soddisfa le esigenze di #M31.
Potremmo riassumere lo scopo della *Validazione*#super[G] nella risposta alla domanda _"Did I build the right System?"_, ovvero _"Ho realizzato il giusto Sistema?_.

==== Attività previste

In base allo standard _ISO/IEC 12207:1995_, le attività previste da questo processo sono:

- *Implementazione del processo*
- *Attività di Validazione*

===== Implementazione del processo

_ALimitedGroup_ ha studiato le esigenze di #M31 e ha racchiuso tutti i requisiti da soddisfare all'interno dell'#link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*] *(Sezione 3)*.

Come già previsto da quanto descritto alla @valutazione-della-configurazione, il *Tracciamento dei Requisiti* sarà un elemento valido anche al processo di Validazione#super[G]: permette infatti di controllare se il prodotto funziona correttamente (un requisito è soddisfatto solo se il codice che lo implementa funziona correttamente) ed è conforme ai requisiti (perché il loro soddisfacimento è, per l'appunto, tracciato).

_ALimitedGroup_, per realizzare l'attività di Validazione vera e propria, si impegna a *tracciare i Requisiti* ed ad effettuare *Test di Accettazione* per controllare l'efficacia di quanto sviluppato e verificato, simulando scenari di utilizzo da parte di #M31.

===== Attività di Validazione

_ALimitedGroup_, per realizzare l'attività di Validazione vera e propria, di realizzare dunque il *tracciamento dei Requisiti* ed eventuali *Test di Accettazione* per controllare l'efficacia di quanto sviluppato e già verificato, simulando scenari di utilizzo da parte di #M31.
#pagebreak()
= Processi Organizzativi

I *Processi Organizzativi* sono dei processi a supporto del progetto che assicurano il buon andamento dell'intero progetto.
Le attività previste assicurano la buona esecuzione di tutti i processi adottati e l'adozione di eventuali miglioramenti, la gestione delle infrastrutture utilizzate e la formazione del team nei compiti da seguire.

Tra i processi organizzativi si individuano:

- *Gestione dei Processi*
- *Infrastruttura*
- *Miglioramento*
- *Formazione*

== Gestione dei Processi <gest-process>

La *Gestione dei Processi* ha l'obiettivo di individuare i compiti da svolgere e i ruoli ai quali questi saranno assegnati, nonché permettere una comunicazione interna ed esterna efficace e altresì garantire lo svolgimento delle varie attività in maniera efficace mediante un'opportuna pianificazione.

=== Attività previste

Le attività principali, osservate da _ALimitedGroup_, previste da questo processo sono:
- *Inizializzazione*: è necessario stabilire i requisiti delle attività da svolgere, cercando di comprendere quali risorse esse richiedono. È compito del *Responsabile*#super[G] determinare queste caratteristiche che vengono comunque discusse internamente durante le riunioni interne.
- *Pianificazione*: è necessario, stabiliti i requisiti, comprendere il tempo necessario per completare le attività, così come è necessario anche stimare i costi economici e temporali necessari allo svolgimento. Per facilitare questo compito, è stato scelto di dividere le responsabilità in vari ruoli, vedi @ruoli.
- *Esecuzione e controllo*: l'esecuzione delle attività è affidata quindi ai vari ruoli e il *Responsabile*#super[G] dovrà costantemente monitorare lo stato di progresso e avanzamento complessivo.
- *Revisione e valutazione*: una volta effettuata l'attività è necessario controllare la conformità di quanto prodotto: questo avviene per opera del *Verificatore*#super[G]. Per un dettaglio più specifico delle attività di revisione si veda la @regole-branch-issue per quanto riguarda la documentazione mentre @valutazione-della-configurazione, @verifica e @validazione per il codice.
- *Finalizzazione*: un'attività è da reputarsi conclusa solo nel momento in cui viene definitivamente approvata. Come anticipato nelle Sezioni precedenti, questa operazione viene eseguita al pari di una normale attività di verifica#super[G], con la sola eccezione che la risoluzione della _Pull Request#super[G]_ associata determina la chiusura della _Issue_#super[G] e del _branch_#super[G] utilizzato per la redazione/modifica della componente.

Nell'interesse dello scopo del presente documento saranno ora descritti i ruoli prima citati e le loro responsabilità, previsti in particolar modo dall'attività di *pianificazione*.
Sarà quindi dato spazio ad una parte fondamentale del gruppo, ovvero i metodi di *coordinamento*.

=== Ruoli <ruoli>
#figure(
  table(
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    table.header(text(white)[*Ruolo*], text(white)[*Compiti e responsabilità*]),
    "Responsabile",
    (
      "Al Responsabile spetta il compito di comprendere, tenendo in considerazione quanto già portato a termine, quanto da realizzare nei periodi di sviluppo successivi, individuando le attività, i costi e rischi associati e infine assegnandone lo svolgimento ai componenti che vestono in quel periodo il ruolo più appropriato.
Il Responsabile è anche colui che ha il compito, a nome di tutto il gruppo, di dialogare con le parti esterne ad "
        + [_ALimitedGroup_]
        + ", quali, a mero titolo esemplificativo, l'azienda proponente del capitolato "
        + [#M31]
        + ".
In ultima istanza, è sempre compito di questo ruolo "
        + [*approvare*]
        + " i vari documenti prodotti da "
        + [_ALimitedGroup_]
        + "."
    ),

    "Amministratore",
    (
      "Noto anche come "
        + [_System Administrator_ o _SysAdmin_]
        + ", ha l'importante compito di gestire e migliorare l'infrastruttura che i membri di "
        + [_ALimitedGroup_]
        + " utilizza per portare a compimento le varie attività del progetto didattico, a partire dal sistema di ticketing sino agli strumenti utilizzati per la verifica e Validazione di quanto realizzato.
    È questo ruolo che copre la responsabilità di risolvere quanto prima eventuali problematiche legate alle infrastrutture. Per via della sua approfondita conoscenza del "
        + [_Way of Working_]
        + " adottato dal gruppo, necessario per poter al meglio gestire le infrastrutture, è di questo ruolo il compito di redigere il presente documento e il "
        + [*Piano di Qualifica*]
        + ", ma può risultare un ruolo adatto anche a redigere sia i verbali interni sia quelli esterni."
    ),

    "Verificatore",
    (
      "Ha il compito di garantire che tutto ciò che è prodotto, dalla documentazione alla più piccola attività, sia svolta a regola d'arte.
Si occupa di eseguire Test approfonditi e revisioni del Software, identificando eventuali aree di miglioramento specie in ambito qualitativo. È sempre di questo ruolo la responsabilità di verificare la correttezza dei vari documenti ad ogni modifica effettuata."
    ),

    "Analista",
    (
      "Questo ruolo è Responsabile nell'identificazione dei requisiti obbligatori, desiderabili e facoltativi del progetto, considerando quanto discusso nelle riunioni esterne con l'azienda proponente "
        + [#M31]
        + ".
È sempre affidato a questo ruolo il compito di redigere l'"
        + [*Analisi dei Requisiti*]
        + "."
    ),

    "Programmatore",
    (
      "Il Programmatore è Responsabile dello sviluppo del Software, traducendo il design architetturale in codice funzionante. Collabora strettamente con il progettista per assicurarsi che tutte le funzionalità siano implementate secondo le specifiche.
    Il suo lavoro è fondamentale per il progresso del progetto e richiede una buona conoscenza delle tecnologie adottate. È affidata a questo ruolo anche la responsabilità di realizzare Test automatici per verificare il corretto funzionamento del codice sviluppato."
    ),

    "Progettista",
    (
      "È un ruolo cruciale per lo svolgimento del capitolato: esso infatti ha il compito di trasformare requisiti in un design architetturale, producendo documenti e schemi esplicativi e definendo le scelte tecnologiche."
    ),
  ),
  caption: [Compiti e responsabilità di ogni singolo ruolo],
)

=== Coordinamento

Una parte fondamentale del progetto risiede nelle capacità di coordinamento del gruppo, sia internamente che esternamente.

Per svolgere adeguatamente questa attività è necessario prevedere e svolgere riunioni apposite e avere canali di comunicazione funzionanti e utili allo scopo.

==== Riunioni

Le riunioni sono di due tipi: *interne* ed *esterne*.

_ALimitedGroup_ realizza periodicamente, generalmente all'inizio di ogni _sprint_#super[G], riunioni interne per il coordinamento interno: durante le stesse viene effettuato un punto della situazione sul progetto, un momento in cui i componenti si aggiornano sulle attività svolte e su quelle non terminate in tempo.
L'attività di dialogo permetterà al *Responsabile*#super[G] di avere una panoramica attuale su quanto svolto, permettendogli così di gestire al meglio il periodo successivo.
In queste occasioni è anche possibile effettuare la rotazione dei ruoli in caso di necessità (quali, a mero titolo di esempio, il termine delle ore di un determinato ruolo per una determinata persona oppure l'esaurimento di compiti appartenenti a quel ruolo).

Durante lo svolgimento del progetto è inoltre utile avere degli incontri con #M31: si tratta dunque di riunioni *esterne* dove i componenti di _ALimitedGroup_ hanno l'occasione di presentare il lavoro sino a quel momento svolto e chiarire eventuali dubbi riscontrati. Contrariamente alle riunioni interne, non è prevista una periodicità: gli incontri sono fissati di volta in volta per mezzo di richiesta ad #M31 mediante posta elettronica.

L'esito degli incontri dovrà sempre essere documentato mediante la redazione di appositi *verbali*, rispettivamente *interni* ed *esterni*: per maggiori informazioni si veda la @elenco-documenti.

==== Comunicazioni

In merito ai metodi comunicativi, _ALimitedGroup_ utilizza *Telegram*#super[G] e *Discord*#super[G] per, rispettivamente, comunicazioni asincrone e sincrone (riunioni).
In genere una comunicazione urgente ma che non richiede approfondita discussione o per comunicazioni di servizio minori (come, a titolo di esempio, dubbi minori e non urgenti su particolari argomenti) i componenti utilizzeranno l'apposito gruppo realizzato su *Telegram*#super[G] o messaggi diretti ad un componente specifico sempre utilizzando la medesima piattaforma, mentre la realizzazione di riunioni interne e la discussione di criticità complesse richiederanno lo svolgimento di una riunione presso il _Server_ *Discord*#super[G] appositamente realizzato.

Per quanto riguarda invece le comunicazioni esterne, queste verranno sempre realizzate dal *Responsabile*#super[G] mediante l'utilizzo dell'indirizzo di posta elettronica di _ALimitedGroup_ #link("mailto:alimitedgroup@gmail.com")[alimitedgroup\@gmail.com].

Per maggiori informazioni si consiglia la lettura del processo di *Infrastruttura* alla @infrastruttura.

== Infrastruttura <infrastruttura>

Il processo di *Infrastruttura* è responsabile della creazione e del mantenimento dei componenti (di qualsiasi natura, sia _Hardware_ che _Software_) necessari per permettere tutti gli altri processi.

=== Attività previste

Si compone delle seguenti attività:

- *Implementazione*
- *Creazione*
- *Manutenzione*#super[G]

Tali attività saranno descritte nel dettaglio nelle prossime Sezioni.

=== Implementazione <implementazione>

_ALimitedGroup_ ha compreso, durante lo svolgimento del progetto didattico, la necessità di adottare appositi strumenti per permettere il lavoro asincrono dei suoi componenti. Di seguito vengono elencati l'insieme di tutti gli strumenti utilizzati.

- _Discord_#super[G]
- _Git_
- _GitHub_#super[G]
- _Google Calendar_
- _Google Fogli_
- _Google Mail_
- _Microsoft Teams_
- Script in _Python_
- _Telegram_#super[G]
- _Typst_#super[G]

#figure(
  table(
    columns: (1fr, 4fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    table.header(text(white)[*Strumento*], text(white)[*Descrizione*]),
    [*Discord*],
    [_Discord_ è un programma di messaggistica istantanea e videoconferenza utilizzato da _ALimitedGroup_ per realizzare le proprie riunioni interne in modalità *virtuale*.],

    [*Git*],
    [Programma originariamente sviluppato da Linus Torvalds per il versionamento del codice: _ALimitedGroup_ ha deciso di impiegarlo come strumento di versionamento per il sorgente della propria documentazione e il codice prodotto.
      Git è dunque un potente _Version Control System (VCS)_ che permette di versionare efficacemente tutto ciò che viene prodotto grazie anche alla possibilità di organizzare gli sviluppi in _branch_ separati.],

    [*GitHub*],
    [*GitHub* è un prodotto che permette principalmente la memorizzazione su dispositivo remoto di _repository_ Git, ma non solo: esso infatti si è evoluto nel corso del tempo per permettere la collaborazione asincrona tra _developer_.
      _ALimitedGroup_ utilizza _GitHub_ per sincronizzare gli sviluppi tra i vari membri, tenere traccia del _backlog_ mediante il sistema di _issue_ e _project board_, nonché permettere la verifica di quanto redatto prima che tali documenti o codice raggiunga il _branch_ principale. Per i dettagli d'uso si rimanda alla @controllo-config.],

    [*Google Calendar*],
    [Per condividere con il gruppo tutti gli appuntamenti _ALimitedGroup_ utilizza *Google Calendar*.],

    [*Google Fogli*],
    [_ALimitedGroup_ ha deciso di utilizzare un documento di *Google Fogli* per tenere traccia delle attività svolte settimanalmente durante gli _sprint_],

    [*Google Mail*],
    [Il servizio di posta elettronica utilizzato da _ALimitedGroup_ per tutte le comunicazione verso l'esterno],

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

=== Creazione <creazione>

L'attività di *creazione* guida la realizzazione dell'infrastruttura. Di seguito i dettagli per ogni prodotto utilizzato.

==== Discord

Per utilizzare *Discord*#super[G] è stato realizzato un server con un canale testuale e un canale vocale apposito per le riunioni.

==== Git

*Git* non richiede particolari modifiche: deve essere configurato inserendo username e email con cui il componente interagisce normalmente con il _repository_#super[G] GitHub del progetto.

==== GitHub <creazione-github> //action

Il #link("https://github.com/alimitedgroup/alimitedgroup.github.io/tree/main")[_repository_ *GitHub*#super[G] dedicato alla documentazione] è strutturato in maniera da favorire la produzione dei documenti. All'interno è possibile trovare varie _directories_, qui di seguito verranno descritte quelle di maggior importanza:

- *.github/workflows*: contiene lo script in _Python_ che si occupa di compilare i files _Typst_#super[G] dei documenti ed aggiornare il sito di conseguenza. Contiene inoltre lo script python per applicare i riferimenti delle parole presenti nel Glossario;
- *.vscode*: contiene informazioni utili per l'_IDE_ di sviluppo _Microsoft Visual Studio Code_, se questo viene utilizzato per la stesura dei documenti;
- *01-candidatura*: contiene, con le eventuali _sub-directories_ i file della candidatura, ossia la prima fase del progetto;
- *02-RTB*: contiene, con le eventuali _sub-directories_ i file della _Requirements and Technology Baseline#super[G]_ (RTB), ossia la seconda fase del progetto;
- *assets*: contiene _files_ utili per il sito web e i documenti, come loghi e _fonts_;
- *lib*: contiene i file _template_ per la redazione dei documenti;
- *website*: contiene i file relativi al sito web del gruppo.

È inoltre possibile trovare il file _*.gitignore*_ (utile per evitare il tracciamento di alcuni file specifici), il file _*README.md*_ (che permette di realizzare la descrizione nella pagina principale del _repository_#super[G]) e _*docs.typ*_ (altro file di utilità per i documenti).

Come descritto nella @regole-branch-issue, la redazione o modifica di un documento richiede la creazione di un branch secondario. Tale branch avrà un nome che segue il seguente schema:

#align(center, text(1.2em)[*`#-azione-documento-data`*])

Dove:
- Al posto di *\#* va inserito il numero della _Issue_#super[G] le cui modifiche operate nel branch determineranno la chiusura
- Al posto di *azione* va inserita l'azione fatta nel _branch_#super[G] ossia:
  - *redazione* per indicare la redazione di un nuovo documento
  - *aggiornamento* per indicare la modifica di un documento esistente
- Al posto di *documento* va inserito la tipologia di documento interessato dalla modifica, come, a mero scopo esemplificativo, *verbale* oppure *norme-progetto*
- Al posto di *data* la data del documento, se tale documento la prevede (ad esempio i *verbali*)

Il gruppo ha poi deciso di utilizzare le _Issue_#super[G] di GitHub per tracciare le attività da fare. Generalmente, il nome di una _Issue_#super[G] segue il seguente schema:

#align(center, text(1.2em)[*`azione documento data`*])

Dove *azione*, *documento* e *data* hanno lo stesso significato della nomenclatura utilizzata per i _branch_#super[G].
Ogni _Issue_#super[G] è inoltre legata ad una _Project Board_, uno strumento di GitHub che permette di vedere velocemente che attività ci sono ancora da svolgere e quali invece sono in corso.

La chiusura di una _Issue_#super[G] avviene sempre ed esclusivamente mediante l'apertura di una _Pull Request#super[G]_ e al seguito di una verifica con esito positivo: in tal caso il *Verificatore*#super[G] che ha effettuato la verifica o il *Responsabile*#super[G] potrà procedere alla chiusura della stessa con conseguente entrata delle modifiche nel _branch_#super[G] principale e questa azione determinerà la chiusura automatica della _Issue_#super[G]. Qualora _GitHub_#super[G] non segnalasse tale automazione, sarà necessario procedere ad aggiungere al commento di chiusura della _Pull Request#super[G]_ la dicitura
#align(center, text(1.2em)[*`fix #issue`*])

dove al posto di *_issue_*#super[G] va inserito il numero della issue associata alla _Pull Request#super[G]_.

È bene sottolineare che seppur la chiusura di una _Issue_#super[G] può essere effettuata manualmente in caso di necessità, questo *compromette fortemente* la *tracciabilità* di quanto effettuato.

In ultima istanza, il gruppo ha configurato anche la funzionalità fornita da GitHub denominata *GitHub Actions*, che permette di realizzare azioni automatiche quando un commit viene realizzato nel branch di sviluppo principale (*main*): nello specifico, l'action esegue, grazie anche all'ausilio di uno script Python, la compilazione dei documenti e la pubblicazione nel #link("https://alimitedgroup.github.io/")[sito web] del gruppo.

==== Google Calendar

In merito al calendario condiviso, è affidato al *Responsabile*#super[G] il compito di aggiungere gli eventi del gruppo, dai diari di bordo alle riunioni interne ed esterne programmate.

Il calendario è condiviso tra i vari membri, che riceveranno un promemoria almeno un giorno prima rispetto l'evento in questione.

Rimane responsabilità di ogni membro controllarlo periodicamente.

==== Google Fogli

Il file condiviso di *Google Fogli* prevede tre schede:

- *Dashboard*#super[G]: fornisce un prospetto aggiornato delle ore preventivate, quelle utilizzate e quelle rimanenti per ogni ruolo, nonché un dettaglio per ogni _sprint_#super[G]. È responsabilità di ogni componente aggiornare l'impegno orario effettivo durante lo _sprint_#super[G] ad ogni ora produttiva svolta, annotando l'elenco delle attività svolte;
- *Grafico*: fornisce una rappresentazione grafica delle informazioni contenute nella *Dashboard*#super[G].

==== Google Mail

La casella di Google Mail non ha richiesto particolari configurazioni.

==== Microsoft Teams

La piattaforma *Microsoft Teams* viene controllata direttamente da #M31, in quanto tale non necessita di alcuna operazione.

==== Script in Python

In merito agli Script di _Python_, questi non necessitano di particolare modifiche manuali: possono essere eseguiti direttamente senza necessità di alcuna operazione aggiuntiva.

In merito allo Script sulla compilazione dei file _Typst_#super[G] e aggiornamento del sito, questo viene eseguito automaticamente come descritto nella sezione @creazione-github.

==== Telegram

_ALimitedGroup_ ha realizzato un gruppo *Telegram*#super[G] per le comunicazioni di minore importanza.
Tale gruppo è configurato in maniera tale da escludere il possibile ingresso di persone esterne: ad eccezione di questo, non richiede operazioni di interesse per questo documento.

==== Typst <creazione-typst> //migliorare

L'ambiente per la realizzazione dei documenti, *Typst*#super[G], è stato personalizzato a partire dalla realizzazione di _template_, contenenti funzioni utili alla stesura dei documenti e conservati nella cartella _lib_ del _repository_#super[G].

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
- *Norme di Progetto#super[G]*;
- *Piano di Progetto#super[G]*;
- *Piano di Qualifica*;
- *Analisi dei Requisiti#super[G]*;

che assumono, all'interno del progetto, un'importanza significativa rispetto ad altri (verbali, diari di bordo etc...) abbiamo realizzato un _template_ apposito, che permette di automatizzare la realizzazione della struttura adatta a loro.\
Tuttavia, l'utilizzo di tale _template_, denominato #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/importantdocs.typ")[*_importantdocs.typ_*] non è obbligatorio e può essere integrato con l'utilizzo di ulteriori _template_.

I vari documenti sono spesso accomunati da esigenze particolari servibili mediante l'utilizzo di funzioni non caratteristiche di alcun documento.\
Tali funzioni sono sempre nel file #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/common.typ")[*_common.typ_*]:
- *p* : permette l'inserimento delle informazioni riguardanti ogni persona coinvolta in questo progetto, quali i componenti del gruppo o i docenti di Ingegneria del Software, utile per evitare erroneamente di inserire informazioni non veritiere;
- *M31* : permette di visualizzare il nome dell'azienda proponente#super[G]. Il nome è personalizzato con il font _"Futura"_ e messo sempre in grassetto;
- *abbrev* : preso un _output_ fornito dalla funzione _p_, inserisce nome e cognome della persona selezionata;
- *prof* : permette la visualizzazione, da un _output_ della funzione _p_, del nome e cognome del docente selezionato preceduti dalla dicitura "Prof.";
- *issue*#super[G] : fornisce la possibilità di inserire il _link_ che si riferisce ad una determinata _issue_#super[G], tramite il numero associato a quest'ultima (e opzionalmente il _repository_#super[G], altrimenti viene di _default_ inserito quella della documentazione);
- *pr*#super[G] : come sopra, ma per indicare le _pull request#super[G]_;
- *doc* : che, preso in _input_ il nome del documento e il testo da inserire, fornisce il _link_ per quel documento con al suo posto il testo dato.

=== Manutenzione

A causa dei continui sviluppi nel progetto _ALimitedGroup_ è consapevole che l'infrastruttura subirà nel tempo cambiamenti e potrà causare possibili problemi: è per questo affidato all'*Amministratore* il compito di presiedere al controllo del regolare funzionamento della stessa, aggiornandone le funzionalità qualora errori o cambiamenti lo rendano necessario.

== Processo di Miglioramento <miglioramento>

Il Processo di *Miglioramento* consiste, in base allo standard _ISO/IEC 12207:1995_, nello stabilire, consolidare, misurare, controllare e migliorare i processi utilizzati durante il ciclo di sviluppo di un Software.

=== Attività previste

Il processo prevede tre attività:

- *Inizializzazione del processo*, ovvero stabilire i processi organizzativi e realizzare l'opportuna documentazione;
- *Valutazione del processo*, ovvero stabilire un modo per valutare e documentare le revisioni dei vari processi con lo scopo di comprenderne l'efficienza e l'efficacia;
- *Miglioramento del processo*, ovvero stabilire come un processo inefficace o inefficiente possa essere migliorato, osservando le revisioni effettuati nei periodi in cui questo era in atto;

=== Inizializzazione del processo

Come anticipato, è necessario stabilire dei processi organizzativi che guidino la realizzazione del progetto durante lo svolgimento di tutte le sue attività.
Tali processi devono essere documentati ed è lo scopo principale del presente documento.

=== Valutazione del processo

Stabiliti i processi, si rivela essenziale controllare l'andamento degli stessi: è necessario dunque individuare delle misurazioni appropriate allo scopo di valutare l'efficienza e l'efficacia dei processi adottati e realizzare periodici controlli sui dati provenienti da queste metriche.
Per maggiori informazioni si veda la @metriche-qt-processo.

=== Miglioramento del processo

Effettuate le misurazioni e controllate le stesse è necessario dedurre i processi che presentano problematiche e individuare opportune soluzioni che consentano di migliorare gli stessi. La documentazione dovrà dunque essere aggiornata per riflettere questi cambiamenti.

== Processo di Formazione <formazione>

Il processo di formazione ha lo scopo di mantenere i membri di _ALimitedGroup_ aggiornati sui cambiamenti effettuati, nonché definire come gli stessi debbano apprendere le nozioni necessarie allo svolgimento del Progetto.

=== Attività previste

Il processo di formazione include le seguenti attività:

- *Implementazione del processo* ovvero la realizzazione dei meccanismi necessari alla formazione del personale;
- *Sviluppo di materiale per la formazione* ovvero lo sviluppo di materiale atto alla formazione del gruppo;
- *Implementazione del piano per la formazione* ovvero la realizzazione di un piano per formare e mantenere formato il gruppo.

=== Implementazione del processo

In base a quanto previsto dallo standard _ISO/IEC 12207:1995_ è necessario venga realizzata una revisione dei requisiti del progetto per comprendere le competenze che i membri di _ALimitedGroup_ dovranno sviluppare per portare a compimento il progetto didattico.

_ALimitedGroup_ ha perciò sin da subito analizzato i requisiti e compreso quali tecnologie sarà necessario approfondire dal punto di vista del progetto vero e proprio:

- Il linguaggio di programmazione *Go*#super[G];
- Il sistema di messaggistica per sistemi distribuiti *NATS*#super[G];
- Il sistema di containerizzazione *Docker*#super[G].
e dal punto di vista della produzione della documentazione:

- Il linguaggio di marcatura *Typst*#super[G];
- Il linguaggio di programmazione *Python*.

Saranno inoltre utili i seguenti servizi:

- Il _Software_ per il versionamento *Git*;
- Il servizio di _hosting_ per progetti *GitHub*#super[G].

=== Sviluppo di materiale per la formazione

Data la natura del progetto, ovvero a fini didattici, _ALimitedGroup_ ha optato per la ricerca di materiale utile allo studio rispetto alla produzione propria. In particolar modo, il gruppo ha concluso che lo studio sarà affrontato sfruttando le seguenti risorse:
#figure(
  table(
    columns: (1fr, 3fr),
    inset: 5pt,
    align: horizon,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    text(white)[*Strumento*], text(white)[*Risorsa*],
    [*Go*],
    [Risorse presenti sul #link("https://go.dev/learn/")[sito del linguaggio]\;
      in particolare, l'autore di questa sezione ha trovato molto utile il #link("https://go.dev/tour")[_Tour of Go_]],

    [*NATS*],
    [Videocorso realizzato dagli stessi sviluppatori del prodotto,
      reperibile su #link("https://youtube.com/playlist?list=PLgqCaaYodvKY22TpvwlsalIArTmc56W9h")[YouTube]],

    [*Docker*],
    [Si consiglia di installare Docker Desktop, aprire un terminale,
      avviare l'immagine #link("https://hub.docker.com/r/docker/getting-started")[`docker/getting-started`]
      (istruzioni presenti al link), ed infine aprire http://localhost in un browser.
      Si troverà un tutorial che spiega le basi di Docker.],

    [*Typst*],
    [La documentazione ufficiale ha un tutorial base al seguente link https://typst.app/docs/tutorial.
      Purtroppo, c'è una relativa carenza di risorse più avanzate,
      che tuttavia non dovrebbero essere necessarie per scrivere base e/o usando template già fatti.],

    [*Python*],
    [Python, data la sua caratteristica di essere un linguaggio molto facile
      ed estremamente diffuso, ha moltissime risorse disponibili su Internet.
      Appunto la sua facilità porta l'autore a pensare che una _cheatsheet_ come
      https://learnxinyminutes.com/python/ sia ampiamente sufficiente per usufruire del linguaggio.],

    [*Git* e *GitHub*],
    [Viene consigliata la lettura del materiale messo a disposizione per il corso di
      *Metodi e Tecnologie per lo Sviluppo Software* reperibili nel
      #link("https://stem.elearning.unipd.it/course/view.php?id=8278")[Moodle STEM] dell'Università di Padova],
  ),
  caption: [Materiale per la formazione dei membri di _ALimitedGroup_],
)

=== Implementazione del piano per la formazione

_ALimitedGroup_ si promette di permettere durante la durata del progetto appositi spazi per permettere la formazione dei membri: durante i vari _sprint_#super[G] sarà possibile sfruttare i momenti in cui è stata assegnata un'attività di peso minore per poter dare maggior peso alla formazione personale.

_ALimitedGroup_ inoltre si riserva, qualora lo ritenesse necessario, di pianificare degli spazi temporali durante gli _sprint_#super[G] dedicati esclusivamente allo studio di queste tecnologie, pur restando consapevole che un forte aiuto sarà dato dalla realizzazione effettiva del _Proof of Concept#super[G]_ e del progetto finale.
#pagebreak()
= Metriche e standard per la Qualità <metriche>

_ALimitedGroup_ ha deciso di seguire lo _standard ISO/IEC 9126_ per definire le metriche e i parametri che determinano la qualità di quanto realizzato. Lo standard identifica sei caratteristiche generali:

- *Funzionalità*#super[G];
- *Affidabilità*;
- *Efficienza*#super[G];
- *Usabilità*;
- *Manutenibilità*;
- *Portabilità*.

== Funzionalità

In merito alla *Funzionalità*#super[G], lo scopo è misurare quanto un prodotto soddisfa le esigenze del proponente#super[G]. Nello specifico misura:
- *Adeguatezza*, ovvero se il prodotto offre le funzioni necessarie a svolgere i compiti prefissati dal proponente#super[G];
- *Accuratezza*, ovvero se il prodotto fornisce i precisi effetti richiesti;
- *Interoperabilità*, ovvero se il prodotto riesce ad interagire con altri Sistemi definiti;
- *Conformità*, ovvero se il prodotto aderisce a determinati standard richiesti dal dominio d'uso del prodotto;
- *Sicurezza*, ovvero se il prodotto mette in sicurezza i dati degli Utenti, impedendone il reperimento ad individui non autorizzati.

== Affidabilità

In merito all'*Affidabilità*, è la capacità del prodotto di mantenere un determinato livello di prestazioni in qualsiasi momento, anche in periodi d'uso particolarmente intensi. Nello specifico misura:

- *Maturità*, ovvero l'arginare la possibilità che si verifichino errori o malfunzionamenti;
- *Tolleranza agli errori*, ovvero l'obiettivo di mantenere la prestazionalità del prodotto anche in caso di malfunzionamenti;
- *Recuperabilità*, ovvero la capacità del prodotto di ritornare al normale comportamento prestazionale a seguito di un malfunzionamento;
- *Aderenza*, ovvero la capacità di aderire a standard di affidabilità.

== Efficienza

L'*Efficienza* misura la capacità di fornire delle prestazioni che siano direttamente proporzionate alle risorse utilizzate. Nello specifico misura:

- *Comportamento temporale*, ovvero la capacità di fornire una risposta in tempi adeguati;
- *Utilizzo delle risorse*, ovvero un uso proporzionale delle risorse in rapporto all'utilizzo;
- *Conformità*, ovvero l'aderenza del prodotto a standard riguardanti l'efficienza.

== Usabilità

L'*Usabilità* consiste nel misurare quanto l'Utente finale è in grado di apprendere la modalità di utilizzo del prodotto. Si misura:

- *Comprensibilità*, ovvero quanto è facile comprendere i concetti del prodotto;
- *Apprendibilità*, ovvero quanto è semplice apprendere l'uso delle funzionalità del prodotto;
- *Operabilità*, ovvero se è semplice per gli Utenti utilizzare il prodotto;
- *Attrattività*, ovvero se l'Utente trova positivo l'uso del prodotto;
- *Conformità*, ovvero se il prodotto aderisce a standard relativi all'usabilità.

== Manutenibilità

La *Manutenibilità* misura quanto il prodotto è semplice da modificare per permetterne l'evoluzione o la correzione. Nello specifico misura:

- *Analizzabilità*, ovvero la facilità d'ispezione del codice con lo scopo di cercare un errore;
- *Modificabilità*, ovvero quanto è difficile apportare una modifica;
- *Stabilità*, ovvero se il prodotto è in grado di arginare effetti indesiderati determinati da modifiche non corrette;
- *Testabilità*, ovvero la semplicità con cui il prodotto può essere testato.

== Portabilità

La *Portabilità* è la facilità con cui il prodotto può essere spostato da un ambiente di esecuzione ad un altro. Specificatamente si misura:

- *Adattabilità*, ovvero con che facilità il prodotto può essere adattato ad un diverso ambiente d'esecuzione;
- *Installabilità*, ovvero con che facilità il prodotto può essere installato su un altro ambiente d'esecuzione;
- *Conformità*, ovvero se il prodotto aderisce a convenzioni sulla portabilità;
- *Sostituibilità*, ovvero quanto è semplice sostituire un prodotto esistente con il prodotto da noi sviluppato.

== Nomenclatura delle Metriche

La nomenclatura utilizzata per le metriche è la seguente:

#align(center, text(1.2em)[*`MTipo##`*])

dove:

- *M* sta per *M*\etrica
- *Tipo* può assumere uno tra questi valori:
  - *PC* ovvero *P*\ro#text()[*c*]esso
  - *PD* ovvero *P*\ro#text()[*d*]otto
- *\#\#* è un numero crescente da 0. Il conteggio per il tipo *PC* e *PD* è separato.

Per tutte le definizioni, acronimi e abbreviazioni utilizzati in questo documento, si faccia
riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni
necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.
#pagebreak()
= Metriche di Qualità del Processo <metriche-qt-processo>
== Processi primari
=== Fornitura
==== Earned Value (EV)
#metric(
  cod: [MPC01],
  formula: [
    $"Earned Value" = "Budget at Completion" * "Percentuale di lavoro completato nello sprint"$
  ],
  desc: [L'indicatore Earned Value rappresenta il valore del lavoro _completato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se il lavoro svolto è in linea con le aspettative.],
)

==== Planned Value (PV)
#metric(
  cod: [MPC02],
  formula: [
    $"Planned Value" = "Budget at Completion" * "Percentuale di lavoro pianificato nello sprint"$
  ],
  desc: [L'indicatore Planned Value rappresenta il valore del lavoro _pianificato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se la pianificazione è rispettata.
    Il valore pianificato non può essere negativo e deve essere inferiore al BAC],
)

==== Actual Cost (AC)
#metric(
  cod: [MPC03],
  formula: [
    $"Actual Cost" = "Costo effettivo sostenuto nello sprint"$
  ],
  desc: [L'indicatore Actual Cost rappresenta il costo effettivo sostenuto per completare il lavoro nello sprint#super[G]. \
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se i costi sono in linea con le aspettative.],
)

==== Cost Performance Index (CPI)
#metric(
  cod: [MPC04],
  formula: [
    $"Cost Performance Index" = "Earned Value" / "Actual Cost"$
  ],
  desc: [Il Cost Performance Index rappresenta il rapporto tra il valore del lavoro completato e il costo effettivo sostenuto.\
    Un valore maggiore di 1 indica che il progetto sta rispettando il budget, un valore minore di 1 indica che il progetto sta superando il budget.],
)

==== Schedule Performance Index (SPI)
#metric(
  cod: [MPC05],
  formula: [
    $"Schedule Performance Index" = "Earned Value" / "Planned Value"$
  ],
  desc: [Lo Schedule Performance Index rappresenta il rapporto tra il valore del lavoro completato e il valore del lavoro pianificato.\
    Un valore maggiore di 1 indica che il progetto sta rispettando la pianificazione, un valore minore di 1 indica che il progetto sta accumulando ritardi.],
)

==== Estimate At Completion (EAC)
#metric(
  cod: [MPC06],
  formula: [
    $"Estimate At Completion" = "Budget at Completion" / "Cost Performance Index"$
  ],
  desc: [La metrica Estimate At Completion rappresenta una proiezione del costo finale totale del progetto basata sulla performance attuale.
    Utilizza il CPI come indicatore di efficienza per correggere la stima iniziale (BAC).
    Se CPI < 1, EAC sarà maggiore del BAC, indicando un probabile sforamento del budget.],
)

==== Estimate To Complete (ETC)
#metric(
  cod: [MPC07],
  formula: [
    $"Estimate To Complete" = "Estimate At Completion" - "Actual Cost"$
  ],
  desc: [La metrica Estimate To Complete stima quanto costerà completare il lavoro rimanente del progetto.
    Si calcola sottraendo i costi già sostenuti (AC) dalla stima del costo finale totale (EAC).
    Utile per la pianificazione del budget residuo necessario.],
)

==== Time Estimate At Completion (TEAC)
#metric(
  cod: [MPC08],
  formula: [
    $"Time Estimate At Completion" = "Durata pianificata" / "Schedule Performance Index"$
  ],
  desc: [La metrica Time Estimate At Completion proietta la durata finale del progetto basandosi sulla performance temporale attuale.
    Utilizza SPI come indicatore di efficienza temporale per correggere la stima iniziale.
    Se SPI < 1, TEAC sarà maggiore della durata pianificata, indicando un probabile ritardo.],
)

=== Sviluppo
==== Requirements Stability Index

#metric(
  cod: [MPC09],
  formula: [
    $"Requirements Stability Index" = (("NINIZ"-("NAGG"+"NCAM"+"NCAN")) / "NINIZ")*100$
  ],
  desc: [
    - *NINIZ*: *N*\umero *Iniz*\iali di Requisiti
    - *NCAM*: *N*\umero *Cam*\biamenti di Requisiti
    - *NCAN*: *N*\umero *Can*\cellati di Requisiti
    - *NAGG*: *N*\umero *Agg*\iunti di Requisiti

    Permette di misurare il numero di cambiamenti apportati ai requisiti nel corso del tempo.
  ],
)

== Processi di supporto
=== Documentazione
==== Indice di Gulpease
#metric(
  cod: [MPC10],
  formula: [
    $"Indice Gulpease" = 89 - "numero di lettere" / "numero di parole" *100 + "numero di frasi" / "numero di parole" * 300$
  ],
  desc: [L'Indice Gulpease è un indice di leggibilità del testo.
    È utile per capire quanto un testo sia facile o difficile da leggere per un lettore medio. La formula tiene conto del numero di lettere, parole e frasi nel testo.\

    _Intervalli e interpretazioni_
    - Indice $gt.eq$ 80:
      Il testo è molto facile da leggere, comprensibile per chi ha completato solo la scuola elementare.

    - Indice compreso 60 e 80:
      Il testo è di media difficoltà, adatto a chi ha completato la scuola dell'obbligo.

    - Indice compreso 40 e 60:
      Il testo è abbastanza difficile, comprensibile per chi ha almeno un'istruzione di livello superiore.

    - Indice $lt$ 40:
      Il testo è molto difficile da leggere, comprensibile per lettori con un'istruzione universitaria.
  ],
)

==== Correttezza ortografica
#metric(
  cod: [MPC11],
  formula: [
    $"Correttezza ortografica" = "numero di errori ortografici"$
  ],
  desc: [La correttezza ortografica è un indicatore della qualità della documentazione.
    I documenti devono essere privi di errori ortografici.],
)

=== Verifica
==== Code Coverage
#metric(
  cod: [MPC12],
  formula: [
    $"Code Coverage" = ("Linee di codice testate" / "Linee di codice totali") * 100$
  ],
  desc: [Percentuale di codice coperto da Test automatizzati. Si raccomanda un coverage minimo del 80%.],
)

==== Test Success Rate
#metric(
  cod: [MPC13],
  formula: [
    $"Test Success Rate" = ("Test passati" / "Test totali") * 100$
  ],
  desc: [Percentuale di Test automatizzati che passano con successo. Dovrebbe mantenersi al 100% data la natura del progetto],
)

=== Gestione della Qualità
==== Quality metrics satisfied
#metric(
  cod: [MPC14],
  formula: [
    $"Quality metrics satisfied" = ("Numero metriche soddisfatte" / "Numero metriche totali") * 100$
  ],
  desc: [Percentuale di soddisfacimento delle metriche],
)

== Processi organizzativi
=== Gestione dei Processi
==== Time Efficiency
#metric(
  cod: [MPC15],
  formula: [
    $"Time Efficiency" = ("Ore produttive" / "Ore totali")*100$
  ],
  desc: [Valutazione del rapporto tra le ore utilizzate e quelle effettivamente produttive.],
)
#pagebreak()
= Metriche di Qualità del Prodotto <metriche-qt-prodotto>
== Funzionalità
=== Requisiti obbligatori soddisfatti
#metric(
  cod: [MPD01],
  formula: [
    $"Requisiti obbligatori soddisfatti" = "Numero di requisiti obbligatori soddisfatti" / "Numero di requisiti obbligatori totali" * 100$
  ],
  desc: [L'indicatore Requisiti obbligatori soddisfatti rappresenta la percentuale di requisiti obbligatori soddisfatti rispetto al totale dei requisiti obbligatori.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti essenziali del progetto.],
)

=== Requisiti desiderabili soddisfatti
#metric(
  cod: [MPD02],
  formula: [
    $"Requisiti desiderabili soddisfatti" = "Numero di requisiti desiderabili soddisfatti" / "Numero di requisiti desiderabili totali" * 100$
  ],
  desc: [L'indicatore Requisiti desiderabili soddisfatti rappresenta la percentuale di requisiti desiderabili soddisfatti rispetto al totale dei requisiti desiderabili.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti opzionali del progetto.],
)

=== Requisiti opzionali soddisfatti
#metric(
  cod: [MPD03],
  formula: [
    $"Requisiti opzionali soddisfatti" = "Numero di requisiti opzionali soddisfatti" / "Numero di requisiti opzionali totali" * 100$
  ],
  desc: [L'indicatore Requisiti opzionali soddisfatti rappresenta la percentuale di requisiti opzionali soddisfatti rispetto al totale dei requisiti opzionali.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti aggiuntivi del progetto.],
)

== Affidabilità
=== Branch Coverage
#metric(
  cod: [MPD04],
  formula: [
    $"Branch Coverage" = ("Rami testati" / "Rami totali") * 100$
  ],
  desc: [Percentuale di rami del codice coperti da Test automatizzati. Si raccomanda un coverage minimo del 60%.],
)

=== Statement Coverage
#metric(
  cod: [MPD05],
  formula: [
    $"Statement Coverage" = ("Istruzioni testate" / "Istruzioni totali") * 100$
  ],
  desc: [Percentuale di istruzioni del codice coperte da Test automatizzati. Si raccomanda un coverage minimo del 70%.],
)

=== Failure Density
#metric(
  cod: [MPD06],
  formula: [
    $"Failure Density" = ("Numero di difetti rilevati" / "KLOC")$
  ],
  desc: [Numero di failure per 1000 linee di codice (*KLOC*, _*K*\ilo *L*\ines *O*\f *C*\ode_). Un valore superiore a 0.5 indica possibili problemi di affidabilità.],
)

== Usabilità
=== Time on Task
#metric(
  cod: [MPD07],
  formula: [
    $"Time on Task" = "Tempo medio per completare un'attività"$
  ],
  desc: [Tempo medio impiegato per completare un'attività. Indica l'usabilità del prodotto.],
)

=== Error Rate
#metric(
  cod: [MPD08],
  formula: [
    $"Error Rate" = ("Errori totali" / "Azioni totali") * 100$
  ],
  desc: [Percentuale di errori commessi durante l'utilizzo del prodotto. Dovrebbe essere inferiore al 5%.],
)

== Efficienza
=== Response Time
#metric(
  cod: [MPD09],
  formula: [
    $"Response Time" = "Tempo medio di risposta"$
  ],
  desc: [Tempo medio impiegato per rispondere a una richiesta. Indica l'efficienza del prodotto. Un tempo di risposta inferiore a 2 secondi è considerato accettabile, mentre un tempo inferiore a 1 secondo è considerato ottimo.],
)

== Manutenibilità
=== Code Smells
#metric(
  cod: [MPD10],
  formula: [
    $"Code Smells" = ("Numero di code smells" / "KLOC")$
  ],
  // Definizione di code smells: I code smells sono indicatori di potenziali problemi nel codice sorgente che possono influire negativamente sulla manutenibilità, leggibilità e qualità complessiva del Software. Esempi comuni includono codice duplicato, metodi troppo lunghi, eccessiva complessità ciclomatica e nomi di variabili poco chiari.
  desc: [Numero di code smells per 1000 linee di codice. Un valore superiore a 10 indica possibili problemi di manutenibilità.],
)

=== Coefficient of Coupling (CoC)
#metric(
  cod: [MPD11],
  formula: [
    $"Coefficient of Coupling" = ("Numero di dipendenze" / "Numero di componenti")$
  ],
  desc: [Numero medio di dipendenze tra le componenti del sistema. Un valore superiore a 0.4 indica un accoppiamento eccessivo tra le componenti.],
)

==== Cyclomatic Complexity

#metric(
  cod: [MPD12],
  formula: [
    $"Cyclomatic Complexity" = E - N + P$

  ],
  desc: [
    - E = numero di archi nel grafo di controllo
    - N = numero di nodi nel grafo di controllo
    - P = numero di componenti connesse da ogni arco\
    Misura la complessità del codice contando i percorsi linearmente indipendenti. Un valore superiore a 10 indica codice complesso che potrebbe richiedere refactoring.],
)
