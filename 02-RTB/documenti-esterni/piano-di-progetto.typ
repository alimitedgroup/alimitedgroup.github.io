#import "../../lib/importantdocs.typ": *
#import "../../lib/pdp.typ" : *
#let nome-documento = [Piano di Progetto]

#let ver = [0.3.0]
#show: body => importantdocs(
  data: datetime(day: 10, month: 12, year: 2024),
  tipo: [esterno],
  stato: [Redatto],
  versioni: (
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
  redattori: ((p.samuele), (p.loris), (p.marco),),
  descrizione: [Il seguente documento contiene il _Piano di Progetto_ utilizzato, da _ALimitedGroup_, per la realizzazione di un magazzino distribuito presentato da parte di #M31],
  titolo: "Piano di Progetto",
  body,
)

/*#let prospetto-orario(sprint) = {
  let sprint = str(sprint)
  let ore-spese-sprint = 0
  let budget-speso-sprint = 0
  let ore-tot = ruoli.values().map(ruolo => ruolo.max-ore).sum()
  let budget-tot = ruoli.values().map(ruolo => ruolo.max-ore * ruolo.costo).sum()
  let sprint-idx = sprints.keys().position(x => x == sprint)

  set align(center)
  figure(
    table(
      columns: 6,
      align: center,
      [Ruolo], [Costo], [Ore], [Costo], [Ore rimanenti], [Budget rimanente],

      ..for (i, ruolo) in ruoli.values().enumerate() {
        let ore-spese = sprints.at(sprint).consuntivo.map(row => row.at(i + 1)).sum()
        ore-spese-sprint += ore-spese
        budget-speso-sprint += ruolo.costo * ore-spese

        let ore-spese-prev = sprints
          .values()
          .slice(0, sprint-idx)
          .map(sprint => sprint.consuntivo.map(row => row.at(i + 1)).sum())
          .sum(default: 0)
        let budget-speso-prec = ruolo.costo * ore-spese-prev

        let ore-rimanenti = ruolo.max-ore - ore-spese-prev - ore-spese
        let ore-rimanenti-prev = ruolo.max-ore - ore-spese-prev
        let budget-rimanente = ruolo.costo * ore-rimanenti
        let budget-rimanente-prev = budget-rimanente + ruolo.costo * ore-spese

        (
          ruolo.nome,
          str(ruolo.costo) + "€/h",
          if ore-spese != 0 {
            str(ore-spese)
          } else {
            [-]
          },
          if ore-spese != 0 {
            str(ore-spese * ruolo.costo) + "€"
          } else {
            [-]
          },
          str(ore-rimanenti) + if ore-spese != 0 {
            text(red, " (" + str(ore-rimanenti - ore-rimanenti-prev) + ")")
          },
          str(budget-rimanente) + "€" + if ore-spese != 0 {
            text(red, " (" + str(budget-rimanente - budget-rimanente-prev) + "€)")
          },
        )
      },

      [Totale],
      [-],
      str(ore-spese-sprint),
      str(budget-speso-sprint) + "€",
      str(ore-tot - ore-spese-sprint) + text(red)[ (#{-ore-spese-sprint})],
      str(budget-tot - budget-speso-sprint) + text(red)[ (#{-budget-speso-sprint}€)],
    ),
    caption: [Variazioni nelle risorse disponibili per il primo sprint, rispetto alle risorse iniziali],
  )
}*/


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
In seguito a quanto suggerito in merito all'analisi dei requisiti è tuttavia probabile una differente ripartizione finale del budget disponibile a favore del ruolo di analista.

Si stima inoltre ad una candidatura per la *_Requirements and Technology Baseline_ (RTB)* entro il *3 febbraio 2025*.

#pagebreak()

= Pianificazione nel breve termine

== Introduzione

_ALimitedGroup_ ha stabilito di procedere con un *approccio Agile* allo svolgimento del progetto, riconoscendo che un periodo efficace per produrre sviluppi utili si aggira intorno alle 2 settimane: stabilisce dunque di realizzare *_sprint_* di *circa 2 settimane*.

Seguendo questo principio, il gruppo si impegna a stabilire all'inizio di ogni _sprint_ le attività per le due settimane successive, ruotando nelle medesime occasioni i ruoli ricoperti, seppur mantenendo la possibilità di effettuare il cambiamento anche durante il suddetto periodo qualora le esigenze organizzative lo imponessero: tutto questo ha lo scopo di acquisire esperienza in ciascun ruolo e comprendere il periodo di rotazione ottimale.

Il gruppo si impegna altresì a concordare riunioni con il proponente #M31 per ricevere feedback su quanto realizzato in momenti quanto più vicini possibili alla scadenza degli _sprint_.

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

#impegni(1, preventivo: true, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 1 - Consuntivo per componente", "Sprint 1 - Consuntivo")

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(1, "Sprint 1 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint abbiamo avuto difficoltà con la stima iniziale del numero di ore per ruolo.
Come si può evincere dalle tabelle 10 e 11, nel preventivo avevamo fortemente
sottostimato le ore necessarie per svolgere le fasi iniziali.
Questa è un istanza del rischio _RG3: Rischio Globale derivato da sottostima di attività_,
che avevamo previsto come possibile per questo periodo in quanto primo sprint.

Inoltre, abbiamo incontrato il rischio
_RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale_.
Il responsabile per questo sprint, #persona(p.samuele),
ha dovuto ridimensionare notevolmente il proprio impegno per l'ultima settimana dello sprint.
Per questo motivo, questa sezione del documento è redatta con qualche giorno di ritardo rispetto all'inizio dello sprint successivo.

=== Retrospettiva

Questo primo sprint è stato dedicato alla realizzazione di automazioni e alla redazione di documenti;
entrambi gli obiettivi sono stati raggiunti.
Tra le attività previste, elencate nella @sprint1intro,
solo l'attività _Inizio stesura Analisi dei Requisiti_ non è stata svolta,
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

Il secondo sprint è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti e sulla relativa discussione con il proponente #M31.

Le attività pianificate nel dettaglio includono:

- Redazione dell'Analisi dei Requisiti;
- Incontro con l'azienda proponente #M31 per discutere i requisiti e gli _use-case_;
- Studio delle tecnologie _Golang_ e _NATS_;
- Ottimizzazione del sistema di _ticketing_ e del *way of working*;
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

#impegni(2, preventivo: true, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 2 - Consuntivo per componente", "Sprint 2 - Consuntivo")

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(2, "Sprint 2 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint si è concretizzato il rischio _RG3: Rischio Globale dovuto alla sottostima delle attività_, a causa di una previsione troppo ottimistica del tempo necessario per completare l'Analisi dei Requisiti.

Questo evento è strettamente legato al rischio _RG2: Rischio Globale derivante da una comprensione incompleta del capitolato_, poiché le difficoltà iniziali nel comprendere appieno i requisiti hanno rallentato il processo di stesura. La situazione è stata comunque chiarita grazie all'incontro con l'azienda proponente #M31.

Entrambi i rischi erano stati previsti per questo sprint e sono stati gestiti seguendo le linee guida delineate nella sezione @rischio_globale.

=== Retrospettiva

In questo secondo sprint, ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei Requisiti, considerata una priorità immediata per il progetto e un passaggio fondamentale per le successive fasi di progettazione e sviluppo.