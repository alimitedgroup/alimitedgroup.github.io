#import "../../lib/common.typ": *
#import "@preview/cetz:0.3.1": *
#import "@preview/cetz-plot:0.1.0": chart

#set text(lang: "it", font: "Hanken Grotesk")
#set list(indent: 1em)
#set par(justify: true)
#show link: underline
#show ref: underline

#let versione = [0.1.0]
#let nome-documento = [Piano di Progetto]
#let link-glossario(
  link-text,
) = {
  link("https://alimitedgroup.github.io/glossario%200.1.0")[#link-text]
}
#let link-norme(
  link-text,
) = {
  link("https://alimitedgroup.github.io/norme%20di%progetto%200.1.0")[#link-text]
}

#metadata[Piano di progetto #versione] <titolo>
#prima-pagina(
  nome-documento + "\nVersione " + versione,
  [],
  [Stato],
  [Redazione],
  [Versione],
  versione,
  [Distribuzione],
  grid(align: left, gutter: 8pt, [_ALimitedGroup_], [M31], prof(p.tullio), prof(p.cardin)),
)

#set heading(numbering: "1.")
#set page(numbering: "1", header: header(nome-documento + " v" + versione), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (
    vers: "0.1.0",
    date: datetime(day: 15, month: 11, year: 2024),
    autore: p.emanuele,
    descr: "Redazione documento",
  ),
))
#pagebreak()

#indice()
#pagebreak()

#let sprints = (
  "1": (
    preventivo: (
      (p.loris, 0, 0, 5, 0, 0, 0),
      (p.samuele, 2, 0, 0, 0, 0, 0),
      (p.sara, 0, 3, 4, 0, 0, 2),
      (p.lorenzo, 0, 2, 0, 0, 0, 5),
      (p.marco, 0, 5, 0, 0, 0, 3),
      (p.matteo, 0, 5, 0, 0, 0, 4),
      (p.emanuele, 0, 4, 0, 0, 0, 0),
    ),
    consuntivo: (
      (p.loris, 0, 0, 5, 0, 0, 0),
      (p.samuele, 5, 0, 0, 0, 0, 0),
      (p.sara, 0, 3, 4, 0, 0, 2),
      (p.lorenzo, 0, 2, 0, 0, 0, 5),
      (p.marco, 0, 5, 0, 0, 0, 3),
      (p.matteo, 0, 5, 0, 0, 0, 4),
      (p.emanuele, 0, 4, 0, 0, 0, 0),
    ),
  ),
)

#let cella(dati, preventivo, i, j) = {
  let dat = dati.at(i).at(j)
  let prev = if preventivo != none {
    preventivo.at(i).at(j)
  }

  if j == 0 {
    persona(dat)
  } else if preventivo == none and dat == 0 {
    [-]
  } else if preventivo == none {
    [#dat]
  } else if dat == prev and dat == 0 {
    [-]
  } else if dat == prev and dat != 0 {
    [#dat]
  } else if dat >= prev {
    [#dat #text(red)[(+#(dat - prev))]]
  } else {
    [#dat #text(green, [(#(dat - prev))])]
  }
}

#let tabella-ruoli(ruoli, dati, preventivo) = {
  set par(justify: false)
  show table.cell: cl => if cl.x == 0 and cl.y != 0 {
    align(left, cl)
  } else if cl.x == 0 {
    align(bottom + left, cl)
  } else if cl.y == 0 {
    rotate(-45deg, reflow: false, align(left, cl))
  } else {
    align(bottom + center, cl)
  }
  figure(
    table(
        columns: (2.5fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        inset: (x, y) => if y == 0 {
          (x: 1.9em, y: 0.7em)
        } else {
          (x: 1.1em, y: 0.6em)
        },
        fill: (x, y) => if calc.rem(y, 2) == 1 {
          luma(235)
        },
        stroke: (x, y) => if y >= 1 {
          1pt + black
        } else {
          none
        },
        table.header([], ..ruoli.map(strong)),

        // @typstyle off
        ..for i in range(0, dati.len()) {
          (..for j in range(0, dati.at(i).len()) {
            (cella(dati, preventivo, i, j),)
          },)
        }

      ),
    caption: [Suddivisione impegni per componente],
  )
}

#let grafico-ruoli(ruoli, dati, posizioni-legenda) = {
  // data è un array di dizionari `(percentuale: 42, titolo: "thanks for all the fish")`
  let data = ()
  let globsum = dati.map(r => r.slice(1).sum()).sum()
  for (i, ruolo) in ruoli.enumerate() {
    let sum = dati.map(row => row.at(i + 1)).sum(default: 0)
    data.push((
      percentuale: sum / globsum * 100,
      titolo: ruolo + " - " + str(calc.round(sum / globsum * 100, digits: 0)) + "%",
    ))
  }

  // slice-style: pal_colors,
  figure(
    canvas({
      import draw: *
      chart.piechart(
        data,
        name: "pie",
        position: (1em, 0),
        radius: 1.8,
        value-key: "percentuale",
        label-key: "titolo",
        outer-label: (content: none),
        gap: 2deg,
        legend: (label: none),
      )

      set-style(content: (padding: .2))
      for (i, dat) in data.enumerate() {
        if dat.percentuale > 0 {
          // Calculate the point at 35% of the distance from the border of a slice to its center
          let outer = "pie.chart.item-" + str(i)
          let inner = "pie.chart.item-" + str(i) + "-inner"
          line(outer, inner, stroke: none, mark: none, name: "midline-" + str(i))
          let middle = (name: "midline-" + str(i), anchor: 35%)

          let line-dir = posizioni-legenda.at(i)
          let line-anchor = if posizioni-legenda.at(i) > 0 {
            "west"
          } else {
            "east"
          }
          let percent = calc.round(dat.percentuale * 100 / data.map(x => x.percentuale).sum())

          line(middle, (rel: (posizioni-legenda.at(i), 0)), name: "line-" + str(i))
          content((), [#ruoli.at(i) - #percent%], anchor: line-anchor)
          mark(
            (name: "line-" + str(i), anchor: 0%),
            (name: "line-" + str(i), anchor: 1%),
            symbol: "o",
            anchor: "center",
            fill: white,
            width: 1,
          )
        } else { }
      }
    }),

    caption: [Tempo dedicato per ruolo],
    supplement: [Grafico],
  )
}

#let impegni(
  preventivo: false,
  numero,
  posizioni-legenda: (2, 2, 2, 2, 2, 2),
) = {
  let dati = sprints.at(str(numero))
  let (dati, preventivo) = if preventivo {
    (dati.consuntivo, dati.preventivo)
  } else {
    (dati.preventivo, none)
  }

  let ruoli = (
    "Responsabile",
    "Amministratore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Verificatore",
  )

  v(3em)
  tabella-ruoli(ruoli, dati, preventivo)
  grafico-ruoli(ruoli, dati, posizioni-legenda)
}

#let prospetto-orario(sprint) = {
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
}


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

== Introduzione
Parte fondamentale per la redazione di un piano di progetto è il poter analizzare e classificare in maniera efficace i possibili rischi delle attività da svolgere: realizzarne una buona analisi permette di prevedere quali attività richiedono più tempo del previsto e, conseguentemente, valutare se il numero complessivo di attività inserite nel backlog settimanale sono in numero eccessivo o adeguato.

Un’analisi e gestione dei rischi adeguata prevede lo svolgimento di 4 fasi:

- *Identificazione*: ossia l'identificazione dei possibili rischi legati ad un’attività in tutti i vari domini, non solo quello progettuale, ma anche riguardante la sfera personale;
- *Analisi*: individuati i rischi è necessario valutare quanto ciascun di questi sia probabile, ossia che possibilità ha di effettivamente presentarsi, e che possibili risvolti questo potrebbe avere sulla buona riuscita dello sprint e del progetto;
- *Pianificazione*: analizzati rischi e possibile ricadute, è necessario pensare ai possibili metodi atti alla diminuzione della possibilità che tali rischi si avverino o, ove questo non possa essere applicabile, mitigarne gli effetti negativi;
- *Controllo*: la parte attiva della gestione del rischio che prevede il continuo monitoraggio delle varie attività per poter rilevare quanto prima possibile l’insorgere di un rischio e applicare le procedure di mitigazione definite in precedenza

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
    [Rischio legato all’inesperienza o alla poca conoscenza di un componente da utilizzare per il progetto],

    [*Mitigazione*],
    [È necessario prevedere la possibilità che parte dell’impegno orario sarà dedicato alla formazione personale per l’uso di tale componente: è bene dunque valutare di spostare attività eventualmente di minore importanza al primo periodo successivo utile qualora altri componenti del gruppo non possano fornire supporto immediato. È necessario valutare anche la disponibilità di M31 al supporto.],

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
    [Il componente del gruppo darà tempestiva comunicazione della sua indisponibilità improvvisa agli altri componenti. Questi cercheranno di spartirsi le attività rimanenti, rimanandole al periodo successivo se necessario. Risolta l'indisponibilità, il componente cercherà di recuperare le attività eventualmente rimanenti],

    [*Frequenza probabile di avvenimento*], [Media],
    [*Pericolosità delle ripercussioni*], [Media],
  ),
  caption: [Informazioni sul rischio RI2],
)


== Rischio Globale

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
    [*Descrizione*], [Lo svolgimento di una attività richiede più tempo del previsto],
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
  caption: [riassunto dei costi derivanti dalle ore assegnate a ciascun ruolo],
)
\
In seguito a quanto suggerito in merito all’analisi dei requisiti è tuttavia probabile una differente ripartizione finale del budget disponibile a favore del ruolo di analista.

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
- Stabilire un incontro con l’azienda proponente #M31
- Inizio stesura Analisi dei requisiti

==== Rischi attesi

I componenti di _ALimitedGroup_ ritengono siano possibili i seguenti rischi:

- RI2: Rischio Individuale derivato da improvviso impegno o indisponibilità personale
- RG2: Rischio Globale derivato da malcomprensione del capitolato
- RG3: Rischio Globale derivato da sottostima di attività

#pagebreak()

==== Preventivo

Si prospetta l'utilizzo delle seguenti risorse:

#impegni(1, posizioni-legenda: (2, 2, -2, 2, 2, -2))

==== Consuntivo

#impegni(1, preventivo: true, posizioni-legenda: (2, 2, -2, 2, 2, -2))

#v(1em)
==== Aggiornamento delle risorse rimanenti
#prospetto-orario(1)

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