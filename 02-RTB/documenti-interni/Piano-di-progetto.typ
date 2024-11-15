#import "../../lib/common.typ": *

#show link: underline

#let versione = [0.1.0]
#let nome-documento = [Piano di Progetto]
#let link-glossario(
  link-text,
) = {
  link("https://www.alimitedgroup.github.io/glossario%200.1.0")[#link-text]
}
#let link-norme(
  link-text,
) = {
  link("https://www.alimitedgroup.github.io/norme%20di%progetto%200.1.0")[#link-text]
}

#prima-pagina(
  nome-documento + "\nVersione " + versione,
  [],
  [Stato],
  [Redazione],
  [Versione],
  versione,
  [Distribuzione],
  grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
)

#set heading(numbering: "1.")
#set page(numbering: "1", header: header(nome-documento + "\nVersione " + versione), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (
    vers: "0.0.1",
    date: datetime(day: 07, month: 11, year: 2024),
    autore: p.emanuele,
    descr: "Redazione documento",
  ),
))
#pagebreak()

#indice()
#pagebreak()

= Introduzione
== Informazioni generali

Il *Piano di Progetto* è un documento che cerca di esprimere le attività svolte e da svolgere durante la realizzazione del progetto di *Ingegneria del Software*.

Il documento è di importanza sostanziale per permettere una corretta pianificazione del da farsi, analizzando il tempo previsto ed effettivo per ogni attività, nonché i potenziali rischi legati a quanto da svolgere.

Data la necessità di pianificare le attività volta per volta, in quanto una progettazione dettagliata sul lungo termine certamente si rivelerebbe assai inefficace, il *Piano di Progetto* è per sua natura un documento che non potrà dirsi mai terminato sino alla fine del progetto: per questo motivo sarà realizzato con un approccio incrementale, aggiungendo informazioni volta per volta.

== Glossario

La realizzazione di un sistema software richiede, ancor prima della scrittura del codice, un’importante operazione di confronto, analisi e progettazione: per supportare e facilitare il lavoro asincrono tutte le informazioni derivate da questa attività saranno appositamente documentate.

È completamente ragionevole tuttavia pensare che tali documenti potrebbero contenere parole e terminologie complesse o comunque non direttamente comprensibili: è stato deciso dunque di realizzare un Glossario, nella quale saranno contenuti le spiegazioni relative a tali termini. Tale documento è in costante aggiornamento ed è reperibile, nella sua versione attuale, al seguente #link-glossario("indirizzo").

== Fonti

=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdfhttps://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato d’appalto C6: Sistema di Gestione di un Magazzino Distribuito - #M31]
- #link-norme("Norme di progetto")

=== Riferimenti informativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[T2 - I processi di ciclo di vita del software]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")[T4 - Gestione di progetto]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf")[Lezione rovesciata - Documentazione]

#pagebreak()

= Analisi e gestione dei rischi
Parte fondamentale per la redazione di un piano di progetto è il poter analizzare e classificare in maniera efficace i possibili rischi delle attività da svolgere: realizzarne una buona analisi permette di prevedere quali attività richiedono più tempo del previsto e, conseguentemente, valutare se il numero complessivo di attività inserite nel backlog settimanale sono in numero eccessivo o adeguato.

Un’analisi e gestione dei rischi adeguata prevede lo svolgimento di 4 fasi:

- *Identificazione*: ovvero l'identificazione dei possibili rischi legati ad un’attività in tutti i vari domini, non solo quello progettuale, ma anche riguardante la sfera personale;
- *Analisi*: individuati i rischi è necessario valutare quanto ciascun di questi sia probabile, ovvero che possibilità ha di effettivamente presentarsi, e che possibili risvolti questo potrebbe avere sulla buona riuscita dello sprint e del progetto;
- *Pianificazione*: analizzati rischi e possibile ricadute, è necessario pensare ai possibili metodi atti alla diminuzione della possibilità che tali rischi si avverino o, ove questo non possa essere applicabile, mitigarne gli effetti negativi;
- *Controllo*: la parte attiva della gestione del rischio che prevede il continuo monitoraggio delle varie attività per poter rilevare quanto prima possibile l’insorgere di un rischio e applicare le procedure di mitigazione definite in precedenza

È assolutamente ragionevole pensare che, causa ridotta esperienza, gli effetti di mitigazione possano rivelarsi inefficaci: per questo motivo è necessario prendere atto degli errori di mitigazione rilevati durante la fase di controllo per poter apportare miglioramenti alle strategie adottate.

In seguito saranno quindi illustrati i possibili rischi individuati da ALimitedGroup, divi in tre categorie:

- *RT* ovvero *R*\ischio *T*\ecnologico
- *RI* ovvero *R*\ischio *I*\ndividuale
- *RG* ovvero *R*\ischio *G*\lobale

Per le informazioni riguardanti la nomenclatura si suggerisce la lettura della sezione apposita nelle #link-norme("Norme di Progetto").

== Rischio Tecnologico

=== RT1: Rischio Tecnologico legato alla tecnologia utilizzata

#table(
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
  [Rischio legato all’inesperienza o alla poca conoscenza di un componente da utilizzare per il progetto],

  [*Mitigazione*],
  [È necessario prevedere la possibilità che parte dell’impegno orario sarà dedicato alla formazione personale per l’uso di tale componente: è bene dunque valutare di spostare attività eventualmente di minore importanza al primo periodo successivo utile qualora altri componenti del gruppo non possano fornire supporto immediato. È necessario valutare anche la disponibilità di M31 al supporto.],

  [*Frequenza probabile di avvenimento*], [Alta],
  [*Pericolosità delle ripercussioni*], [Elevata],
)

=== RT2: Rischio Tecnologico legato a errori nel codice

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

== Rischio Individuale

=== RI1: Rischio Individuale derivante dalle altre attività universitarie

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

=== RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

== Rischio Globale

=== RG1: Rischio Globale derivato da forte disaccordo nel gruppo

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

=== RG2: Rischio Globale derivato da malcomprensione del capitolato

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

=== RG3: Rischio Globale derivato da sottostima di attività

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)

=== RG4: Rischio Globale derivato da sovrastima di attività

#table(
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
  [*Descrizione*], [],
  [*Mitigazione*], [],
  [*Frequenza probabile di avvenimento*], [],
  [*Pericolosità delle ripercussioni*], [],
)
