#import "../../lib/importantdocs.typ": *
#import "../../lib/pdp.typ": *
#let nome-documento = [Piano di Progetto]

#let ver = [0.5.0]
#show: body => importantdocs(
  data: datetime(day: 16, month: 1, year: 2025),
  tipo: [esterno],
  stato: [Redatto],
  versioni: (
    (
      vers: "0.5.0",
      date: datetime(day: 16, month: 1, year: 2025),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Redazione per il quarto sprint",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 29, month: 12, year: 2024),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Redazione per il terzo sprint",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 10, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturato il documento secondo il template selezionato. Migliorie generali.",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 07, month: 12, year: 2024),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Redazione per il secondo sprint",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 27, month: 11, year: 2024),
      autore: p.samuele,
      verifica: p.lorenzo,
      descr: "Redazione documento",
    ),
  ),
  versione: ver,
  responsabile: ((p.loris),),
  verificatore: ((p.lorenzo),),
  redattori: ((p.samuele), (p.loris), (p.marco)),
  descrizione: [Il seguente documento contiene il _Piano di Progetto_ utilizzato, da _ALimitedGroup_, per la realizzazione di un magazzino distribuito presentato da parte di #M31],
  titolo: "Piano di Progetto",
  body,
)

= Introduzione
== Informazioni generali

Il *Piano di Progetto* è un documento che cerca di esprimere le attività svolte e da svolgere durante la realizzazione del progetto di *Ingegneria del Software*.

Il documento è di importanza sostanziale per permettere una corretta pianificazione del da farsi, analizzando il tempo previsto ed effettivo per ogni attività, nonché i potenziali rischi legati a quanto da svolgere.

Data la necessità di pianificare le attività volta per volta, in quanto una progettazione dettagliata sul lungo termine certamente si rivelerebbe assai inefficace, il *Piano di Progetto* è per sua natura un documento che non potrà dirsi mai terminato sino alla fine del progetto: per questo motivo sarà realizzato con un approccio incrementale, aggiungendo informazioni volta per volta.

== Glossario

La realizzazione di un sistema software richiede, ancor prima della scrittura del codice, un'importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivate da questa attività saranno appositamente documentate.

È completamente ragionevole tuttavia pensare che tali documenti potrebbero contenere parole e terminologie complesse o comunque non direttamente comprensibili: è stato deciso dunque di realizzare un Glossario, nella quale saranno contenuti le spiegazioni relative a tali termini. Tale documento è in costante aggiornamento ed è reperibile, nella sua versione attuale, al seguente #link-glossario("indirizzo").

== Fonti

=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdfhttps://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato d'appalto C6: Sistema di Gestione di un Magazzino Distribuito - #M31]
- #link-norme("Norme di progetto")

=== Riferimenti informativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[T2 - I processi di ciclo di vita del software]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[T4 - Gestione di progetto]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf")[Lezione rovesciata - Documentazione]

#pagebreak()

= Analisi e gestione dei rischi

== Introduzione
Parte fondamentale per la redazione di un piano di progetto è il poter analizzare e classificare in maniera efficace i possibili rischi delle attività da svolgere: realizzarne una buona analisi permette di prevedere quali attività richiedono più tempo del previsto e, conseguentemente, valutare se il numero complessivo di attività inserite nel backlog settimanale sono in numero eccessivo o adeguato.

Un'analisi e gestione dei rischi adeguata prevede lo svolgimento di 4 fasi:

- *Identificazione*: ossia l'identificazione dei possibili rischi legati ad un'attività in tutti i vari domini, non solo quello progettuale, ma anche riguardante la sfera personale;
- *Analisi*: individuati i rischi è necessario valutare quanto ciascun di questi sia probabile, ossia che possibilità ha di effettivamente presentarsi, e che possibili risvolti questo potrebbe avere sulla buona riuscita dello sprint e del progetto;
- *Pianificazione*: analizzati rischi e possibile ricadute, è necessario pensare ai possibili metodi atti alla diminuzione della possibilità che tali rischi si avverino o, ove questo non possa essere applicabile, mitigarne gli effetti negativi;
- *Controllo*: la parte attiva della gestione del rischio che prevede il continuo monitoraggio delle varie attività per poter rilevare quanto prima possibile l'insorgere di un rischio e applicare le procedure di mitigazione definite in precedenza

È assolutamente ragionevole pensare che, causa ridotta esperienza, gli effetti di mitigazione possano rivelarsi inefficaci: per questo motivo è necessario prendere atto degli errori di mitigazione rilevati durante la fase di controllo per poter apportare miglioramenti alle strategie adottate.

In seguito saranno quindi illustrati i possibili rischi individuati da ALimitedGroup, divi in tre categorie:

- *RT* ossia *R*\ischio *T*\ecnologico
- *RI* ossia *R*\ischio *I*\ndividuale
- *RG* ossia *R*\ischio *G*\lobale

Per le informazioni riguardanti la nomenclatura si suggerisce la lettura della sezione apposita nelle #link-norme("Norme di Progetto").

== Rischio Tecnologico

=== RT1: Rischio Tecnologico legato alla tecnologia utilizzata
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RT1],
    [*Nome*], [Rischio Tecnologico legato alla tecnologia utilizzata],
    [*Descrizione*],
    [Rischio legato all'inesperienza o alla poca conoscenza di un componente da utilizzare per il progetto],

    [*Mitigazione*],
    [È necessario prevedere la possibilità che parte dell'impegno orario sarà dedicato alla formazione personale per l'uso di tale componente: è bene dunque valutare di spostare attività eventualmente di minore importanza al primo periodo successivo utile qualora altri componenti del gruppo non possano fornire supporto immediato. È necessario valutare anche la disponibilità di M31 al supporto.],

    [*Frequenza probabile di avvenimento*], [Alta],
    [*Pericolosità delle ripercussioni*], [Elevata],
  ),
  caption: [Informazioni sul rischio RT1],
)


=== RT2: Rischio Tecnologico legato a errori nel codice

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RT2],
    [*Nome*], [Rischio Tecnologico legato a errori nel codice],
    [*Descrizione*],
    [Risulta essere molto bassa la probabilità venga scritto del codice funzionante alla prima esecuzione. Inoltre, anche se in un primo momento potrebbe apparire funzionante, l'esecuzione di ulteriori test potrebbe ben presto far svanire questa impressione, richiedendo una riesaminazione di quanto scritto],

    [*Mitigazione*],
    [In caso di codice non funzionante, il programmatore cerca di risolvere il problema. Qualora questo risulti troppo complesso il programmatore chiederà aiuto a programmatori più esperti. In caso di problema particolarmente grave, le attività meno urgenti verranno posticipate per lasciare spazio alla risoluzione del problema.],

    [*Frequenza probabile di avvenimento*], [Alta],
    [*Pericolosità delle ripercussioni*], [Media],
  ),
  caption: [Informazioni sul rischio RT2],
)


== Rischio Individuale

=== RI1: Rischio Individuale derivante dalle altre attività universitarie

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RI1],
    [*Nome*], [Rischio Individuale derivante dalle altre attività universitarie],
    [*Descrizione*],
    [I componenti del gruppo seguono altri corsi oltre quello di Ingegneria del Software: è dunque assolutamente probabile che siano possibili indisponibilità momentanee derivanti dalle attività di questi corsi.],

    [*Mitigazione*],
    [Il componente che si ritrova in una situazione tale da non consentirgli il massimo impegno al progetto, comunicherà agli altri componenti tale problematica: i componenti cercheranno quindi di suddividere tra loro il lavoro in eccesso. Il componente recupererà il periodo di indisponibilità non appena sarà risolta la problematica.],

    [*Frequenza probabile di avvenimento*], [Media],
    [*Pericolosità delle ripercussioni*], [Media],
  ),
  caption: [Informazioni sul rischio RI1],
)

=== RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RI2],
    [*Nome*], [Rischio Individuale derivato da improvviso impegno o indisponibilità personale],
    [*Descrizione*],
    [Un componente del gruppo ha un impegno improvviso che gli impedisce di portare a termine le attività assegnate],

    [*Mitigazione*],
    [Il componente del gruppo darà tempestiva comunicazione della sua indisponibilità improvvisa agli altri componenti. Questi cercheranno di spartirsi le attività rimanenti, rimandandole al periodo successivo se necessario. Risolta l'indisponibilità, il componente cercherà di recuperare le attività eventualmente rimanenti],

    [*Frequenza probabile di avvenimento*], [Media],
    [*Pericolosità delle ripercussioni*], [Media],
  ),
  caption: [Informazioni sul rischio RI2],
)


== Rischio Globale <rischio_globale>

=== RG1: Rischio Globale derivato da forte disaccordo nel gruppo

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RG1],
    [*Nome*], [Rischio Globale derivato da forte disaccordo nel gruppo],
    [*Descrizione*], [I componenti del gruppo si trovano di fronte ad un forte disaccordo su una determinata questione],
    [*Mitigazione*],
    [I componenti esporranno, ciascuno con un lasso di tempo ben definito, le motivazioni a supporto della propria tesi. Assieme poi si cercherà di scegliere la soluzione più ragionevole, procedendo alla realizzazione di una votazione anonima ove possibile e necessario],

    [*Frequenza probabile di avvenimento*], [Bassa],
    [*Pericolosità delle ripercussioni*], [Bassa],
  ),
  caption: [Informazioni sul rischio RG1],
)


=== RG2: Rischio Globale derivato da malcomprensione del capitolato

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RG2],
    [*Nome*], [Rischio Globale derivato da malcomprensione del capitolato],
    [*Descrizione*],
    [Durante lo svolgimento delle attività di progetto viene sviluppato un componente (documentale o non) che tuttavia non rispecchia quanto stabilito nel capitolato],

    [*Mitigazione*],
    [Rilevata la problematica, i componenti discuteranno assieme la stessa alla prima riunione utile per una riorganizzazione delle attività presenti, cercando, se possibile, di dividersi l'attività di correzione],

    [*Frequenza probabile di avvenimento*], [Media],
    [*Pericolosità delle ripercussioni*], [Media],
  ),
  caption: [Informazioni sul rischio RG2],
)


=== RG3: Rischio Globale derivato da sottostima di attività

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RG3],
    [*Nome*], [Rischio Globale derivato da sottostima di attività],
    [*Descrizione*], [Lo svolgimento di una attività richiede più tempo del previsto],
    [*Mitigazione*],
    [Il componente o i componenti responsabili dell'attività segnalano, quanto prima possibile, il possibile ritardo. I componenti discuteranno quindi la possibilità di allargare il numero di partecipanti a tale attività, spostando, se necessario, più avanti nel tempo attività di durata più breve],

    [*Frequenza probabile di avvenimento*], [Alta],
    [*Pericolosità delle ripercussioni*], [Elevata],
  ),
  caption: [Informazioni sul rischio RG3],
)


=== RG4: Rischio Globale derivato da sovrastima di attività

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto),
    align: center,
    table.header(
      text(12pt, fill: white)[*Tipologia Dato*],
      text(12pt, fill: white)[*Valore*],
    ),

    [*Codice*], [RG4],
    [*Nome*], [Rischio Globale derivato da sovrastima di attività],
    [*Descrizione*], [Lo svolgimento di una attività richiede meno tempo del previsto],
    [*Mitigazione*],
    [Il componente o i componenti segnalano l'anticipo agli altri componenti del gruppo. Procederanno quindi all'aiuto dei componenti che ne hanno bisogno per minimizzare il rischio di ritardo. Qualora non ci siano situazioni critiche, i componenti in anticipo provvederanno all'inizio di una nuova attività, possibilmente compatibile con il tempo rimanente a disposizione],

    [*Frequenza probabile di avvenimento*], [Media],
    [*Pericolosità delle ripercussioni*], [Bassa],
  ),
  caption: [Informazioni sul rischio RG4],
)

#pagebreak()

= Pianificazione nel lungo termine

Come anticipato nella #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%201.0.0.pdf")[Dichiarazione degli Impegni], Il gruppo prevede di terminare il progetto entro e non oltre il giorno *31 Marzo 2025* con un budget di spesa fissato a *Euro 12.930*.

Al momento della candidatura si è teorizzato il seguente prospetto costi:


#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: (x: 1.1em, y: 0.6em),
    fill: (x, y) => if calc.rem(y, 2) == 0 {
      luma(235)
    },
    table.header(
      [*Ruolo*],
      [*Costo Orario*],
      [*Ore*],
      [*Costo*],
    ),

    [Responsabile], [30€/h], [58h], [1.740€],
    [Amministratore], [20€/h], [60h], [1.200€],
    [Analista], [25€/h], [60h], [1.500€],
    [Progettista], [25€/h], [150h], [3.750€],
    [Programmatore], [15€/h], [180h], [2.700€],
    [Verificatore], [15€/h], [136h], [2.040€],
    [*Totale*], [-], [*644h*], [*12.930€*],
  ),
  caption: [Riassunto dei costi derivanti dalle ore assegnate a ciascun ruolo],
)
\
In seguito a quanto suggerito in merito all'analisi dei requisiti#super[g] è tuttavia probabile una differente ripartizione finale del budget disponibile a favore del ruolo di analista#super[g] .

Si stima inoltre ad una candidatura per la *_Requirements and Technology Baseline_ (RTB)* entro il *3 febbraio 2025*.

#pagebreak()

= Pianificazione nel breve termine

== Introduzione

_ALimitedGroup_ ha stabilito di procedere con un *approccio Agile* allo svolgimento del progetto, riconoscendo che un periodo efficace per produrre sviluppi utili si aggira intorno alle 2 settimane: stabilisce dunque di realizzare *_sprint_*#super[g] di *circa 2 settimane*.

Seguendo questo principio, il gruppo si impegna a stabilire all'inizio di ogni _sprint_#super[g] le attività per le due settimane successive, ruotando nelle medesime occasioni i ruoli ricoperti, seppur mantenendo la possibilità di effettuare il cambiamento anche durante il suddetto periodo qualora le esigenze organizzative lo imponessero: tutto questo ha lo scopo di acquisire esperienza in ciascun ruolo e comprendere il periodo di rotazione ottimale.

Il gruppo si impegna altresì a concordare riunioni con il proponente #M31 per ricevere feedback su quanto realizzato in momenti quanto più vicini possibili alla scadenza degli _sprint_#super[g] .

Complessivamente riteniamo che il *modello Agile* possa rivelarsi il più efficace per portare a termine il progetto nei tempi prestabiliti, al contempo assicurandosi che quanto fatto sia realizzato conformemente alle volontà del proponente.

Seguiranno ora le descrizioni dei vari periodi di lavoro, nella quale verranno esposte:

- Informazioni generali
- Attività da svolgere
- Prospetto consumo tempo e costi
- Rischi attesi
- Consumo tempo e costi effettivo
- Aggiornamento delle risorse rimanenti
- Retrospettiva, comprendente anche i rischi effettivamente riscontrati

#pagebreak()

== Requirements and Technology Baseline (RTB)

=== Sprint 1

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[04-11-2024],
  [Fine prevista:], strong[24-11-2024],
  [Fine reale:], strong[24-11-2024],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint1intro>

Questo primo periodo ha l'obiettivo principale di risolvere tutti i problemi sorti durante la candidatura;
successivamente, avverrà la redazione dei documenti necessari per un buon inizio dei lavori.

In particolare, le attività previste sono:
- Aggiornamento del sito web
- Sistemazione del sistema di versionamento dei documenti
- Miglioramento del processo di redazione e verifica dei verbali
- Formalizzazione del legame tra decisioni intraprese nelle riunioni e backlog
- Prima redazione del Glossario
- Prima redazione delle Norme di Progetto
- Prima redazione del Piano di Progetto
- Stabilire un incontro con l'azienda proponente #M31
- Inizio stesura Analisi dei requisiti

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale
- RG2: Rischio Globale derivato da malcomprensione del capitolato
- RG3: Rischio Globale derivato da sottostima di attività

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(1, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 1 - Preventivo per componente", "Sprint 1 - Preventivo")

==== Consuntivo

#impegni(
  1,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 1 - Consuntivo per componente",
  "Sprint 1 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(1, "Sprint 1 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint abbiamo avuto difficoltà con la stima iniziale del numero di ore per ruolo.
Come si può evincere dalle tabelle 10 e 11, nel preventivo avevamo fortemente
sottostimato le ore necessarie per svolgere le fasi iniziali.
Questa è un istanza del rischio _RG3: Rischio Globale derivato da sottostima di attività_,
che avevamo previsto come possibile per questo periodo in quanto primo sprint#super[g] .

Inoltre, abbiamo incontrato il rischio
_RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale_.
Il responsabile per questo sprint#super[g] ,#persona(p.samuele),
ha dovuto ridimensionare notevolmente il proprio impegno per l'ultima settimana dello sprint#super[g] .
Per questo motivo, questa sezione del documento è redatta con qualche giorno di ritardo rispetto all'inizio dello sprint successivo.

=== Retrospettiva

Questo primo sprint è stato dedicato alla realizzazione di automazioni e alla redazione di documenti;
entrambi gli obiettivi sono stati raggiunti.
Tra le attività previste, elencate nella @sprint1intro,
solo l'attività _Inizio stesura Analisi dei Requisiti#super[g]_ non è stata svolta,
in quanto rimandata allo sprint successivo.

=== Sprint 2

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[24-11-2024],
  [Fine prevista:], strong[7-12-2024],
  [Fine reale:], strong[7-12-2024],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint2intro>

Il secondo sprint#super[g] è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[g] e sulla relativa discussione con il proponente #M31.

Le attività pianificate nel dettaglio includono:

- Redazione dell'Analisi dei Requisiti#super[g];
- Incontro con l'azienda proponente #M31 per discutere i requisiti e gli _use-case_;
- Studio delle tecnologie _Golang_ e _NATS_;
- Ottimizzazione del sistema di _ticketing_ e del *way of working#super[g]*;
- Riorganizzazione delle Norme di Progetto;
- Verifica del Piano di Progetto.

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata
- RI1: Rischio Individuale derivante dalle altre attività universitarie
- RG2: Rischio Globale derivato da malcomprensione del capitolato

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(2, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 2 - Preventivo per componente", "Sprint 2 - Preventivo")

==== Consuntivo

#impegni(
  2,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 2 - Consuntivo per componente",
  "Sprint 2 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(2, "Sprint 2 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint#super[g] si è concretizzato il rischio _RG3: Rischio Globale dovuto alla sottostima delle attività_, a causa di una previsione troppo ottimistica del tempo necessario per completare l'Analisi dei Requisiti#super[g].

Questo evento è strettamente legato al rischio _RG2: Rischio Globale derivante da una comprensione incompleta del capitolato_, poiché le difficoltà iniziali nel comprendere appieno i requisiti hanno rallentato il processo di stesura. La situazione è stata comunque chiarita grazie all'incontro con l'azienda proponente #M31.

Entrambi i rischi erano stati previsti per questo sprint e sono stati gestiti seguendo le linee guida delineate nella sezione @rischio_globale.

=== Retrospettiva

In questo secondo sprint#super[g], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei Requisiti#super[g], considerata una priorità immediata per il progetto e un passaggio fondamentale per le successive fasi di progettazione e sviluppo.

=== Sprint 3

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[8-12-2024],
  [Fine prevista:], strong[21-12-2024],
  [Fine reale:], strong[21-12-2024],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint3intro>

Il terzo sprint è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[g] e sull'inizio dello sviluppo del PoC

Le attività pianificate nel dettaglio includono:

- Continuo redazione dell'Analisi dei Requisiti#super[g];
- Discussione del Poc e dell'Analisi dei Requisiti#super[g] con l'azienda proponente #M31;
- Inizio redazione Piano di Qualifica;
- Studio e sperimentazione delle tecnologie _Golang_ e _NATS_ per cominciare la creazione di un PoC#super[g];
- Setup della repository con divisione del progetto in più microservizi
- Setup dell'ambiente di sviluppo locale in modo da renderlo replicabile per tutti i componenti del gruppo

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata
- RI1: Rischio Individuale derivante dalle altre attività universitarie
- RG2: Rischio Globale derivato da malcomprensione del capitolato

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(3, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 3 - Preventivo per componente", "Sprint 3 - Preventivo")

==== Consuntivo

#impegni(
  3,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 3 - Consuntivo per componente",
  "Sprint 3 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(3, "Sprint 3 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint#super[g] si è concretizzato il rischio _RG3: Rischio Globale dovuto alla sottostima delle attività_, a causa di una previsione troppo ottimistica del tempo necessario per completare una bozza soddisfacente dell'Analisi dei Requisiti#super[g]. Il gruppo ha mitigato questo rischio assegnando questa attività alla maggior parte dei componenti per accelerare il processo di scrittura.

Il rischio è quindi stato gestito seguendo le linee guida delineate nella sezione @rischio_globale.

=== Retrospettiva

In questo terzo sprint#super[g], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei Requisiti#super[g], considerata una priorità immediata per il progetto e un passaggio fondamentale per le fasi successive di progettazione e sviluppo.

L'obiettivo principale è stato raggiungere uno stato avanzato dell'Analisi dei Requisiti#super[g] per poter discutere con il professor Cardin la validità del lavoro svolto.

Per quanto riguarda lo svolgimento del PoC è stata creata la struttura della repository e sono state sviluppate le prime demo che utilizzano gli applicativi NATS & PostgreSQL.

I componenti del gruppo che hanno dichiarato poche ore rispetto alla media sono stati impegnati nello studio delle tecnologie per aumentare la produttività di sviluppo in previsione del completamento del PoC a fine Gennaio.

=== Sprint 4

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[22-12-2024],
  [Fine prevista:], strong[04-1-2025],
  [Fine reale:], strong[04-01-2025],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint4intro>

Il quarto sprint#super[g] è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[g] e sulla realizzazione del PoC#super[g] .

Le attività pianificate nel dettaglio includono:

- Aggiungere la sezione sulla codifica nelle Norme di Progetto;
- Completare la redazione degli Use Case opzionali nell'Analisi dei Requisiti#super[g];
- Svolgere un incontro con il professor Cardin per discutere l'Analisi dei Requisiti#super[g];
- Utilizzare tutte le tecnologie scelte nel PoC per valutarne l'usabilità;
- Sviluppare una prima versione di sincronizzazione tra due microservizi nel PoC#super[g] ;
- Proseguire con il Piano di Qualifica


==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata
- RG2: Rischio Globale derivato da malcomprensione del capitolato
- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(4, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 4 - Preventivo per componente", "Sprint 4 - Preventivo")

==== Consuntivo

#impegni(
  4,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 4 - Consuntivo per componente",
  "Sprint 4 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(4, "Sprint 4 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint si è concretizzato il rischio _RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale_, a causa delle vacanze natalizie che hanno rallentato il lavoro generale dell'intero gruppo. Il rischio era stato preventivato in quanto è stato deciso di svolgere comunque uno sprint durante il periodo festivo.

=== Retrospettiva

In questo quarto sprint#super[g], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei requisiti e del PoC#super[g] .

La riunione con il professor Cardin ha permesso di chiarire alcuni dubbi riguardo l'Analisi dei Requisiti#super[g],
come risultato di questa discussione sono state apportate alcune modifiche al documento, nello specifico la separazione
tra Use Case del backend e del frontend che devono essere rappresentati separatamente.

Non è stata completata la redazione degli Use Case non obbligatori a causa di problemi con la numerazione degli Use Case e la creazione dei relativi grafici in formato SVG.
Non è stata completata anche la sezione di codifica nelle Norme di Progetto, ma si è praticamente conclusa la redazione delle sezioni mancanti.
