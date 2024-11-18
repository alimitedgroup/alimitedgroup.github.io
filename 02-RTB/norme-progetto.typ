#import "../lib/importantdocs.typ": *

#show: body => importantdocs(
  data: datetime(day: 15, month: 11, year: 2024),
  tipo: [interno],
  versioni: ((
      vers: "0.1.0",
      date: datetime(day: 15, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.matteo,
      descr: "Verifica del documento",
    ),
  ),
  versione: [0.1.0],
  stato: [Verificato],
  responsabile: ((p.samuele),),
  verificatore: ((p.matteo),),
  redattori: (
    (p.emanuele),
    (p.marco),
    (p.matteo),
    (p.lorenzo),
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

- Primari: i processi senza il quale un progetto non può definirsi tale;
- Supporto: i processi che coadiuvano i processi primari nello svolgimento delle rispettive azioni;
- Organizzativi: processi di carattere più generale che aiutano la realizzazione dei progetti.

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

==== Documentazione fornita

Vengono elencati di seguito tutti i documenti che _ALimitedGroup_ consegnerà all'azienda #M31 e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

===== Valutazione dei Capitolati

La #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%201.0.0.pdf")[Valutazione dei Capitolati] è un documento pubblicato da _ALimitedGroup_ in data 2024-10-31. \
Quest'ultimo fornisce, per ogni capitolato, una dettagliata analisi evidenziando i suoi punti di forza e le sue criticità. É suddiviso nelle seguenti sezioni:
- *Panoramica*: che indica l'azienda proponente, il nome del capitolato e delle informazioni generali su il prodotto da realizzare;
- *Scopo*: indica a che pro viene realizzato il prodotto;
- *Punti di forza* 
- *Critictà evidenziate*
- *Conclusioni*: motivazioni del gruppo sulla scelta/non scelta del capitolato.

===== Analisi dei requisiti

//Prossimamente....

#pagebreak()
===== Piano di progetto

Il Piano di Progetto è un documento che elenca in maniera ordinata tutte le informazioni riguardanti la pianificazione del gruppo. Conterrà dunque le attività da svolgere di _sprint_ in _sprint_, nonché l'analisi dei rischi associati a ciascuna attività.\
Dati i requisiti del progetto, questo documento avrà anche il compito di aggiornare, volta per volta, il consumo orario previsto ed effettivo e dunque, conseguentemente a questo, anche il costo derivato.
Questo documento è possibile visionarlo al seguente indirizzo:\
#link("")[https://alimitedgroup.github.io/Piano-di-progetto.pdf]

//Prossimamente....

===== Piano di Qualifica

//Prossimamente....

===== Glossario

//Prossimamente....

===== Lettera di Presentazione

//Prossimamente....

#pagebreak()
=== Sviluppo

==== Descrizione
Il processo di sviluppo contiene le attività principalmente svolte dagli sviluppatori, ma non solo: infatti questo processo copre anche l'analisi dei requisiti, il testing e molto altro.

==== Attività previste
==== Tecnologie utilizzate
==== Documentazione prodotta

== Processi di supporto
Tra i processi di supporto utilizzati nel progetto distinguiamo:

- Documentazione
- Gestione delle configurazioni
- Accertamento qualità
- Qualifica, formata da:
  - Verifica
  - Validazione
- Revisione
- Revisione congiunta
- Gestione dei cambiamenti

Saranno ora descritti nel dettaglio le attività previste.
