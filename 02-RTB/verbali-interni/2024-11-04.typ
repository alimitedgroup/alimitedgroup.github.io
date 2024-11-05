#import "/lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 28, month: 10, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 30, month: 10, year: 2024),
      autore: p.matteo,
      //verifica: SPRITZ{INSERISCI_IL_VERIFICATORE},
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [Redatto],
  presenze: (p.emanuele, p.loris, p.marco, p.matteo, p.samuele, p.sara),
  odg: [Quinta riunione di ALimitedGroup: vengono analizzate le osservazioni nel documento di aggiudicazione degli appalti per procedere a migliorare il nostro Way of Working],
  disambiguatore: [],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*4 Novembre 2024*], [*15.00*], [*17.35*])

+ Decisioni in merito alla rotazione dei ruoli
+ Migliorie alla parte pubblica del repository
+ Importanti cambiamenti nella redazione dei verbali
+ Recupero delle precedenti decisioni e attività
+ Inizio redazioni di ulteriori documenti
+ Assegnazione dei ruoli sino al 11-11-2024

#pagebreak()
= Dettaglio riunione
== Decisioni in merito alla rotazione dei ruoli

Il gruppo ALimitedGroup ha accolto la problematica riguardante le mancate indicazioni in merito alla rotazione dei ruoli, non fornite nei documenti di candidatura.

I componenti hanno compreso l'importanza di tale operazione e hanno stabilito che, almeno in questa fase iniziale segnata dall'inizio vero e proprio del progetto, i ruoli subiranno un cambiamento ogni *circa 7 giorni*.
Il gruppo concorda però nell'affermare che tale periodo di tempo non può che essere solo che momentaneo e con lo scopo di produrre efficacemente la prima documentazione di base, volta principalmente a sanare le problematiche rilevate durante l'aggiudicazione degli appalti.

Il gruppo prevede che nel prossimo futuro il cambiamento dei ruoli *non potrà sicuramente avvenire prima di 14 giorni*, minimo periodo per produrre anzitutto avanzamenti concreti, impossibili da realizzare con un periodo di tempo più corto.

#pagebreak()

== Migliorie alla parte pubblica del repository

Il gruppo accoglie il suggerimento riguardante l'apertura delle risorse in una scheda dedicata: decide perciò di modificare la parte pubblica del repository (sito web) quanto prima per ottenere questo effetto.

Per migliorare ulteriormente l'organizzazione del repository, stabilisce inoltre di inserire tutti i nuovi documenti prodotti dal 4-11-2024 sino al superamento della Requirements and Tecnology Baseline (RTB) in una sezione appositamente realizzata.

#pagebreak()

== Importanti cambiamenti nella redazione dei verbali

_ALimitedGroup_ comprende l'importanza che non è possibile modificare nuovamente un verbale o un documento senza prima che questo venga modificato e comprende anche la necessità di tracciare decisioni e attività che seguono le riunioni.\
Per questo motivo e altri motivi a carattere migliorativo, il gruppo ha deciso che effetterà degli importanti cambiamenti alla struttura e al metodo di redazione dei verbali, qui di seguito indicata.

=== Modifiche alla struttura dei verbali

Nel corso della redazione dei verbali, il gruppo ha determinato che il commento iniziale stabilito dal *verbale interno* del #link("https://alimitedgroup.github.io/VI%2023-10-2024%201.0.0.pdf")[*23-10-2024*] alla *sezione 2.4* non risulta essere di alcuna utilità: lo sviluppo del repository ha rimosso l'esigenza di inserirlo nel documento grazie a meccanismi di querying automatici forniti da typst.
Ha tuttavia trovato molto positiva la nomenclatura adottata: per questo motivo il gruppo ha deciso sarà *mantenuta* con lo scopo di nominare i file prodotti. \ \

Per soddisfare l'esigenza di verificare un verbale subito a seguito di modifica, il registro delle modifiche conterrà ora le seguenti colonne:

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

Il gruppo ha anche stabilito modifiche relative al metodo di stesura: si veda la @metodo_stesura stesura più avanti. \ \

Per la necessità di tracciare decisioni e azioni intraprese, la sezione "Esiti della riunione" ora dovrà contenere una tabella riepilogativa delle decisioni e azioni. Tale tabella avrà la seguente struttura:

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

- *ID* è un codice univoco rappresenta la decisione o l'azione. Tale valore può essere dei seguenti tipi:
  - *DI\#* ovvero *Decisione Interna*, con, al posto di *\#* un numero crescente che parte da 1. Viene utilizzato per indicare una decisione intrapresa che tuttavia ha effetto immediato;
  - *AP\#* ovvero *Attività Passata*, con, al posto di *\#* un numero crescente che parte da 1. Viene utilizzato per segnalare un'attività (dunque una decisione che _dovrebbe avere_ associata una _issue_) ma intrapresa prima che il gruppo decidesse di utilizzare il sistema di ticketing (o che, per errore, non è stata associata ad una _issue_)
  - *REPOSITORY\#* con, al posto di *REPOSITORY* il nome della repository ospitante l'_issue_ associata (per convenzione, il nome *DOCS* sarà riservato per riferirsi alla repository contenente la documentazione), al posto di *\#*, il numero di tale _issue_. Viene utilizzata con lo stesso scopo di *AP\#* ma per le decisioni che comportano un'azione avente effettivamente una _issue_ associata nel sistema di ticketing.
- *Dettaglio* una breve descrizione della decisione o azione intrapresa. \ \

Per convenzione, la tabella dovrà elencare prima le *DI*, poi le *AP* e infine le *REPOSITORY*.

=== Metodo di stesura <metodo_stesura>

La stesura di un verbale adesso seguirà il seguente procedimento:

+ Viene aperta una issue di GitHub. Tale issue non dovrà avere alcun tag legato;
+ Viene realizzato un branch secondario dedicato alla sola redazione del verbale: il verbale può essere redatto sul nuovo branch;
+ Quando la redazione è conclusa, viene aperta una Pull Request legata al nuovo branch;
+ Il redatore segnala, nella pull request, la richiesta di verifica al verificatore;
+ Il verificatore verifica il documento: se corretto, segnalerà nella pull request al responsabile di procedere all'approvazione, se richiede modifica il documento ritornerà in fase di redazione e il tutto ricomincia dal punto 3;
+ Una volta verificato il verbale e notificato il responsabile, questo procederà ad effettuare il merge del branch secondario in quello principale completando quindi la pull request e chiudendo la issue.

=== Cambiamento al sistema di versionamento

Il gruppo ha stabilito che il versionamento dei documenti seguirà la nomenclatura:

#align(center)[MAJOR.MINOR.PATCH]

dove:

- *MAJOR*: subisce un incremento SOLO alla pubblicazione del file finale
- *MINOR*: subisce un incremento SOLO quando completato il processo di modifica E verifica
- *PATCH*: subisce un incremento per modifiche di entità minore, quali correzioni ortografiche/di sintassi.

Lo spunto d'uso di tale sistema proviene dal sito web #link("https://semverdoc.org/").

#pagebreak()
== Recupero delle precedenti decisioni e attività

Il gruppo ha individuato, nei precedenti verbali, le seguenti decisioni intraprese. Decide dunque, per iniziare dal tracciamento, di integrare queste nella tabella di questo verbale. Le decisioni e azioni individuate sono le seguenti:

#tabella-decisioni(
  "D1",
  "Decisione nome gruppo: ALimitedGroup (VI 15-10-2024, sezione 2.1)",
  "D2",
  "Decisione del logo del gruppo (VI 15-10-2024, sezione 2.22)",
  "D3",
  "Decisione email del gruppo: alimitedgroup@gmail.com (VI 15-10-2024, sezione 2.3)",
  "D4",
  "Decisione canali di comunicazione: Telegram e Discord (VI 15-10-2024, sezione 2.4)",
  "D5",
  "Prime decisioni sulla struttura dei verbali (VI 15-10-2024, sezione 2.5)",
  "D6",
  "Decisione sul repository della documentazione: sarà utilizzato GitHub (VI 18-10-2024, sezione 2.2)",
  "D7",
  "Decisione sul linguaggio dei documenti: Typst (VI 18-10-2024, sezione 2.3)",
  "D8",
  "Decisione sulla struttura dei documenti (VI 18-10-2024, sezione 2.3)",
  "D9",
  "Decisioni in merito alla presentazione per le attività di Diario di Bordo (VI 23-10-2024, sezione 2.1)",
  "D10",
  "Utilizzo delle issue di GitHub come sistema di ticketing (VI 23-10-2024, sezione 2.2)",
  "D11",
  "Utilizzo di Google Drive per la gestione degli eventi (VI 23-10-2024, sezione 2.3)",
  "D12",
  "I verbali dovranno avere uno specifico commento iniziale (VI 23-10-2024, sezione 2.4)",
  "D13",
  "Decisione alla candidatura con il capitolato C6 (VI 28-10-2024, sezione 2.1)",
  "D14",
  "Pianificazione temporale del progetto, analisi dei ruoli e costi (VI 28-10-2024, sezione 2.2, 2.3 e 2.4)",
  "D15",
  "Decisione struttura finale del repository (VI 28-10-2024, sezione 2.5)",

  "AP1",
  "Creazione email del gruppo (VI 15-10-2024, sezione 2.3)",
  "AP2",
  "Creazione dei gruppi Telegram e Discord (VI 15-10-2024, sezione 2.4)",
  "AP3",
  "Richiedere colloquio con M31 (VI 15-10-2024, sezione 3)",
  "AP4",
  "Creazione Repository GitHub dedicato alla documentazione (VI 18-10-2024, sezione 3)",
  "AP5",
  "Valutare capitolato di VIMAR (VI 18-10-2024, sezione 2.4)",
  "AP6",
  "Valutare domande da porre riguardanti i capitolati (VI 18-10-2024, sezione 3)",
  "AP7",
  "Realizzare verbale 15-10-2024",
  "AP8",
  "Realizzare verbale 18-10-2024",
  "AP9",
  "Realizzare diapositive per il primo diario di bordo (VI 23-10-2024, sezione 3)",
  "AP10",
  "Realizzare le prime prove per uso sistema di ticketing su GitHub (VI 23-10-2024, sezione 2.2)",
  "AP11",
  "Realizzare verbale 23-10-2024",
  "AP12",
  "Sistemare il repository come da verbale (VI 28-10-2024, sezione 2.5)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/1")[DOCS1],
  "Realizzazione Valutazione dei Capitolati (VI 28-10-2024, sezione 3)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/2")[DOCS2],
  "Realizzazione verbale 28-10-2024",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/3")[DOCS3],
  "Approvazione verbale esterno (Ergon)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/4")[DOCS4],
  "Approvazione verbale esterno (SyncLab)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/5")[DOCS5],
  "Approvazione verbale esterno (M31)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/11")[DOCS11],
  "Realizzazione Dichiarazione degli Impegni (VI 28-10-2024, sezione 3)",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/12")[DOCS12],
  "Realizzazione Lettera di Candidatura (VI 28-10-2024, sezione 3)",
)

#pagebreak()

== Inizio redazioni di ulteriori documenti

Il gruppo ha deciso di iniziare la redazione di questo verbale e di un nuovo documento, il *Glossario*, che conterrà i termini frequentementi utilizzati nei vari documenti.

#pagebreak()

== Assegnazione dei ruoli sino al 11-11-2024

Anche osservando quanto definito nella sezione 5, si decide che sino all'11-11-2024, saranno assegnati i seguenti ruoli: \

*Samuele* -> *Responsabile* \
*Sara* -> *Verificatore*\
*Marco* -> *Verificatore*\

Sarà assegnato a *Matteo* il compito di redazione dei verbali, mentre ai rimanenti componenti la redazione del glossario.

#pagebreak()

= Esiti della riunione

Il gruppo conclude la riunione con i compiti assegnati e le decisioni e azioni intraprese, riservandosi anche il compito di iniziare ad analizzare i requisiti del capitolato da eventualmente contrattare.

== Tabella delle decisioni e delle azioni

#tabella-decisioni(
  "D16",
  "Stabilita la rotazione dei ruoli provvisoriamente ogni 7 giorni circa",
  "D17",
  "I documenti aperti dalla parte pubblica del reposiory (sito web) si apriranno ora in scheda separata",
  "D18",
  "Il commento iniziale dei documenti è ora non più necessario",
  "D19",
  "Cambiamenti al metodo di redazione dei verbali",
  "D20",
  "Cambiamenti al sistema di versioning dei documenti",
  "D21",
  "Affidati i primi ruoli",

  "AP13",
  "I documenti aperti dalla parte pubblica del reposiory (sito web) si apriranno ora in scheda separata",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/19")[DOCS19],
  "Modificare tabella delle versioni nel template per aggiungere il verificatore",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/20")[DOCS20],
  "Aggiungere tabella delle decisioni al template",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/22")[DOCS22],
  "Redazione verbale 04-11-2024",
  link("https://github.com/alimitedgroup/alimitedgroup.github.io/issues/23")[DOCS23],
  "Redazione del Glossario",
)