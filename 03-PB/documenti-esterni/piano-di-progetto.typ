#import "../../lib/importantdocs.typ": *
#import "../../lib/pdp.typ": *
#let nome-documento = [Piano di Progetto]

#set list(indent: 0.5em)
#let ver = [1.1.0]
#show: body => importantdocs(
  data: datetime(day: 24, month: 02, year: 2025),
  tipo: [esterno],
  stato: [Approvato per RTB],
  versioni: (
    (
      vers: "1.1.0",
      date: datetime(day: 24, month: 02, year: 2025),
      autore: p.marco,
      verifica: p.loris,
      approvazione: p.samuele,
      descr: "Redazione per il settimo sprint " + [(@sprint7).\ ],
    ),
    (
      vers: "1.0.0",
      date: datetime(day: 18, month: 02, year: 2025),
      autore: p.marco,
      verifica: p.loris,
      approvazione: p.samuele,
      descr: "Correzioni minori." + [ \ ],
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 05, month: 02, year: 2025),
      autore: p.marco,
      verifica: p.loris,
      descr: "Redazione per il sesto sprint " + [(@sprint6).],
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 24, month: 1, year: 2025),
      autore: p.matteo,
      verifica: p.emanuele,
      descr: "Redazione per il quinto sprint " + [(@sprint5).],
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 16, month: 1, year: 2025),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Redazione per il quarto sprint " + [(@sprint4).],
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 29, month: 12, year: 2024),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Redazione per il terzo sprint " + [(@sprint3).],
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
      descr: "Redazione per il secondo sprint " + [(@sprint2).],
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 27, month: 11, year: 2024),
      autore: p.samuele,
      verifica: p.lorenzo,
      descr: "Redazione documento e redazione primo sprint " + [(@introduzione, @agr, @plt, @pbti, @sprint1).],
    ),
  ),
  versione: ver,
  responsabile: ((p.samuele),),
  verificatore: ((p.emanuele), (p.lorenzo), (p.samuele)),
  redattori: ((p.loris), (p.marco), (p.matteo), (p.samuele)),
  descrizione: [Il _Piano di Progetto_ contiene il resoconto delle attività svolte e da svolgere da _ALimitedGroup_],
  titolo: "Piano di Progetto",
  body,
)

#set list(indent: 0.5em)
= Introduzione <introduzione>
== Informazioni generali

Il *Piano di Progetto* è un documento che cerca di esprimere le attività svolte e da svolgere durante la realizzazione del progetto di *Ingegneria del Software*.

Il documento è di importanza sostanziale per permettere una corretta pianificazione del da farsi, analizzando il tempo previsto ed effettivo per ogni attività, nonché i potenziali rischi legati a quanto da svolgere.

Data la necessità di pianificare le attività volta per volta, in quanto una progettazione dettagliata sul lungo termine certamente si rivelerebbe assai inefficace, il *Piano di Progetto* è per sua natura un documento che non potrà dirsi mai terminato sino alla fine del progetto: per questo motivo sarà realizzato con un approccio incrementale, aggiungendo informazioni volta per volta.

Si noti inoltre che all'inizio del quarto _sprint_#super[g] _ALimitedGroup_ ha cambiato la modalità di pianificazione rendendola più specifica e utile: si veda il #link("https://alimitedgroup.github.io/VI%2018-12-2024%20v1.0.0.pdf")[*verbale interno del 18 Dicembre 2024*].

== Glossario

La realizzazione di un sistema software richiede, ancor prima della scrittura del codice, un'importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivate da questa attività saranno appositamente documentate.

È completamente ragionevole tuttavia pensare che tali documenti potrebbero contenere parole e terminologie complesse o comunque non direttamente comprensibili: è stato deciso dunque di realizzare un Glossario, nella quale saranno contenuti le spiegazioni relative a tali termini. Tale documento è in costante aggiornamento ed è reperibile, nella sua versione attuale, al seguente #link-glossario("indirizzo").

Le parole che possiedono un riferimento nel Glossario saranno indicate nel modo che segue: #align(center)[#text(size: 1.2em)[*`parola`#super("g")*]]

== Fonti

=== Riferimenti normativi

- *Capitolato d'appalto C6: Sistema di Gestione di un Magazzino Distribuito - #M31*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf] \
  *Ultimo Accesso 5 Febbraio 2025*
- *Norme di Progetto#super[G] ver. 1.0.0* \
  #link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf")\
  *Ultimo Accesso 5 Febbraio 2025*

=== Riferimenti informativi

- *I processi di ciclo di vita del software* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf] \
  *Ultimo Accesso 5 Febbraio 2025*
- *Gestione di progetto* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf] \
  *Ultimo Accesso 5 Febbraio 2025*
- *Lezione rovesciata - Documentazione* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf] \
  *Ultimo Accesso 5 Febbraio 2025*
- *Glossario ver. 1.0.0* \
  #link("https://alimitedgroup.github.io/Glossario.pdf")[https://alimitedgroup.github.io/Glossario.pdf] \
  *Ultimo Accesso 5 Febbraio 2025*

#pagebreak()

= Analisi e gestione dei rischi <agr>

== Introduzione
Parte fondamentale per la redazione di un piano di progetto è il poter analizzare e classificare in maniera efficace i possibili rischi delle attività da svolgere: realizzarne una buona analisi permette di prevedere quali attività richiedono più tempo del previsto e, conseguentemente, valutare se il numero complessivo di attività inserite nel backlog settimanale sono in numero eccessivo o adeguato.

Un'analisi e gestione dei rischi adeguata prevede lo svolgimento di 4 fasi:

- *Identificazione*: ossia l'identificazione dei possibili rischi legati ad un'attività in tutti i vari domini, non solo quello progettuale, ma anche riguardante la sfera personale;
- *Analisi*: individuati i rischi è necessario valutare quanto ciascun di questi sia probabile, ossia che possibilità ha di effettivamente presentarsi, e che possibili risvolti questo potrebbe avere sulla buona riuscita dello _sprint_#super[g] e del progetto;
- *Pianificazione*: analizzati rischi e possibile ricadute, è necessario pensare ai possibili metodi atti alla diminuzione della possibilità che tali rischi si avverino o, ove questo non possa essere applicabile, mitigarne gli effetti negativi;
- *Controllo*: la parte attiva della gestione del rischio che prevede il continuo monitoraggio delle varie attività per poter rilevare quanto prima possibile l'insorgere di un rischio e applicare le procedure di mitigazione definite in precedenza

È assolutamente ragionevole pensare che, causa ridotta esperienza, gli effetti di mitigazione possano rivelarsi inefficaci: per questo motivo è necessario prendere atto degli errori di mitigazione rilevati durante la fase di controllo per poter apportare miglioramenti alle strategie adottate.

In seguito saranno quindi illustrati i possibili rischi individuati da _ALimitedGroup_, divi in tre categorie:

- *RT* ossia *R*\ischio *T*\ecnologico
- *RI* ossia *R*\ischio *I*\ndividuale
- *RG* ossia *R*\ischio *G*\lobale

Per le informazioni riguardanti la nomenclatura si suggerisce la lettura della sezione apposita nelle #link-norme([Norme di Progetto#super[G]]).

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
    [Risulta essere molto bassa la probabilità venga scritto del codice funzionante alla prima esecuzione. Inoltre, anche se in un primo momento potrebbe apparire funzionante, l'esecuzione di ulteriori test potrebbe ben presto far svanire questa impressione, richiedendo una nuova verifica di quanto scritto],

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

= Pianificazione nel lungo termine <plt>

Come anticipato nella #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%201.0.0.pdf")[Dichiarazione degli Impegni], Il gruppo prevede di terminare il progetto entro e non oltre il giorno *31 Marzo 2025* con un budget di spesa fissato a *Euro 12.930*.

Al momento della candidatura si è teorizzato il seguente prospetto costi:


#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: (x: 1.1em, y: 0.6em),
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    table.header(
      text(fill: white)[*Ruolo*],
      text(fill: white)[*Costo Orario*],
      text(fill: white)[*Ore*],
      text(fill: white)[*Costo*],
    ),

    text(fill: white)[*Responsabile*], [30€/h], [58h], [1.740€],
    text(fill: white)[*Amministratore*], [20€/h], [60h], [1.200€],
    text(fill: white)[*Analista*], [25€/h], [60h], [1.500€],
    text(fill: white)[*Progettista*], [25€/h], [150h], [3.750€],
    text(fill: white)[*Programmatore*], [15€/h], [180h], [2.700€],
    text(fill: white)[*Verificatore*], [15€/h], [136h], [2.040€],
    text(fill: white)[*Totale*], [-], [*644h*], [*12.930€*],
  ),
  caption: [Riassunto dei costi previsti derivanti dalle ore assegnate a ciascun ruolo],
)
\
In seguito a quanto suggerito in merito all'Analisi dei Requisiti#super[G] è tuttavia probabile una differente ripartizione finale del budget disponibile a favore del ruolo di analista#super[G], come qui riportato:

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: (x: 1.1em, y: 0.6em),
    fill: (x, y) => if x == 0 or y == 0 {
      rgb("#800080")
    } else { rgb("#d8b2d8") },
    table.header(
      text(fill: white)[*Ruolo*],
      text(fill: white)[*Costo Orario*],
      text(fill: white)[*Ore*],
      text(fill: white)[*Costo*],
    ),

    text(fill: white)[*Responsabile*], [30€/h], [50h], [1.500€],
    text(fill: white)[*Amministratore*], [20€/h], [72h], [1.440€],
    text(fill: white)[*Analista*], [25€/h], [83h], [2.075€],
    text(fill: white)[*Progettista*], [25€/h], [132h], [3.300€],
    text(fill: white)[*Programmatore*], [15€/h], [175h], [2.625€],
    text(fill: white)[*Verificatore*], [15€/h], [132h], [1.980€],
    text(fill: white)[*Totale*], [-], [*644h*], [*12.920€*],
  ),
  caption: [Riassunto dei costi ridistribuiti derivanti dalle ore assegnate a ciascun ruolo],
)

Si stima inoltre ad una candidatura per la *_Requirements and Technology Baseline (RTB)_* entro il *3 febbraio 2025*.

Seguiranno ora le attività previste per la *_Requirements and Technology Baseline (RTB)_* e la *_Product Baseline (PB)_*: tali sezioni saranno utili per correttamente calendarizzare quanto da realizzare per ogni _sprint_#super[g] .

#pagebreak()
== Attività previste per la Requirements and Technology Baseline (RTB)

#show figure: set block(breakable: true)
#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    align: (x, y) => if y == 0 or (x != 1 and x != 2) { center + horizon } else { left },
    inset: (x: 1.1em, y: 0.6em),
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    table.header(
      text(fill: white)[*Attività*],
      text(fill: white)[*Descrizione*],
      text(fill: white)[*Periodo di svolgimento*],
      text(fill: white)[*Stato*],
    ),

    [*Redazione Analisi dei Requisiti*],
    [Redazione delle seguenti parti:
      - Parte introduttiva del documento;
      - Casi d'Uso relativi a requisiti obbligatori;
      - Casi d'Uso relativi a requisiti non obbligatori;
      - Casi d'Uso attività _Backend_;
      - Requisiti.
    ],
    [Introduzione: _sprint_ 1 \ \
      Casi d'Uso obbligatori: \
      da _sprint_ 2 a _sprint_ 4 \ \
      Casi d'Uso non obbligatori: \ _sprint 5_ \ \
      Casi d'Uso attività _Backend_: \ _sprint_ 5 \ \
      Redazione Requisiti: \ _sprint_ 5],
    [Completato per RTB],

    [*Redazione Piano di Progetto*],
    [Redazione delle seguenti parti:
      - Parte introduttiva del documento;
      - Analisi e gestione dei rischi
      - Pianificazione nel lungo e breve termine
    ],
    [Introduzione: _sprint_ 2 \ \
      Analisi e gestione dei rischi: \ tutti gli _sprint_ \ \
      Pianificazione nel lungo e breve termine: \ tutti gli _sprint_
    ],
    [Completato per RTB],

    [*Redazione Piano di Qualifica*],
    [Redazione delle seguenti parti:
      - Parte introduttiva del documento;
      - Soglie delle misurazioni;
      - Auto-miglioramento;
      - Metodi di testing;
      - Cruscotto di valutazione.
    ],
    [Introduzione: _sprint_ 2 \ \
      Soglie delle misurazioni: \ da _sprint_ 2 a _sprint_ 5 \ \
      Automiglioramento: \ _sprint_ 5 \ \
      Metodi di testing: \ _sprint_ 6 \ \
      Cruscotto di valutazione: \ Tutti gli _sprint_
    ],
    [Completato per RTB],

    [*Redazione Norme di Progetto*],
    [Redazione delle seguenti parti:
      - Parte introduttiva del documento;
      - Processi Primari;
      - Processi di Supporto;
      - Processi Organizzativi;
      - Metriche utilizzate;
    ],
    [Introduzione: _sprint_ 1 \ \
      Processi Primari: \ da _sprint_ 1 a _sprint_ 3 \ \
      Processi di Supporto: \ da _sprint_ 1 a _sprint_ 6 \ \
      Processi Organizzativi: \ da _sprint_ 1 a _sprint_ 4 \ \
      Metriche utilizzate: \ _sprint 6_
    ],
    [Completato per RTB],

    [*Redazione del Glossario*],
    [Redazione delle seguenti parti:
      - Termini.
    ],
    [Termini: \ Tutti gli _sprint_],
    [Completato per RTB],

    [*Realizzazione del Proof of Concept (PoC)*],
    [Testing delle seguenti tecnologie:
      - _Golang_;
      - NATS;
      - Docker;
      - Observability stack (Grafana);
      Testing della sincronizzazione],
    [Tecnologie: \ da _sprint_ 3 a _sprint_ 5 \ \
      Sincronizzazione: \ _sprint_ 6],
    [Completato],
  ),
  caption: [Attività previste per la _Requirements and Technology Baseline (RTB)_],
)

#pagebreak()
== Attività previste per la Product Baseline (PB)

#figure(
  table(
    columns: 4,
    align: (x, y) => if y == 0 or (x != 1 and x != 2) { center + horizon } else { left },
    inset: (x: 1.1em, y: 0.6em),
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    table.header(
      text(fill: white)[*Attività*],
      text(fill: white)[*Descrizione*],
      text(fill: white)[*Periodo di svolgimento*],
      text(fill: white)[*Stato*],
    ),

    [*Redazione della Specifica Tecnica*],
    [Redazione delle seguenti parti:
      - Struttura base del documento;
      - Inserire le tecnologie per la codifica
      - Capitolo "Architettura Logica";
      - Capitolo "Architettura di Deployment".
    ],
    [Redigere la struttura base del documento: _sprint_ 7. \ \
      Redigere i capitoli "Architettura Logica" e "Architettura di Deployment" : _sprint_ 7. \ \
      Inserire all'interno del documento le tecnologie per la codifica: _sprint 7_.],
    [In redazione],

    [*Redazione del Manuale Utente*],
    [Redazione delle seguenti parti:
      - Struttura base del documento;
      - Introduzione e scopo del documento.
      Inoltre, verrà reso fruibile, questo documento, dal sito di _ALimitedGroup_.],
    [Redigere la struttura base del documento: _sprint_ 7. \ \
      Redigere i capitoli "Introduzione" e "Scopo del documento": _sprint_ 7.\ \
      Rendere fruibile, tramite il sito di _ALimitedGroup_, il Manuale Utente: da _sprint_ 7 a _sprint_ 9.],
    [In redazione],

    [*Correzione Analisi dei Requisiti*],
    [Correzione delle seguenti parti:
      - Correzione degli use-case n. 32, 67 e 68;
      - Correzione con l'aggiunta del tracciamento dei Casi d'Uso;
      - Correzione dei requisiti non funzionali.
    ],
    [Correzione dei Casi d'Uso n. 32, 67 e 68: _sprint_ 7. \ \
      Aggiunta del tracciamento dei Casi d'Uso: _sprint_ 7. \ \
      Correzione dei requisiti non funzionali: _sprint_ 7.],
    [In redazione],

    [*Correzione Norme di Progetto*],
    [Correzione delle seguenti parti:
      - Correzione con aggiunta della sezione "Strumenti a supporto" a tutti i processi presenti all'interno del documento;
      - Correzione con integrazione della sezione "Sviluppo" con le decisioni intraprese durante la riunione interna svolta in data 24/02.
    ],
    [Correzione con aggiunta della sezione "Strumenti a supporto" : _sprint_ 7. \ \
      Correzione con integrazione della sezione "Sviluppo": _sprint 7_.],
    [In redazione],

    [*Correzione Piano di Qualifica*],
    [Correzione delle seguenti parti:
      - Correzione con aggiunta di indicatori quantitativi riguardanti i test da effettuare;
      - Correzione con aggiunta di misurazioni che valutino la qualità del lavoro svolto, e come viene migliorato _sprint_ dopo _sprint_.
    ],
    [],
    [In redazione],

    [*Ampliamento del Glossario*],
    [Redazione, con conseguente ampliamento del Glossario, delle seguenti parti:
      - Termini.
    ],
    [Ampliamento del Glossario: tutti gli _sprint_.],
    [In redazione],

    [*Realizzazione del Minimum Viable Product (MVP)*],
    [Realizzazione del prodotto finale con conseguente consegna all'azienda proponente (#M31), successivamente aver fatto ogni _test_ descritto nel Piano di Qualifica. ],
    [Realizzazione del MVP: da _sprint 7_ a _sprint 9_. \ \
    ],
    [In fase di implementazione],
  ),
  caption: [Attività previste per la _Product Baseline (PB)_],
)

#pagebreak()

= Pianificazione nel breve termine

== Introduzione <pbti>

_ALimitedGroup_ ha stabilito di procedere con un *approccio Agile* allo svolgimento del progetto, riconoscendo che un periodo efficace per produrre sviluppi utili si aggira intorno alle 2 settimane: stabilisce dunque di realizzare *_sprint_*#super[G] di *circa 2 settimane*.

Seguendo questo principio, il gruppo si impegna a stabilire all'inizio di ogni _sprint_#super[G] le attività per le due settimane successive, ruotando nelle medesime occasioni i ruoli ricoperti, seppur mantenendo la possibilità di effettuare il cambiamento anche durante il suddetto periodo qualora le esigenze organizzative lo imponessero: tutto questo ha lo scopo di acquisire esperienza in ciascun ruolo e comprendere il periodo di rotazione ottimale.

Il gruppo si impegna altresì a concordare riunioni con il proponente #M31 per ricevere feedback su quanto realizzato in momenti quanto più vicini possibili alla scadenza degli _sprint_#super[G].
Complessivamente riteniamo che il *modello Agile* possa rivelarsi il più efficace per portare a termine il progetto nei tempi prestabiliti, al contempo assicurandosi che quanto fatto sia realizzato conformemente alle volontà del proponente#super[G].

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

=== Sprint 1 <sprint1>

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
- Formalizzazione del legame tra decisioni intraprese nelle riunioni e _backlog_
- Prima redazione del Glossario
- Prima redazione delle Norme di Progetto#super[G]
- Prima redazione del Piano di Progetto
- Stabilire un incontro con l'azienda proponente #M31
- Inizio stesura Analisi dei requisiti

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale;
- RG2: Rischio Globale derivato da malcomprensione del capitolato;
- RG3: Rischio Globale derivato da sottostima di attività.

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(1, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 1 - Preventivo per componente", "Sprint 1 - Preventivo")

==== Consuntivo
#v(1em)
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
che avevamo previsto come possibile per questo periodo in quanto primo sprint#super[G].
Inoltre, abbiamo incontrato il rischio
_RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale_.
Il responsabile per questo sprint#super[G], #persona(p.samuele),
ha dovuto ridimensionare notevolmente il proprio impegno per l'ultima settimana dello sprint#super[G]. Per questo motivo, questa sezione del documento è redatta con qualche giorno di ritardo rispetto all'inizio dello sprint successivo.

=== Retrospettiva

Questo primo sprint è stato dedicato alla realizzazione di automazioni e alla redazione di documenti;
entrambi gli obiettivi sono stati raggiunti.
Tra le attività previste, elencate nella @sprint1intro,
solo l'attività _Inizio stesura Analisi dei Requisiti#super[G]_ non è stata svolta,
in quanto rimandata allo sprint successivo.

#pagebreak()
=== Sprint 2 <sprint2>

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

Il secondo sprint#super[G] è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[G] e sulla relativa discussione con il proponente #M31.

Le attività pianificate nel dettaglio includono:

- Redazione dell'Analisi dei Requisiti#super[G];
- Incontro con l'azienda proponente #M31 per discutere i requisiti e gli Casi d'Uso;
- Studio delle tecnologie _Golang_ e _NATS_#super[G];
- Ottimizzazione del sistema di _ticketing_ e del *Way of Working#super[G]*;
- Riorganizzazione delle Norme di Progetto#super[G];
- Verifica del Piano di Progetto.

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività universitarie;
- RG2: Rischio Globale derivato da malcomprensione del capitolato.


==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(2, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 2 - Preventivo per componente", "Sprint 2 - Preventivo")

==== Consuntivo
#v(1em)
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

Durante questo sprint#super[G] si è concretizzato il rischio _RG3: Rischio Globale dovuto alla sottostima delle attività_, a causa di una previsione troppo ottimistica del tempo necessario per completare l'Analisi dei Requisiti#super[G].

Questo evento è strettamente legato al rischio _RG2: Rischio Globale derivante da una comprensione incompleta del capitolato_, poiché le difficoltà iniziali nel comprendere appieno i requisiti hanno rallentato il processo di stesura. La situazione è stata comunque chiarita grazie all'incontro con l'azienda proponente #M31.

Entrambi i rischi erano stati previsti per questo sprint e sono stati gestiti seguendo le linee guida delineate nella sezione @rischio_globale.

=== Retrospettiva

In questo secondo sprint#super[G], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei Requisiti#super[G], considerata una priorità immediata per il progetto e un passaggio fondamentale per le successive fasi di progettazione e sviluppo.
#pagebreak()
=== Sprint 3 <sprint3>

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

Il terzo sprint è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[G] e sull'inizio dello sviluppo del PoC

Le attività pianificate nel dettaglio includono:

- Continuo redazione dell'Analisi dei Requisiti#super[G];
- Discussione del PoC e dell'Analisi dei Requisiti#super[G] con l'azienda proponente #M31;
- Inizio redazione Piano di Qualifica;
- Studio e sperimentazione delle tecnologie _Golang_ e _NATS_#super[G] per cominciare la creazione di un PoC#super[G];
- Setup della repository con divisione del progetto in più microservizi
- Setup dell'ambiente di sviluppo locale in modo da renderlo replicabile per tutti i componenti del gruppo

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività universitarie;
- RG2: Rischio Globale derivato da malcomprensione del capitolato.

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(3, posizioni-legenda: (2, 2, -2, 2, -2, -2), "Sprint 3 - Preventivo per componente", "Sprint 3 - Preventivo")

==== Consuntivo
#v(1em)
#impegni(
  3,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, -2, -2),
  "Sprint 3 - Consuntivo per componente",
  "Sprint 3 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(3, "Sprint 3 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint#super[G] si è concretizzato il rischio _RG3: Rischio Globale dovuto alla sottostima delle attività_, a causa di una previsione troppo ottimistica del tempo necessario per completare una bozza soddisfacente dell'Analisi dei Requisiti#super[G]. Il gruppo ha mitigato questo rischio assegnando questa attività alla maggior parte dei componenti per accelerare il processo di scrittura.

Il rischio è quindi stato gestito seguendo le linee guida delineate nella sezione @rischio_globale.

=== Retrospettiva

In questo terzo sprint#super[G], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei Requisiti#super[G], considerata una priorità immediata per il progetto e un passaggio fondamentale per le fasi successive di progettazione e sviluppo.

L'obiettivo principale è stato raggiungere uno stato avanzato dell'Analisi dei Requisiti#super[G] per poter discutere con il professor Cardin la validità del lavoro svolto.

Per quanto riguarda lo svolgimento del PoC è stata creata la struttura della repository e sono state sviluppate le prime demo che utilizzano gli applicativi NATS & PostgreSQL.

I componenti del gruppo che hanno dichiarato poche ore rispetto alla media sono stati impegnati nello studio delle tecnologie per aumentare la produttività di sviluppo in previsione del completamento del PoC a fine Gennaio.

#pagebreak()
=== Sprint 4 <sprint4>

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[22-12-2024],
  [Fine prevista:], strong[04-01-2025],
  [Fine reale:], strong[04-01-2025],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint4intro>

Il quarto sprint#super[G] è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[G] e sulla realizzazione del PoC#super[G].
Le attività pianificate nel dettaglio includono:

- Aggiungere la sezione sulla codifica nelle Norme di Progetto#super[G];
- Completare la redazione dei Casi d'Uso opzionali nell'Analisi dei Requisiti#super[G];
- Svolgere un incontro con il professor Cardin per discutere l'Analisi dei Requisiti#super[G];
- Utilizzare tutte le tecnologie scelte nel PoC per valutarne l'usabilità;
- Sviluppare una prima versione di sincronizzazione tra due microservizi nel PoC#super[G];
- Proseguire con il Piano di Qualifica


==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RG2: Rischio Globale derivato da malcomprensione del capitolato;
- RI1: Rischio Individuale derivante dalle altre attività universitarie;
- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(4, posizioni-legenda: (2, 2, -2, 2, -2, -2), "Sprint 4 - Preventivo per componente", "Sprint 4 - Preventivo")

==== Consuntivo
#v(1em)
#impegni(
  4,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, -2, -2),
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

In questo quarto sprint#super[G], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei requisiti e del PoC#super[G].
La riunione con il professor Cardin ha permesso di chiarire alcuni dubbi riguardo l'Analisi dei Requisiti#super[G],
come risultato di questa discussione sono state apportate alcune modifiche al documento, nello specifico la separazione
tra Casi d'Uso del backend e del frontend che devono essere rappresentati separatamente.

Non è stata completata la redazione degli Casi d'Uso non obbligatori a causa di problemi con la numerazione degli Casi d'Uso e la creazione dei relativi grafici in formato SVG.
Non è stata completata anche la sezione di codifica nelle Norme di Progetto#super[G], ma si è praticamente conclusa la redazione delle sezioni mancanti.

#pagebreak()

=== Sprint 5 <sprint5>

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[06-01-2025],
  [Fine prevista:], strong[18-01-2025],
  [Fine reale:], strong[18-01-2025],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint5intro>

Il quinto sprint#super[G] è focalizzato principalmente sulla redazione dell'Analisi dei Requisiti#super[G], sul completamento del PoC#super[G] e sul proseguimento del Piano di Qualifica, nonché sulla verifica delle Norme di Progetto#super[G].

Le attività pianificate nel dettaglio includono:

- Terminare la stesura dei Casi d'Uso relativi a requisiti non obbligatori e riguardanti le attività di _Backend_#super[G] del Sistema;
- Proseguire con la stesura del Piano di Qualifica inserendo le informazioni aggiuntive rispetto alle misurazioni;
- Effettuare le prime misurazioni da riportare nel Piano di Qualifica;
- Effettuare la verifica di quanto redatto nelle Norme di Progetto#super[G];
- Terminare la realizzazione del PoC completando l’analisi di quanto necessario a realizzare l’aggiornamento delle informazioni tra i vari elementi del Sistema;

Il Responsabile dello sprint dovrà inoltre contattare #M31 al fine di predisporre una riunione per discutere dell'efficacia dell'Analisi dei Requisiti#super[G] e del PoC realizzato.

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività universitarie;
- RG3: Rischio Globale derivato da sottostima di attività.

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(5, posizioni-legenda: (2, 2, -2, 2, -2, -2), "Sprint 5 - Preventivo per componente", "Sprint 5 - Preventivo")

==== Consuntivo
#v(1em)
#impegni(
  5,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, -2, -2),
  "Sprint 5 - Consuntivo per componente",
  "Sprint 5 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(5, "Sprint 5 - Variazione nelle risorse disponibili")

#v(1em)
==== Rischi incontrati

Durante questo sprint si è concretizzato il rischio _RI1: Rischio Individuale derivante dalle altre attività universitarie_, a causa dell'inizio della sessione e al progressivo avvicinarsi delle scadenze di altri progetti universitari.

In merito all'Analisi dei Requisiti#super[G] si è concretizzato il rischio _RG3: Rischio Globale derivato da sottostima di attività_, che tuttavia è stato superato anticipando la redazione dei requisiti.

=== Retrospettiva

In merito alle attività riguardanti l'Analisi dei Requisiti#super[G], sono stati realizzati forti progressi in quanto non solo è stata completata la redazione di quanto previsto, ma gli Analisti sono riusciti a completare l'intera sezione riguardante i requisiti.

Inoltre #M31 è stata aggiornata sui progressi realizzati e ha predisposto una riunione il giorno 28 Gennaio 2025 alle ore 15:00.

È stata completata la redazione del Piano di Qualifica sulle sezioni preventivate; occorre ora verificare quanto redatto.

Anche il PoC ha subito degli importanti progressi ma sono stati rilevate delle componenti che necessitano di un approfondimento ulteriore, specie in merito alla gestione degli ordini.

A causa dei rischi riscontrati non è stata effettuata la verifica delle Norme di Progetto#super[G] e le prime misurazioni del Piano di Qualifica.
#pagebreak()

=== Sprint 6 <sprint6>

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[19-01-2025],
  [Fine prevista:], strong[01-02-2025],
  [Fine reale:], strong[01-02-2025],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint6intro>

Il sesto sprint è stato focalizzato principalmente sul termine della redazione, e la successiva pubblicazione nel sito, dell'Analisi dei Requisiti#super[G] e della finitura del PoC#super[G]; ma anche sulla verifica delle Norme di Progetto#super[G] e del Piano di Qualifica.

Le attività pianificate nel dettaglio includono:
- La redazione e correzione dell'Analisi dei Requisiti#super[G] a seguito della riunione esterna con #M31, effettuata in data 28/01;
- Terminare la stesura del Piano di Qualifica controllando e correggendo le informazioni rispetto alle misurazioni;
- Effettuare la verifica di quanto redatto all'interno del Piano di Qualifica e delle Norme di Progetto#super[G];
- Effettuare i test sulle attività di sincronizzazione dei microservizi all'interno del PoC#super[G];
- Terminare la realizzazione del PoC prima della _deadline_ dell'RTB;

Il Responsabile dello sprint dovrà contattare il professor Cardin al fine di predisporre una riunione per la valutazione alla prima fase della RTB#super[G].

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RG3: Rischio Globale derivato da sottostima di attività;
- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale.

#pagebreak()
==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(6, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 6 - Preventivo per componente", "Sprint 6 - Preventivo")

==== Consuntivo
#v(1em)
#impegni(
  6,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 6 - Consuntivo per componente",
  "Sprint 6 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(6, "Sprint 6 - Variazione nelle risorse disponibili")

#v(1em)

==== Rischi incontrati

Durante questo sprint si è concretizzato il rischio _RI1: Rischio Individuale derivante dalle altre attività universitarie_, a causa del proseguo della sessione e al progressivo avvicinarsi delle scadenze di altri progetti universitari.
Inoltre, in merito all'Analisi dei Requisiti#super[G] si è concretizzato il rischio _RG3: Rischio Globale derivato da sottostima di attività_, causando del lavoro ulteriore di redazione e verifica all'interno di questo documento.

=== Retrospettiva

In questo sesto sprint#super[G], ci siamo concentrati principalmente sulla realizzazione dell'Analisi dei requisiti e del PoC#super[G].\

La riunione con l'azienda proponente #M31 è stata positiva ed informativa per capire, soprattutto, l'efficacia del lavoro fatto all'interno dell'Analisi dei Requisiti#super[G]. Abbiamo, inoltre, mostrato il funzionamento del PoC all'azienda con annessa l'idea di architettura realizzata a tale scopo.

#pagebreak()

== Product Baseline (PB)
=== Sprint 7 <sprint7>

#table(
  columns: 2,
  stroke: none,
  inset: (x: 0pt),
  column-gutter: 1em,
  [Inizio:], strong[23-02-2025],
  [Fine prevista:], strong[08-03-2025],
  [Fine reale:], strong[08-03-2025],
  [Giorni di ritardo:], strong[0],
)

==== Informazioni generali e attività da svolgere <sprint7intro>

Il settimo sprint marca l'inizio delle attività riguardanti l'ultima _milestone_#super[G] del progetto: la _Product Baseline_. In questo sprint vengono pianificate le seguenti attività:
- Redigere il verbale interno della riunione effettuata in data 24/02;
- Realizzare il servizio di autenticazione per gli utenti;
- Progettare il servizio di _Stock Notifications_;
- Continuare con l'utilizzo della _Continuous Integration_ e della _Dependency Injection_;
- Correggere il documento delle Norme di Progetto#super[G], dopo la visione da parte del #profBreve(p.tullio) e la sua valutazione per l'_RTB_;
- Correggere il documento di Analisi dei Requisiti#super[G], dopo la visione da parte del #profBreve(p.cardin) e la sua valutazione per l'_RTB_;
- Iniziare a redigere il documento di "Specifica Tecnica" iniziando a stilare:
  - Struttura base del documento;
  - Tecnologie per la codifica;
  - Archittetura logica;
  - Archittetura di _deployment_.
- Iniziare a redigere il "Manuale Utente" fruibile sia nella sua versione _.pdf_ sia nella versione _web_ nel sito di _ALimitedGroup_.

Il Responsabile dovrà contattare l'azienda #M31 per fissare una riunione per discutere e dialogare sulle prossime scelte da attuare nella fase della _Product Baseline_.
==== Rischi attesi (DA MODIFICARE)

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RG3: Rischio Globale derivato da sottostima di attività;
- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale.

#pagebreak()
==== Preventivo (DA MODIFICARE)

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(7, posizioni-legenda: (2, 2, -2, 2, 2, -2), "Sprint 7 - Preventivo per componente", "Sprint 7 - Preventivo")

#v(2em)
==== Consuntivo (DA MODIFICARE)
#v(1em)

#impegni(
  7,
  preventivo: true,
  posizioni-legenda: (2, 2, -2, 2, 2, -2),
  "Sprint 7 - Consuntivo per componente",
  "Sprint 7 - Consuntivo",
)

#v(1em)
==== Aggiornamento delle risorse rimanenti (DA MODIFICARE)
#prospetto-orario(7, "Sprint 7 - Variazione nelle risorse disponibili")

#v(1em)

==== Rischi incontrati (DA MODIFICARE)
I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RT2: Rischio Tecnologico legato a errori nel codice;
- RG3: Rischio Globale derivato da sottostima di attività;
- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale.

===== Valutazione di efficacia delle strategie di mitigazione dei rischi

==== Rivisitazione migliorativa del piano per le attività future

=== Retrospettiva (DA MODIFICARE)


