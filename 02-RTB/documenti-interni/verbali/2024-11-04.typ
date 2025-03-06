#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 04, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 07, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 05, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.marco,
      descr: "Redazione del contenuto.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.emanuele, p.loris, p.marco, p.matteo, p.samuele, p.sara),
  odg: [Quinta riunione di ALimitedGroup: vengono analizzate le osservazioni nel documento di aggiudicazione degli appalti per procedere a migliorare il nostro _Way of Working_],
  disambiguatore: [],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*4 Novembre 2024*], [*15.00*], [*17.35*])

+ Decisioni in merito alla rotazione dei ruoli
+ Migliorie alla parte pubblica del repository#super[G]
+ Importanti cambiamenti nella redazione dei verbali
+ Recupero delle precedenti decisioni e attività
+ Inizio redazioni di ulteriori documenti
+ Assegnazione dei ruoli sino al giorno 11-11-2024

#pagebreak()
= Dettaglio riunione
== Decisioni in merito alla rotazione dei ruoli

Il gruppo _ALimitedGroup_ ha accolto la problematica riguardante le mancate indicazioni in merito alla rotazione dei ruoli, non fornite nei documenti di candidatura.

I componenti hanno compreso l'importanza di tale operazione e hanno stabilito che, almeno in questa fase iniziale segnata dall'inizio vero e proprio del progetto, i ruoli subiranno un cambiamento ogni *circa 7 giorni*.\
Il gruppo concorda però nell'affermare che tale periodo di tempo non può che essere solo momentaneo e con lo scopo di produrre efficacemente la prima documentazione di base, volta principalmente a sanare le problematiche rilevate durante l'aggiudicazione degli appalti.

Il gruppo prevede che nel prossimo futuro il cambiamento dei ruoli *non potrà sicuramente avvenire prima di 14 giorni*, minimo periodo per produrre avanzamenti concreti, impossibili da realizzare con un periodo di tempo più corto.

== Migliorie alla parte pubblica del repository

Il gruppo accoglie il suggerimento riguardante l'apertura delle risorse in una scheda dedicata: decide, perciò, di modificare la parte pubblica del _repository_#super[G] (sito web) quanto prima per ottenere questo effetto.

Per migliorare ulteriormente l'organizzazione del _repository_#super[G], stabilisce altresì di inserire tutti i nuovi documenti prodotti dal giorno 04-11-2024 sino al superamento della _Requirements and Technology Baseline#super[G]_ (RTB#super[G]) in una sezione appositamente realizzata: la parte pubblica del _repository_#super[G] (sito web) dovrà riflettere questo cambiamento.

#pagebreak()

== Importanti cambiamenti nella redazione dei verbali

_ALimitedGroup_ comprende l'importanza che non è possibile modificare nuovamente un verbale o un documento senza prima che questo venga verificato e comprende anche la necessità di tracciare le decisioni e le attività che seguono le riunioni.\
Per questo ed altri motivi a carattere principalmente migliorativo, il gruppo ha deciso che effettuerà degli importanti cambiamenti alla struttura e al metodo di redazione dei verbali, qui di seguito indicata.

=== Modifiche alla struttura dei verbali

Nel corso della redazione dei verbali, il gruppo ha determinato che il commento iniziale stabilito dal *verbale interno* del #doc("VI 23-10-2024 1.0.0")[*23-10-2024*] alla *sezione 2.4* non risulta essere di alcuna utilità: lo sviluppo del repository#super[G] ha rimosso l'esigenza di inserirlo nel documento grazie a meccanismi di querying automatici forniti da typst#super[G]. Ha tuttavia trovato molto positiva la nomenclatura adottata: per questo motivo il gruppo ha deciso sarà *mantenuta* con lo scopo di nominare i file prodotti. \ \

#pagebreak()

Per soddisfare l'esigenza di verificare un verbale subito a seguito di una modifica, il registro delle modifiche conterrà ora le seguenti colonne:

#table(
  columns: (auto, auto, 0.5fr, 0.5fr, 1fr),
  inset: 5pt,
  align: center,
  table.header(
    text(12pt, fill: black)[*Vers.*],
    text(12pt, fill: black)[*Data*],
    text(12pt, fill: black)[*Autore*],
    text(12pt, fill: black)[*Verificatore*],
    text(12pt, fill: black)[*Descrizione*],
  ),
)

Con la data che indica il momento in cui la modifica effetuata dall'*autore* è stata verificata dal *verificatore*#super[G]

Il gruppo ha anche stabilito delle modifiche relative al metodo di stesura dei verbali contenute nella @metodo_stesura di questo documento. \

Per la necessità di tracciamento delle decisioni e delle azioni intraprese, viene aggiunta la sezione *"Tabella delle decisioni e delle azioni"* che conterrà una tabella riepilogativa delle decisioni e azioni che seguono alla riunione. Tale tabella avrà la seguente struttura:

#table(
  columns: (0.5fr, 0.5fr),
  inset: 5pt,
  align: center,
  table.header(
    text(12pt, fill: black)[*ID*],
    text(12pt, fill: black)[*Dettaglio*],
  ),
)

dove:

- *ID* è un codice univoco che rappresenta la decisione o l'azione. Questo valore può assumere significati diversi:
  - *DI\#* ovvero *Decisione Interna#super[G]*, con, al posto di *\#*, un numero crescente che parte da 1. Viene utilizzato per indicare una decisione intrapresa con effetto immediato: potrebbe, per questo motivo, non avere un'_issue_ associata;
  - *AP\#* ovvero *Attività Passata#super[G]*, con, al posto di *\#*, un numero crescente che parte da 1. Viene utilizzato per segnalare un'attività (dunque una decisione che _dovrebbe avere_ associata una _issue_#super[G]) ma intrapresa prima che il gruppo decidesse di utilizzare il sistema di ticketing (o che, per errore, non è stata associata ad una _issue_#super[G] prima di procedere ad eventuali modifiche);
  - *REPOSITORY\#* con, al posto di *REPOSITORY*, il nome della repository#super[G] ospitante l'_issue_ associata (per convenzione, il nome *DOCS* sarà riservato per riferirsi alla repository#super[G] contenente la documentazione), e con, al posto di *\#*, il numero di tale _issue_#super[G]. Viene utilizzata con lo stesso scopo di *AP\#* ma per le decisioni che comportano un'azione avente effettivamente una _issue_#super[G] associata nel sistema di ticketing.
- *Dettaglio* è una breve descrizione della decisione o azione intrapresa. \ \

Per convenzione, la tabella dovrà elencare prima le *DI*#super[G], poi le *AP*#super[G] e infine le *REPOSITORY*.

#pagebreak()

=== Metodo di stesura <metodo_stesura>

La stesura di un verbale adesso seguirà il seguente procedimento:

+ Viene aperta una _issue_#super[G] di GitHub#super[G]. Tale _issue_#super[G] non dovrà avere alcun _tag_;
+ Viene realizzato un branch#super[G] secondario dedicato alla sola redazione del verbale: il verbale può essere redatto sul nuovo branch#super[G];
+ Quando la redazione è conclusa ed è stato eseguito il _push_ delle modifiche, viene aperta una _Draft Pull Request#super[G]_ legata al nuovo branch#super[G];
+ Aperta la _Draft Pull Request#super[G]_, il redattore#super[G] può eventualmente proseguire la redazione per apportare migliorie. Nel momento in cui ritiene il documento redatto, egli marcherà la _Draft Pull Request#super[G]_ come pronta per essere verificata;
+ Il verificatore#super[G] verifica#super[G] il documento: se corretto segnalerà, mediante commento nella _Draft Pull Request#super[G]_, al responsabile#super[G] di procedere all'approvazione, se da modificare verrà sfruttato il sistema messo a disposizione da GitHub#super[G] appositamente realizzato per permettere di comunicare con facilità i cambiamenti da effettuare. Completate le modifiche, il verificatore#super[G] procederà nuovamente come spiegato;
+ Una volta notificato il responsabile#super[G], questo procederà ad effettuare il merge del branch#super[G] secondario in quello principale completando quindi la _Draft Pull Request#super[G]_ e chiudendo la issue#super[G].

=== Cambiamento al sistema di versionamento

Il gruppo ha stabilito che il versionamento dei documenti seguirà la nomenclatura:

#align(center)[*MAJOR*.*MINOR*.*PATCH*]

dove:

- *MAJOR*: subisce un incremento *solo* alla pubblicazione del file finale
- *MINOR*: subisce un incremento *solo* quando completato il processo di modifica *e* di verifica#super[G]
- *PATCH*: subisce un incremento per modifiche di entità minore, quali correzioni ortografiche e/o di sintassi.

Lo spunto d'uso di tale sistema proviene dal seguente #link("https://semverdoc.org/")[sito web].

#pagebreak()
== Recupero delle precedenti decisioni e attività

Il gruppo ha individuato, nei precedenti verbali, le seguenti decisioni intraprese. Decide dunque, per iniziare dal tracciamento, di integrare queste nella tabella di questo verbale. Le decisioni e azioni individuate sono le seguenti:

#tabella-decisioni(
  "D1",
  "Decisione nome gruppo: ALimitedGroup (" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 2.1)",
  "D2",
  "Decisione del logo del gruppo (" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 2.22)",
  "D3",
  "Prime decisioni sulla struttura dei verbali" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 2.5)",
  "D4",
  "Decisione sul linguaggio dei documenti: Typst (" + doc("VI 18-10-2024 1.0.0")[VI 18-10-2024] + ", sezione 2.3)",
  "D5",
  "Decisione sulla struttura dei documenti (" + doc("VI 18-10-2024 1.0.0")[VI 18-10-2024] + ", sezione 2.3)",
  "D6",
  "Decisioni in merito alla presentazione per le attività di Diario di Bordo ("
    + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024]
    + ", sezione 2.1)",
  "D7",
  "Utilizzo delle issue di GitHub come sistema di ticketing ("
    + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024]
    + ", sezione 2.2)",
  "D8",
  "Utilizzo di Google Calendar per la gestione degli eventi ("
    + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024]
    + ", sezione 2.3)",
  "D9",
  "I verbali dovranno avere uno specifico commento iniziale ("
    + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024]
    + ", sezione 2.4)",
  "D10",
  "Decisione alla candidatura con il capitolato C6 (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 2.1)",
  "D11",
  "Pianificazione temporale del progetto, analisi dei ruoli e costi ("
    + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024]
    + ", sezione 2.2, 2.3 e 2.4)",
  "D12",
  "Decisione struttura finale del repository (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 2.5)",
  "AP1",
  "Creazione email del gruppo (" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 2.3)",
  "AP2",
  "Creazione dei gruppi Telegram e Discord (" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 2.4)",
  "AP3",
  "Richiedere colloquio con M31 (" + doc("VI 15-10-2024 1.0.0")[VI 15-10-2024] + ", sezione 3)",
  "AP4",
  "Creazione Repository GitHub dedicato alla documentazione ("
    + doc("VI 18-10-2024 1.0.0")[VI 18-10-2024]
    + ", sezioni 2.2 e 3)",
  "AP5",
  "Valutare capitolato di VIMAR (" + doc("VI 18-10-2024 1.0.0")[VI 18-10-2024] + ", sezione 2.4)",
  "AP6",
  "Valutare domande da porre riguardanti i capitolati (" + doc("VI 18-10-2024 1.0.0")[VI 18-10-2024] + ", sezione 3)",
  "AP7",
  "Realizzare verbale 15-10-2024",
  "AP8",
  "Realizzare verbale 18-10-2024",
  "AP9",
  "Realizzare diapositive per il primo diario di bordo (" + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024] + ", sezione 3)",
  "AP10",
  "Realizzare le prime prove per uso sistema di ticketing su GitHub ("
    + doc("VI 23-10-2024 1.0.0")[VI 23-10-2024]
    + ", sezione 2.2)",
  "AP11",
  "Realizzare verbale 23-10-2024",
  "AP12",
  "Sistemare il repository come da verbale (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 2.5)",
  issue(1),
  "Realizzazione Valutazione dei Capitolati (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 3)",
  issue(2),
  "Realizzazione verbale 28-10-2024",
  issue(3),
  "Approvazione verbale esterno (Ergon)",
  issue(4),
  "Approvazione verbale esterno (SyncLab)",
  issue(5),
  "Approvazione verbale esterno (M31)",
  issue(11),
  "Realizzazione Dichiarazione degli Impegni (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 3)",
  issue(12),
  "Realizzazione Lettera di Candidatura (" + doc("VI 28-10-2024 1.0.0")[VI 28-10-2024] + ", sezione 3)",
)

== Inizio redazioni di ulteriori documenti

Il gruppo ha deciso di iniziare la redazione di questo verbale e di un nuovo documento, il *Glossario*, che conterrà i termini frequentementi utilizzati nei vari documenti.

== Assegnazione dei ruoli sino al giorno 11-11-2024

Anche osservando quanto definito nella sezione 5, si decide che sino all'11-11-2024, saranno assegnati i seguenti ruoli: \

*#p.samuele.nome #p.samuele.cognome* $arrow.r$ *Responsabile*#super[G] \
*#p.sara.nome #p.sara.cognome* $arrow.r$ *Verificatore*#super[G] \
*#p.marco.nome #p.marco.cognome* $arrow.r$ *Verificatore*#super[G] \

Sarà assegnato a *#p.matteo.nome #p.matteo.cognome* il compito di redazione di questo verbale, mentre ai rimanenti componenti la redazione del Glossario.

#pagebreak()

= Esiti della riunione

Il gruppo conclude la riunione con i compiti assegnati e le decisioni e azioni intraprese, riservandosi anche il compito di iniziare ad analizzare i requisiti del capitolato#super[G] da eventualmente contrattare leggendo attentamente, in maniera asincrona, il capitolato#super[G]: i risultati saranno discussi e messi per forma scritta nelle prossime riunioni.

#pagebreak()

= Tabella delle decisioni e delle azioni

#tabella-decisioni(
  "D13",
  "Stabilita la rotazione dei ruoli provvisoriamente ogni 7 giorni circa",
  "D14",
  "Il commento iniziale dei documenti è ora non più necessario",
  "D15",
  "Cambiamenti al metodo di redazione dei verbali",
  "D16",
  "Cambiamenti al sistema di versioning dei documenti",
  "D17",
  "Affidati i primi ruoli",
  "AP13",
  "I documenti aperti dalla parte pubblica del reposiory (sito web) si apriranno ora in scheda separata",
  issue(19),
  "Modificare tabella delle versioni nel template per aggiungere il verificatore",
  issue(20),
  "Aggiungere tabella delle decisioni al template",
  issue(22),
  "Redazione verbale 04-11-2024",
  issue(23),
  "Redazione del Glossario",
  issue(26),
  "Aggiornare sito web per riflettere nuova organizzazione del repository",
)
