#import "../lib/importantdocs.typ": *

#show figure: set block(breakable: true)

#show: body => importantdocs(
  data: datetime(day: 15, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
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
      descr: "Aggiunte informazioni sulla sezione 2.1.1.4. Redatta descrizione attività di redazione e manutenzione del processo \"Documentazione\". Aggiunte convenzioni usate sulla documentazione e informazioni sulla documentazione prodotta. Iniziata la redazione delle informazioni sulla \"Gestione delle Configurazioni\" e parte delle sue attività.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 15, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Prima redazione del documento",
    ),
  ),
  versione: [0.3.0],
  stato: [Verificato],
  responsabile: ((p.samuele),),
  verificatore: ((p.lorenzo),),
  redattori: (
    (p.emanuele),
    (p.marco),
    (p.matteo),
  ),
  descrizione: [Questo documento contiene le _Norme di Progetto_ seguite da il gruppo _ALimitedGroup_ per il progetto C6 proposto dall'azienda #M31],
  body,
)

= Introduzione

== Scopo del documento
Questo documento nasce per descrivere il _Way of Working_ adottato da parte di questo gruppo durante tutto l'arco di svolgimento del progetto didattico. In tale documento, perciò, vengono analizzate tutte le _best practices_ da seguire per ogni tipo di processo, ciascuno di questo avrà correlato le attività che lo compongono seguendo la struttura definita nello standard _ISO/IEC 12207:1995_.\
Per la stesura di questo documento è stata intrapresa un metodo incrementale, cioè la stesura passo passo del documento con modifiche, aggiunte e cancellazioni successive ad un _template_ base. \
I membri dell'intero gruppo si impegnano a visionare constantemente questo documento e a rispettare rigorosamente le regole definite in esso, per svolgere il progetto in modo professionale, coerente ed uniforme.

== Scopo del prodotto

La gestione ottimale dell'inventario in una rete logistica distribuita è fondamentale per garantire la disponibilità continua delle risorse lungo tutta la catena operativa: un contesto in cui magazzini geograficamente distribuiti devono mantenere un flusso costante di materiali e prodotti, richiede un sistema di gestione in grado di minimizzare i tempi di risposta e di ottimizzare la distribuzione delle scorte. \
Il capitolato numero C6 di #M31 propone di sviluppare un sistema distribuito e scalabile, basato su architettura a microservizi, che favorisca l'interoperabilità tra i diversi magazzini e la centralizzazione delle informazioni in modo efficiente e sicuro, anche in scenari di elevato carico di dati e richieste simultanee.\
L'obiettivo che si è posto questo gruppo è realizzare questo progetto entro il *31 Marzo 2025* con un budget a disposizione di: *Euro 12˙930*.

== Glossario

La realizzazione di un sistema software richiede, ancora prima della scrittura del codice, un'importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivate da questa attività saranno appositamente documentate.\
Per evitare, perciò, ogni tipo di ambiguità o incomprensioni riguardanti la nomenclatura adottata in tutti i documenti visionabili, è stato deciso di utilizzare un glossario in cui è trascritta, per ogni parola, la definizione. \
_ALimitedGroup_ si impegna a visionarlo periodicamente, per permetter la più completa comprensione di ogni tipo di documento pubblicato dal gruppo.

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
= Processi
Per sviluppare un buon sistema software la sola scrittura di codice e lo svolgimento di alcuni test non garantisce affatto la realizzazione di un prodotto che possa essere considerato buono, ovvero che continuerà ad essere utilizzato da molte persone: per realizzare un prodotto che possa essere in grado di raggiungere tale obiettivo è necessario adottare un modello che fornisca a sua volta dei processi da seguire.\
Tra i più rigorosi modelli esistenti sicuramente è innegabile l'importanza di quello descritto dallo _standard ISO/IEC 12207_ pubblicato, nella sua prima versione, nel 1995.\
Lo standard classifica tre tipologie di processi:

- *Primari*: i processi senza il quale un progetto non può definirsi tale;
- *Supporto*: i processi che coadiuvano i processi primari nello svolgimento delle rispettive azioni;
- *Organizzativi*: processi di carattere più generale che aiutano la realizzazione dei progetti.

Durante la realizzazione del progetto, il gruppo ha deciso di adottare alcuni di questi processi: saranno qui descritti assieme anche alle loro principali azioni.

== Processi Primari
Tra i processi primari utilizzati nell'ambito del progetto distinguiamo:
- Fornitura
- Sviluppo

=== Fornitura

==== Descrizione

La fornitura è il processo primario adottato dal fornitore del futuro prodotto finale che si occupa di analizzare le azioni da intraprendere per la sua realizzazione.\
Questo processo prevede un primo studio dei requisiti che il progetto dovrà, nelle componenti prodotte, soddisfare, in maniera da avere il materiale necessario per poter effettuare una contrattazione degli stessi con il proponente e poter comunicare allo stesso una possibile pianificazione del lavoro da svolgere con probabile data di consegna prevista.

==== Strumenti a supporto

Per svolgere le attività previste abbiamo deciso di utilizzare i seguenti strumenti:
- *_Google Calendar_*: per rendere pubblici del gruppo e a portata di mano tutti gli appuntamenti previsti;
- *_GitHub_*: per la gestione del _BackLog_ e il sistema di _ticketing_, utili per tenere traccia e sotto controllo quanto fatto e quanto è ancora da fare;
- *_Discord_* e *_Telegram_*: per concordare internamente pianificazioni mediante riunioni interne.
Le comunicazioni verso l'azienda proponente richiedono, invece, l'utilizzo di:
- _*Microsoft Teams*_

#pagebreak()
==== Attività previste

La fornitura prevede varie attività, qui di seguito descritte:

- *Inizializzazione*: questa prevede l'analisi, da parte del fornitore, delle richieste da parte del proponente, tenendo in considerazione eventuali vincoli organizzativi o di altra natura. È Il momento in cui il fornitore valuta la capacità di realizzare quanto proposto, determinando gli eventuali requisiti da contrattare con il proponente;
- *Preparazione risposte*: questa attività prevede la realizzazione di una contro-proposta per il proponente che tenga conto di quanto derivato dall'attività di inizializzazione;
- *Contrattazione*: è l'attività che prevede un colloqui con il proponente durante il quale verranno presentate al proponente le risposte precedentemente realizzate, con l'obbiettivo di giungere alla formalizzazione di un contratto;
- *Pianificazione*: il fornitore, stabiliti i requisiti finali, deve adesso stabilire un'organizzazione e un metodo di lavoro in grado di assicurare la qualità del sistema da realizzare, scegliendo, qualora non lo sia da contratto, il modello di ciclo di vita del software da seguire. La pianificazione include anche l'individuazione delle risorse e le tecnologie necessarie allo sviluppo, considerando anche i potenziali rischi ad esse associate;
- *Esecuzione e controllo*: Il fornitore deve, messo a documenti la pianificazione, realizzare quanto stabilito, monitorando nel frattempo la qualità di quanto prodotto e il progresso raggiunto;
- *Revisione e valutazione*: il fornitore deve, anche durante lo sviluppo, tenersi in contatto con il proponente: questo è necessario per avere feedback su quanto prodotto, con annessa quindi una valutazione sullo stato di lavoro;
- *Consegna e completamento*: il fornitore, completato il progetto, deve fornire quanto prodotto al proponente, con l'impegno di fornire supporto a quest'ultimo.

==== Documentazione fornita <elenco-documenti>

Vengono ora elencati di seguito tutti i documenti che _ALimitedGroup_ consegnerà all'azienda #M31 e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

Per maggiori informazioni in merito ai ruoli che si occupano della redazione di ciascuno di questi documenti si veda la @documentazione-supporto.

===== Candidatura

====== Valutazione dei Capitolati

La #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%201.0.0.pdf")[*Valutazione dei Capitolati*] è un documento pubblicato da _ALimitedGroup_ in data 2024-10-31. \
Quest'ultimo fornisce, per ogni capitolato, una dettagliata analisi evidenziando i suoi punti di forza e le sue criticità. É suddiviso nelle seguenti sezioni:
- *Panoramica*: che indica l'azienda proponente, il nome del capitolato e delle informazioni generali su il prodotto da realizzare;
- *Scopo*: indica a che pro viene realizzato il prodotto;
- *Punti di forza*
- *Criticità evidenziate*
- *Conclusioni*: motivazioni del gruppo sulla scelta/non scelta del capitolato.

====== Lettera di Candidatura

La #link("https://alimitedgroup.github.io/Lettera%20di%20candidatura.pdf")[*Lettera di Candidatura*] è il documento con cui _ALimitedGroup_ ha ufficialmente presentato la sua candidatura al capitolato proposto dall'azienda #M31.
Essa contiene, in forma riassunta, i punti chiave che hanno spinto i componenti del gruppo a scegliere questo capitolato, nonché le informazioni generali riguardanti i _repository_ del gruppo contenente tutti i documenti relativi al progetto.

====== Dichiarazione degli impegni

La #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%201.0.0.pdf")[*Dichiarazione degli Impegni*] è il documento in cui _ALimitedGroup_ ha previsto varie informazioni riguardanti i costi preventivi del progetto, dall'impegno orario per persona e per ruolo, al costo complessivo del progetto e dei ruoli che i componenti di _ALimitedGroup_ svolgeranno durante lo stesso.

===== Requirements and Technology Baseline (RTB)

====== Analisi dei requisiti

L'#link("")[*Analisi dei Requisiti (CAMBIARE LINK)*] è il documento in cui _ALimitedGroup_ descriverà tutti i requisiti obbligatori, desiderabili e opzionali previsti dal progetto. Nello specifico il documento contiene:

[PROSEGUIRE]

#pagebreak()

====== Lettera di Presentazione (RTB)

La #link("")[*Lettera di Presentazione*] per la *Requirements and Technology Baseline (RTB)* è il documento con cui _ALimitedGroup_ si candida ufficialmente per la prima _Baseline_ del progetto del corso di Ingegneria del Software.
Essa contiene le informazioni rilevanti a tale fine, come, a mero titolo di esempio, i _link_ ai documenti realizzato per l'occasione e in questa Sezione elencati.

====== Piano di Progetto

Il #link("")[*Piano di Progetto (CAMBIARE LINK)*] è un documento che elenca in maniera ordinata tutte le informazioni riguardanti la pianificazione del gruppo. Conterrà dunque le attività da svolgere di _sprint_ in _sprint_, nonché l'analisi dei rischi associati a ciascuna attività.\
Dati i requisiti del progetto, questo documento avrà anche il compito di aggiornare, volta per volta, il consumo orario previsto ed effettivo e dunque, conseguentemente a questo, anche il costo derivato.

====== Piano di Qualifica

//Prossimamente....
[PROSEGUIRE]

====== Glossario

I componenti di _ALimitedGroup_ hanno verificato la necessità di avere un documento di facile consultazione per ricordare, in maniera rapida ed efficace, i molti termini utilizzati nei vari ambiti di realizzazione del progetto di Ingegneria del Software.

Per questo motivo, il gruppo ha prodotto un #link("")[*Glossario (CAMBIARE LINK)*], rivelatosi molto utile nel corso del tempo.

[PROSEGUIRE]

===== Product Baseline (PB)

[PROSEGUIRE]

#pagebreak()
=== Sviluppo

[PROSEGUIRE]

==== Descrizione
Il processo di sviluppo contiene le attività principalmente svolte dagli sviluppatori, ma non solo: infatti questo processo copre anche l'analisi dei requisiti, il testing e molto altro.

==== Attività previste
==== Tecnologie utilizzate
==== Documentazione prodotta

== Processi di Supporto
Tra i processi di supporto utilizzati nel progetto distinguiamo:

- Documentazione
- Gestione delle configurazioni
- Accertamento qualità
- Qualifica, formata a sua volta da:
  - Verifica
  - Validazione
- Revisione
- Revisione congiunta
- Gestione dei cambiamenti

Saranno ora descritti nel dettaglio le attività previste.

=== Documentazione

Il processo di documentazione è parte fondamentale di tutti i processi primari: il prodotto di tale processo è infatti essenziale per tenere traccia delle decisioni intraprese e per favorire il lavoro asincrono, molto più produttivo di quello sincrono nel nostro ambito.\

Nel dettaglio, il processo di documentazione si occupa della registrazione delle informazioni prodotto da un processo o da un'attività nel ciclo di vita.\
Riguarda dunque l'insieme delle attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari a tutti gli interessati (come manager, ingegneri e utenti del sistema o del prodotto _software_).

==== Strumenti a supporto
Per redigere la documentazione il gruppo fa utilizzo di due strumenti in particolare:
- *_Typst_*: trattasi di un linguaggio _mark-down_ molto recente ma che si sta rivelando una valida alternativa a *LATEX* per la dezione di documenti a carattere scientifico e non solo.
  _Typst_ permette la realizzazione di una preview sostanzialmente istantanea, senza necessità di compilare ogni volta il documento, allo stesso modo mettendo a disposizione una sintassi quanto più vicina possibile ai normali linguaggi di programmazione. _ALimitedGroup_ lo utilizza di tutti i documenti, per ulteriori dettagli consultare la @sezione_typst;

- *_GitHub_*: il gruppo ha deciso di utilizzare il sistema di _ticketing_ e le _pull request_ di _GitHub_ per permettere la rezione, verifica e approvazione di tutti i documenti. Per ulteriori dettagli consultare la @sezione_github.

===== Typst <sezione_typst>

Come anticipato, _ALimitedGroup_ ha scelto di utilizzare _Typst_ per la redazione di tutti i documenti.\
Nello specifico, la redazione dei coumenti sfrutta apposite funzioni di _Typst_ appositamente scritte allo scopo all'interno di documenti che noi chiamiamo _Template_.\

Qui di seguito saranno elencato le principali funzionalità fornite nei vari template disponibili suddivisi per documento di interesse: per tali motivi, verrà sintetizzata anche la struttura di tali documenti
ove il _template_ li riguardi nello specifico.

====== Verbali <desc-templ-verbale>

Tutte le funzioni relative ai verbali si trovano nel _file_ #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/verbale.typ")[_verbale.typ_] nella cartella _lib_, che contiene tutti i _template_ che il gruppo utilizzerà per redigere tutti i documenti.\

La funzione principale di tale documento è, per l'appunto, "verbale" contenente la struttura standard di un verbale e definisce:
- *Pagina di copertina*, con al suo interno:
  - Logo del gruppo;
  - Tipo di verbale (interno o esterno) con annessa data della riunione verbalizzata;
  - Stato del documento;
  - Persone presenti alla riunione;
  - Distribuzione (ovvero, i destinatari);
  - Ordine del giorno (in formato riassuntivo).
- Allegato con *tabella delle versioni*;
- *Indice del documento*, generato automaticamente da _Typst_.

Un verbale successivamente prevede sempre una prima sezione con alcune informazioni generali tra cui:
- *Modalità*, distinta tra "in presenza" o "virtuale" (se virtuale si intende avvenuta sulla piattaforma _Discord_ salvo diversamente specificato);
- *Data della riunione*;
- *Orario di inizio*;
- *Orario di fine*.

La funzione “inizio-verbale-interno” permette di generare in maniera automatica il testo per inserire queste informazioni, cui seguirà, in elenco, l'ordine del giorno nei vari punti.\ \
Un verbale prosegue quindi con la sua seconda sezione, che esplicita quanto discusso per ogni punto dell'ordine del giorno.\ \
Segue quindi la penultima sezione, denominata "Esiti della riunione", che riassume quanto concordato; l'ultima sezione, invece, si riferisce alla _tabella delle decisioni e delle azioni_ che, tramite il sistema di _ticketing_, elenca tutte le decisioni e azioni prese
dal gruppo, tale tabella è facilmente realizzabile tramite la funzione "tabella-decisioni".\

In ultima istanza, i verbali esterni devono avere anche una sezione dedicata all'approvazione esterna, inseribile mediante la funzione "approvazione-esterna".

#pagebreak()
====== Diari di bordo

Nell'ambito del progetto di Ingegneria del Software, il _Professor Vardanega Tullio_ ha previsto delle attività volte ad accertare, in maniera condivisa, lo stato di progesso per ogni singolo gruppo iscritto al I lotto.\

Per facilitare la redazione delle diapositive dedicate a questi incontri, il gruppo ha realizzato un _template_ apposito con varie funzioni: si veda la sezione @creazione. La più importante è sicuramente "presentazione" che permette di generare l'intero documento formato da tre sezioni:
- _Risultati raggiunti e confronto con le previsioni_, che elenca quanto abbiamo fatto nel periodo corrente;
- _Obiettivi e attività per il periodo successivo_, che elenca le attività future da completare;
- _Difficoltà riscontrate e questioni aperte_, che ci permette di esporre le problematiche che abbiamo affrontato e quelle su cui ancora nutriamo dei dubbi.

====== Altri documenti
Per tutti gli altri documenti, un cui riassunto comprensivo può essere trovato nella @documentazione-supporto, vale un formato standard che può essere ottenuto utilizzando le funzioni nel template #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/common.typ")["common.typ"]. Nello specifico ciascun documento possiede:
- *Pagina di copertina*, con:
  - Nome del documento;
  - Versione;
  - Stato del documento;
  - Data di ultima modifica;
  - Distribuzione (destinatari).
- *Registro delle modifiche*, che viene realizzata automaticamente invocando la funzione per la copertina;
- *Indice dei contenuti*, viene realizzato automaticamente con la stessa funziona menzionata sopra;
- *Corpo del documento*, con sezioni e sotto-sezioni che vengono scritte manualmente.

==== Attività previste

Il processo di documentazione è un processo assai delicato quanto importante. Le attività cardine di questo processo sono due:
- *Produzione*: l'attività che stabilisce con quale metodo il documento debba essere redatto;
- *Manutenzione*: l'attività che definisce come un documeto viene, eventualmente, modificato.

===== Produzione
<regole-branch-issue>
La produzione di un documento segue solitamente questi passaggi:

- *Creazione della issue e del branch secondario*: anzitutto viene aperta una issue su GitHub, elemento necessario per tenere traccia dei compiti da svolgere, quindi viene aperto un branch secondario rispetto al principale nel sistema di versioning, in maniera di poter eseguire modifiche senza intaccare il ramo stabile. La denominazione del _branch_ e delle _issue_ segue una nomenclatura specifica decisa nel #link("https://alimitedgroup.github.io/VI%2018-11-2024%20v1.0.0.pdf")[*verbale interno*] del *18 Novembre 2024* e riportata nella @creazione.


- *Assegnazione della issue e inizio stesura*: una delle persone che in quel periodo hanno il compito di realizzare quel documento (si veda la tabella nella sezione successiva) si assegna l’issue di redazione e inizia la redazione del documento nel branch dedicato
- *Verifica*: terminata la redazione, il redattore apre una pull request su github per chiedere, ad un verificatore, la verifica del documento. Il verificatore procederà quindi a tale attività, lasciando l’elenco delle modifiche da apportare ai relatori.

A questo punto il processo diviene differente per i verbali e i rimanenti documenti:

- *Approvazione e pubblicazione (verbali)*: A modifiche ultimate o solo in caso di verifica positiva, il verificatore richiede al responsabile di approvare il documento.
Il responsabile, una volta approvato il documento, risolverà la pull request e procede quindi al merge del branch secondario in quello principale. L’azione scatenera l’avvio di una *_GitHub Action_* che aggiornerà il sito web del progetto con i nuovi documenti approvati. \ Dal momento che un verbale descrive un evento trascorso, è poco probabile debba essere cambiato in futuro, questo anche considerando che con il tempo la memoria potrebbe non più essere precisa come prima: per queste ragioni il gruppo ha deciso che i verbali saranno pubblicati solamente quando approvati.
- *Pubblicazione (altri documenti)*: una volta verificato, il documento può essere pubblicato nella sua versione attuale: ciò avviene completando il _merge_ e risolvendo quindi la _Pull Request_. Tale processo è diversificato per i documenti rispetto ai verbali in quanto, essendo gli altri documenti di consultazione più frequente, è necessario avere a disposizione la versione più recente disponibile per la visione;
- *Approvazione (altri documenti)*: l’approvazione di un documento implica il raggiungimento di una determinata accuratezza dello stesso. Similmente a quanto avviene per i verbali, sarà il responsabile ad approvare il documento a seguito di opportuna _Pull Request_.

===== Manutenzione

L'attività di manutenzione è necessaria nel momento in cui un documento ha bisogno di essere aggiornato con nuove informazioni. Il processo di aggiornamento non differisce di molto rispetto al processo di prima redazione, prevedendo infatti la realizzazione di una issue dedicata e di un processo di verifica mediante _Pull Request_.

Per le regole sulla nomenclatura da utilizzare per _Branch_ e _Issue_ si veda @regole-branch-issue nella parte precedente di questo documento.

===== Convenzioni

Nell'ambito della redazione dei documenti vengono utilizzate alcune convenzioni, qui di seguito definite.

====== Denominazine dei documenti

Come osservato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024*, Sezione 2.3.1 e in seguito estesa a tutti i documenti, la denominazione dei file seguirà la seguente sintassi:

#align(center)[*TIPO GG-MM-AAAA** \# VERSIONE*]

dove:
- *TIPO* è una sigla che identifica il tipo di documento. Le possibili scelte sono:
  - *VI* per *V*\erbale *I*\nterno
  - *VE* per *V*\erbale *E*\sterno
  - *NP* per *N*\orme di *P*\rogetto
  - *PP* per *P*\iano di *P*\rogetto
  - *AR* per *A*\nalisi dei *R*\equisiti
  - *PQ* per *P*\iano di *Q*\ualifica
- *GG-MM-AAAA* indica la data in formato giorno-mese-anno (con due cifre per giorno e mese e 4 cifre per l’anno)
- *\#* è un modificatore, ovvero un numero crescente a partire da 2 per indicare eventuali documenti dello stesso tipo redatti lo stesso giorno. Viene omesso sempre per il primo documento in ordine cronologico
VERSIONE indica la versione corrente del documento

====== Datazione dei documenti e sintassi identificatori

Le date nei documenti dovranno essere scritte sempre nel formato *GG-MM-AAAA* (giorno-mese-anno, con due cifre per giorno e mese e quattro cifre per l'anno).\
Eventuali identificatori dovranno sempre seguire la regola del *_Kebab Case_*, ovvero parole separate dal carattere *-*.

==== Documentazione prodotta o di supporto <documentazione-supporto>

Di seguito vengono elencati la totalità dei documenti prodotti, una cui prima descrizione è stata realizzata nella @elenco-documenti.

#figure(
  table(
    align: center,
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    table.header(
      [*Tipo documento*],
      [*Descrizione*],
      [*Redattore*],
      [*Destinatari*],
      [*Uso*],
    ),

    [Analisi dei Requisiti],
    [Documento contenente informazioni sui requisiti obbligatori, desiderabili e opzionali del progetto],
    [Analisti],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Lettera di Candidatura],
    [Lettera redatta per presentare la candidatura del gruppo al capitolato di #M31],
    [-],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Lettera di Presentazione (PB)],
    [Lettera redatta per presentare la candidatura del gruppo alla PB],
    [Responsabile],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Lettera di Presentazione (RTB)],
    [Lettera redatta per presentare la candidatura del gruppo alla RTB],
    [Responsabile],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Norme di Progetto],
    [Stabilisce il _Way of Working_ e le pratiche di sviluppo adottate dal gruppo],
    [Amministratore],
    [ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Interno],

    [Piano di Progetto],
    [Definisce quanto realizzato in ogni periodo con relativi costi e aggiornamenti del _budget_ rimanente],
    [Responsabile],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Piano di Qualifica],
    [Descrive i metodi di qualifica (verifica e validazione) adottate da _ALimitedGroup_],
    [Amministratore],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Verbale Esterno],
    [Verbale di una riunione svolta con la presenza di persone esterne al gruppo],
    [Responsabile \ o Amministratore],
    [#M31,\ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Esterno],

    [Verbale Interno],
    [Verbale di una riunione svolta senza la presenza di persone esterne al gruppo],
    [Responsabile \ o Amministratore],
    [ ALimitedGroup
      Prof. Vardanega Tullio \
      Prof. Cardin Riccardo],
    [Interno],
  ),
  caption: [Dettaglio documenti e ruolo responsabile della rispettiva redazione],
)

=== Gestione delle Configurazioni

La gestione delle configurazioni è un processo fondamentale in un progetto: essa permette di identificare le singole componenti del sistema sviluppato e controllarne le modifiche e i rilasci, nonché registrare lo stato di sviluppo di ciascuna. Complessivamente, il processo permette di avere un buon sviluppo.

==== Strumenti a supporto

Il supporto alle attività di questo processo sono:

- Git
- GitHub

Per ulteriori informazioni si veda la @implementazione

==== Attività previste

L’attività di gestione delle configurazioni svolta dal gruppo si avvale delle seguenti attività:
- Identificazione della configurazione
- Controllo della configurazione
- Registrazione dello Stato di Configurazione
- Valutazione della configurazione

===== Identificazione della configurazione

Il capitolato sviluppato dal nostro gruppo è formato da molte parti, motivo per cui l’identificazione della configurazione si renderà essenziale: per questo motivo, durante la fase di progettazione, sarà necessario schematizzare le varie parti dell’architettura del sistema da sviluppare e allegare il risultato di quanto compreso all’#link("")[*Analisi Progettuale (CAMBIARE LINK O NOME DOCUMENTO SE NECESSARIO*)].

Per quanto riguarda invece la parte di documentazione, le parti componenti tale sezione del progetto sono state descritte nella @elenco-documenti e nella @documentazione-supporto.

===== Controllo della configurazione <controllo-config>

Il *Controllo della configurazione* è l’attività che disciplina le richieste di modifica: queste devono poter essere identificate e valutate con esito favorevole alla loro implementazione o contrario.
Un buon controllo della configurazione dovrebbe prevedere un sistema che permetta di tracciare le modifiche da approvare, consigliando eventuali suggerimenti per ottenere l’approvazione.

Per realizzare al meglio questa attività sono stati predisposti metodi differenti per la documentazione e il codice vero e proprio, qui di seguito descritti.

====== Documenti

ALimitedGroup ha deciso di attuare questa attività nel repository dei documenti con l’ausilio delle *_issue_*, delle *_board_* e delle *_Pull Request_* di *_GitHub_*, così come descritto qui di seguito:

- *Issue*: ogni modifica da fare deve essere documentata mediante una issue da assegnare al componente che prenderà in carico la modifica o la redazione di un documento.
  Generalmente una issue possiede:
  - un numero univoco nella repository che funge da identificativo
  - un nome che esplicita in cosa consiste la issue
  - una descrizione facoltativa
  - una milestone o una baseline associata
  - un assegnatario che prenderà in carico il lavoro da effettuare
  - un legame con la board del progetto
- *Board*: serve per stabilire se una issue presa in carico è ancora da iniziare, in sviluppo o terminata
- *Pull Request*: un sistema che permette di chiedere la verifica e (eventualmente) l’approvazione prima di fondere la modifica nel ramo principale del repository. Le Pull Request sono il cuore del controllo della configurazione: permettono infatti di generare un elenco dettagliato e una discussione sulle modifiche da effettuare, permettendo di suggerire cambiamenti prima di considerarle definitive

Il tracciamento delle modifiche approvate è inoltre garantito, sotto il cofano, dall’utilizzo di Git, un version control system sviluppato da Linus Torvalds e brevemente descritto nella @Git.

====== Codice

[PROSEGUIRE]

===== Registrazione dello Stato di Configurazione

_ALimitedGroup_ è consapevole della necessità di tracciare i cambiamenti effettuati a documentazione e codice.

L'attività di *Registrazione dello Stato di Configurazione* si occupa proprio di questo e i componenti di _ALimitedGroup_ hanno deciso di implementarla come segue.

====== Documenti

Come verbalizzato nel #link("https://alimitedgroup.github.io/VI%2004-11-2024%20v1.0.0.pdf")[*verbale interno*] del *4 Novembre 2024* ed esteso poi a tutta la documentazione, i documenti utilizzeranno il seguente sistema di versionamento:

#align(center)[*MAJOR.MINOR.PATCH*]

dove:

- *MAJOR*: subisce un incremento solo alla pubblicazione del file finale
- *MINOR*: subisce un incremento solo quando completato il processo di modifica e di verifica
- *PATCH*: subisce un incremento per modifiche di entità minore, quali correzioni ortografiche e/o di sintassi.

Lo spunto d’uso di tale sistema proviene dal sito #link("https://semverdoc.org/")[semverdoc.org].

In aggiunta, ogni documento avrà un allegato contenente l'elenco cronologico di tutte le modifiche apportate per ogni versione, come anche descritto nella @desc-templ-verbale.

====== Codice

[PROSEGUIRE]

===== Valutazione della configurazione <valutazione-della-configurazione>

La *Valutazione della configurazione* è l'attività che prevede di controllare la completezza del software prodotto rispetto ai suoi requisiti e al design scelto.

_ALimitedGroup_, per compiere questa attività, realizzerà dei test appositi, in parte manuali in parte automatizzati, per renedere possibile tale controllo.
Questi test saranno descritti in un documento apposito, il #link("")[*Test Book (CAMBIARE LINK)*], che descriverà anche che requisito quei test, se svolti con successo, promettono di soddisfare.

[PROSEGUIRE, probabile prematuro fare adesso]

=== Accertamento qualità
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

=== Qualifica - Verifica <verifica>
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

=== Qualifica - Validazione <validazione>
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

=== Revisione
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

=== Revisione congiunta
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

=== Gestione dei cambiamenti
==== Strumenti a supporto
==== Attività previste
==== Documentazione prodotta o di supporto

== Processi Organizzativi

I *processi organizzativi* sono dei processi a supporto del progetto che assicurano il buon andamento dell'intero progetto.

Le attività previste assicurano la buona esecuzione di tutti i processi adottati e l'adozione di eventuali miglioramenti, la gestione delle infrastrutture utilizzate e la formazione del team nei compiti da seguire.

=== Gestione dei Processi

La *gestione dei processi* ha il compito di individuare i ruoli che dovranno permettere tutte le attività elencate in questo documento.

Le attività principali, osservate da _ALimitedGroup_, previste da questo processo sono:
- Inizializzazione
- Pianificazione
- Esecuzione e controllo
- Revisione e valutazione
- Finalizzazione

==== Inizializzazione

È compito del *Responsabile* stabilire anzitutto i requisiti della nuova attività da svolgere, comprendendo che compiti prevede e quali costi, in termini temporali e non solo, tale attività comporti, cercando di ben tenere in considerazione il tempo a disposizione per completare il tutto.

A seconda dell'occorrenza di eventuali rischi o imprevisti le attività potranno essere modellate per poter essere, almeno parzialmente, terminate in tempo.

==== Pianificazione

Stabiliti i requisiti da soddisfare, il responsabile deve comprendere, oltre al tempo necessario per il completamento, anche i rischi associati all'attività, i costi di esecuzione e le misure qualitative per controllare la corretta esecuzione dei compiti.

Il Responsabile deve altresì decidere a chi assegnare tale attività: per facilitare questa operazione, _ALimitedGroup_ ha individuato dei ruoli specifici assieme alle loro responsabilità.

===== Responsabile

Il *Responsabile* ha un ruolo centrale nel gruppo: esso infatti è responsabile delle attività di coordinamento interne al gruppo.

È il componente che veste questo ruolo a cui spetta il compito di comprendere, tenendo in considerazione quanto già portato a termine, quanto da realizzare nei periodi di sviluppo successivi, individuando le attività, i costi e rischi associati e infine assegnandone lo svolgimento ai componenti che vestono in quel periodo il ruolo più appropriato.

Il Responsabile è anche colui che ha il compito, a nome di tutto il gruppo, di dialogare con le parti esterne ad _ALimitedGroup_, quali, a mero titolo esemplificativo, l'azienda proponente del capitolato #M31.

In ultima istanza, è sempre compito di questo ruolo *approvare* i vari documenti prodotti da _ALimitedGroup_.

===== Amministratore

L'*Amministratore* (noto anche con il nome di *System Administrator* o *SysAdmin*) ha l'importante compito di gestire e migliorare l'infrastruttura che i membri di _ALimitedGroup_ utilizza per portare a compimento le varie attività del progetto didattico, a partire dal sistema di ticketing sino agli strumenti utilizzati per la verifica e validazione di quanto realizzato.

È questo ruolo che copre la responsabilità di risolvere quanto prima eventuali problematiche legate alle infrastrutture.

Per via della sua approfondita conoscenza del _Way of Working_ adottato dal gruppo, necessario per poter al meglio gestire le infrastrutture, è di questo ruolo il compito di redigere il presente documento e il *Piano di Qualifica*, ma può risultare un ruolo adatto anche alla redazione di verbali di riunione interna ed esterna.

===== Analista

L'*Analista* è il ruolo responsabile dell'identificazione dei requisiti obbligatori, desiderabili e facoltativi del progetto, considerando quanto discusso nelle riunioni esterne con l'azienda proponente #M31.
È sempre affidato a questo ruolo il compito di redazione dell'*Analisi dei Requisiti*.

===== Progettista

Il *Progettista* è un ruolo cruciale per lo svolgimento del capitolato: esso infatti ha il compito di trasformare requisiti in un design architetturale, producendo documenti e schemi esplicativi e definendo le scelte tecnologiche.

===== Programmatore

Il *Programmatore* è responsabile dello sviluppo del software, traducendo il design architetturale in codice funzionante. Collabora strettamente con il progettista per assicurarsi che tutte le funzionalità siano implementate secondo le specifiche. Il suo lavoro è fondamentale per il progresso del progetto e richiede una buona conoscenza delle tecnologie adottate.

È affidata a questo ruolo anche la responsabilità di realizzare test automatici per verificare il corretto funzionamento del codice sviluppato.

===== Verificatore

Il *Verificatore* ha il compito di garantire che tutto ciò che è prodotto, dalla documentazione alla più piccola attività, sia svolta a regola d’arte.

Si occupa di eseguire test approfonditi e revisioni del software, identificando eventuali aree di miglioramento specie in ambito qualitativo.

È sempre di questo ruolo la responsabilità di verificare la correttezza dei vari documenti ad ogni modifica effettuata.

==== Esecuzione e controllo

L'esecuzione delle attività è affidata quindi ai vari ruoli così come indicato dal Responsabile, che dobrà costantemente monitorare lo stato di progresso e avanzamento complessivo.

==== Revisione e valutazione

Una volta effettuata l'attività è necessario controllare la conformità di quanto prodotto: questo avviene per opera del Verificatore.

Per un dettaglio più specifico delle attività di revisione si veda la @regole-branch-issue per quanto riguarda la documentazione mentre @valutazione-della-configurazione, @verifica e @validazione per il codice.

==== Finalizzazione

Un'attività è da reputarsi conclusa solo nel momento in cui viene definitvamente approvata. Come anticipato nelle Sezioni precedenti, questa operazione viene eseguita al pari di una normale attività di verifica, con la sola eccezione che la risoluzione della _Pull Request_ associata determina la chiusura della _Issue_ e del _Branch_ utilizzato per la redazione/modifica della componente.

=== Infrastruttura

//descrivere tutta l'infrastruttura utilizzata, da quella per le comunicazioni interne ed esterne, sino a GitHub. è qui che bisona descrivere i dettagli anche riguardanti i nomi dei branch.

Il processo di *Infrastruttura* è responsabile della creazione e del mantenimento dei componenti (di qualsiasi natura, sia _Hardware_ che _Software_) necessari per permettere tutti gli altri processi.

Si compone delle seguenti atività:

- Implementazione
- Creazione
- Manutenzione

===== Implementazione <implementazione>

_ALimitedGroup_ ha compreso, durante lo svolgimento del progetto didattico, la necessità di adottare appositi strumenti per permettere il lavoro asincrono dei suoi componenti. Di seguito vengono elencati l'iniseme di tutti gli strumenti utilizzati, analizzati ad uno ad uno nelle Sezioni successive:

- Discord
- Git
- GitHub
- Google Calendar
- Microsoft Teams
- Script in Python
- Telegram
- Typst

====== Discord

Discord è un programma di messagistica istantanea e videoconferenza utilizzato da _ALimitedGroup_ per realizzare le proprie riunioni interne in modalità *virtuale*.

====== Git <Git>

Programma originariamente sviluppato da Linus Torvalds per il versionamento del codice: _ALimitedGroup_ ha deciso di impiegarlo come strumento di versionamento per il sorgente della propria documentazione e il codice prodotto.

Git è dunque un potente _Version Control System (VCS)_ che permette di efficacemente versionare tutto ciò che viene prodotto grazie anche alla possibilità di organizzare gli sviluppi in _Branch_ separati.

====== GitHub <sezione_github>

*GitHub* è un prodotto che permette principalmente la memorizzazione su dispositivo remoto di _repository_ Git, ma non solo: esso infatti si è evoluto nel corso del tempo per permettere la collaborazione asincrona tra _developer_

_ALimitedGroup_ utilizza GitHub per sincronizzare tra i membri gli sviluppi tra i vari membri, tenere traccia del _backlog_ mediante il sistema di _issue_ e _project board_, nonché permettere la verifica di quanto redatto prima che tali documenti o codice raggiunga il _branch_ principale. Per i dettagli d'uso si rimanda alla @controllo-config.

====== Google Calendar

Per condividere con il gruppo tutti gli appuntamenti futuri _ALimitedGroup_ utilizza *Google Calendar*.

====== Microsoft Teams

*Microsoft Teams* viene utilizzato da _ALimitedGroup_ per realizzare le riunioni esterne con l'azienda proponente #M31.

====== Script in Python

Per automatizzare l'aggiornamento del sito web con i nuovi documenti e la compilazione dei file Typst, _ALimitedGroup_ ha deciso di realizzare degli appositi script in Python.

Un ulteriore script inoltre permette di realizzare una sostituzione parziale delle parole nei documenti per collegarle ai termini contenuti nel glossario.

====== Telegram

Telegram viene utilizzato dal gruppo per comunicare in maniera diretta tra i membri in caso di dubbi minori per cui non è necessaria una riunione interna.

====== Typst

Typst viene utilizzato da _ALimitedGroup_ per la redazione di tutti i documenti. Vengono compilati automaticamente utilizzando gli script prodotti direttamente dal gruppo.

===== Creazione <creazione>

L'attività di *creazione* guida la realizzazione dell'infrastruttura. Di seguito i dettagli per ogni prodotto utilizzato.

====== Discord


====== Git


====== GitHub


====== Google Calendar

====== Microsoft Teams


====== Script in Python


====== Telegram



====== Typst //migliorare

#align(center)[*BRANCH*\ *\#-azione-documento-data*]

Dove:
- Al posto di *\#* va inserito il numero della _Issue_ le cui modifiche operate nel branch determineranno la chiusura
- Al posto di *azione* va inserita l'azione fatta nel _Branch_ ovvero:
  - *redazione* per indicare la redazione di un nuovo documento
  - *aggiornamento* per indicare la modifica di un documento esistente
- Al posto di *documento* va inserito la tipologia di documento interessato dalla modifica, come, a mero scopo esemplificativo, *verbale* oppure *norme-progetto*
- Al posto di *data* la data del documento, se tale documento la prevede (ad esempio i *verbali*)

#align(center)[*ISSUE* \ *azione documento data*]

Dove *azione*, *documento* e *data* hanno lo stesso significato della nomenclatura utilizzata per i _Branch_.

====== Template delle funzioni utili

I vari documenti sono spesso accomunati da esigenze particolari servibili mediante l'utilizzo di funzioni non caratteristiche di alcun documento.\
Tali funzioni sono inserite in un _file_ particolare, denominato #link("https://github.com/alimitedgroup/alimitedgroup.github.io/blob/main/lib/common.typ")["common.typ"], che contiene le seguenti funzioni:
- _p_ : permette l'inserimento delle informazioni riguardanti ogni persona coinvolta in questo progetto, quali i componenti del gruppo o i docenti di Ingegneria del Software, utile per evitare erroneamente di inserire informazioni non veritiere;
- _M31_ : permette di visualizzare il nome dell'azienda proponente. Il nome è personalizzato con il font _"Futura"_ e messo sempre in grassetto;
- _abbrev_ : preso un _output_ fornito dalla funzione _p_, inseriesce nome e cognome della persona selezionata;
- _prof_ : permette la visualizzazione, da un _output_ della funzione _p_, del nome e cognome del docente selezionato preceduti dalla dicitura "Prof.";
- _issue_ : fornisce la possibilità di inserire il _link_ che si riferisce ad una determinata _issue_, tramite il numero associato a quest'ultima (e opzionalmente il _repository_, altrimenti viene di _default_ inserito quella della documentazione);
- _pr_ : come sopra, ma per indicare le _pull request_;
- _doc_ : che, preso in _input_ il nome del documento e il testo da inserire, fornisce il _link_ per quel documento con al suo posto il testo dato.


===== Manutenzione

=== Processo di Miglioramento
=== Processo di Formazione
