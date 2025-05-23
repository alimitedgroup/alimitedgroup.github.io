#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart

/// Array con le persone incluse nel progetto
///
/// Le chiavi disponibili sono:
///  - `tullio`
///  - `cardin`
///  - `emanuele`
///  - `samuele`
///  - `sara`
///  - `loris`
///  - `marco`
///  - `matteo`
///  - `lorenzo`
///  - `luca`
///  - `moones`
///  - `cristian`
///
/// Ogni persona ha le proprietà `nome`, `cognome` e, se è uno studente `matricola`, se è di M31 `ruolo`
#let p = (
  // Professori
  tullio: (nome: "Tullio", cognome: "Vardanega"),
  cardin: (nome: "Riccardo", cognome: "Cardin"),
  // Studenti
  emanuele: (nome: "Emanuele", cognome: "Artusi", matricola: 2068223),
  samuele: (nome: "Samuele", cognome: "Esposito", matricola: 2068233),
  sara: (nome: "Sara", cognome: "Ferraro", matricola: 2076442),
  loris: (nome: "Loris", cognome: "Libralato", matricola: 2068237),
  marco: (nome: "Marco", cognome: "Piccoli", matricola: 2045039),
  matteo: (nome: "Matteo", cognome: "Schievano", matricola: 2075537),
  lorenzo: (nome: "Lorenzo", cognome: "Stefani", matricola: 2079249),
  // M31
  luca: (nome: "Luca", cognome: "Cossaro", ruolo: "CTO"),
  moones: (nome: "Moones", cognome: "Mobaraki", ruolo: "Stage and Academy Coordinator"),
  cristian: (nome: "Cristian", cognome: "Pîrlog", ruolo: "Web Engineer"),
)

#let ruoli = (
  responsabile: (max-ore: 41, costo: 30, nome: "Responsabile"),
  amministratore: (max-ore: 81, costo: 20, nome: "Amministratore"),
  analista: (max-ore: 93, costo: 25, nome: "Analista"),
  progettista: (max-ore: 127, costo: 25, nome: "Progettista"),
  programmatore: (max-ore: 177, costo: 15, nome: "Programmatore"),
  verificatore: (max-ore: 125, costo: 15, nome: "Verificatore"),
)

/// Lista delle repository su cui si possono trovare issue e pull request
/// Solitamente questa variabile viene usata solo dentro a `#issue` o `#pr`
///
/// Le chiavi disponibili sono:
/// - `docs`
///
/// Ogni repository ha le seguenti proprietà:
/// - `abbrev`: abbreviazione del nome della repository (o nome completo se corto)
/// - `link`: link alla pagina principale della repository
/// - `issues`: suffisso da aggiungere a `link` per ottenere l'URL di una issue
/// - `pulls`: suffisso da aggiungere a `link` per ottenere l'URL di una pull request
#let repo = (
  docs: (
    abbrev: "DOCS",
    link: "https://github.com/alimitedgroup/alimitedgroup.github.io",
    issues: "/issues/",
    pulls: "/pull/",
  ),
  poc: (
    abbrev: "POC",
    link: "https://github.com/alimitedgroup/PoC",
    issues: "/issues/",
    pulls: "/pull/",
  ),
  mvp: (
    abbrev: "MVP",
    link: "https://github.com/alimitedgroup/MVP",
    issues: "/issues/",
    pulls: "/pull/",
  ),
)

/// Inserisce un simbolo che rappresenta M31
#let M31 = text(font: "Futura", weight: 500)[M31]

/// Mostra una persona, con nome e cognome
///
/// - p (persona):
#let persona(p) = {
  p.nome
  " "
  p.cognome
}

/// Abbrevia il nome di una persona, mostrando solo la prima lettera del nome
///
/// - p (persona):
#let abbrev(p) = {
  p.nome.at(0)
  ". "
  p.cognome
}

/// Mostra il nome e cognome di un professore, preceduto da Prof.
///
/// - p (persona):
#let prof(p) = {
  "Prof. " + p.nome + " " + p.cognome
}

/// Mostra il cognome di un professore, preceduto da Prof.
///
/// - p (persona):
#let profBreve(p) = {
  "Prof. " + p.cognome
}

/// Una issue su GitHub. Notare che la repository ha un valore di default
///
/// - n (integer): Numero della issue su GitHub
/// - repo (repository): Repository di riferimento
#let issue(n, repo: repo.docs) = {
  link(repo.link + repo.issues + str(n), repo.abbrev + str(n))
}

/// Una Pull Request su GitHub
///
/// - n (integer): Numero della issue su GitHub
/// - repo (repository): Repository di riferimento
#let pr(n, repo: repo.docs) = {
  link(repo.link + repo.pulls + str(n), repo.abbrev + " #" + str(n))
}

/// Un PDF hostato sul sito
///
/// - nome (string): Titolo del documento, senza il ".pdf" alla fine
/// - body (content): Testo da mostrare al posto dell'indirizzo
#let doc(nome, body) = {
  link("https://alimitedgroup.github.io/" + nome + ".pdf", body)
}

/// Renderizza la prima pagina di un documento
///
/// - titolo (string, content): Il titolo del documento
/// -> content
#let prima-pagina(titolo, extra, ..entries) = {
  set align(center)

  // Prima pagina
  image("../assets/altd.png", height: 7cm)
  v(1em)
  text(24pt, weight: "bold", fill: black)[#titolo]
  v(2.25em)

  show grid.cell.where(x: 0): cell => align(right, cell)
  show grid.cell.where(x: 1): cell => align(left, cell)
  set text(11pt)
  box(
    width: 80%,
    grid(
      columns: (1fr, 1fr),
      grid.vline(x: 1),
      inset: 8pt,
      ..entries
    ),
  )

  if extra != none {
    extra
  }
}

/// Renderizza l'intestazione della pagina
///
/// - titolo (string, content): Il titolo del documento
/// -> content
#let header(titolo) = {
  grid(
    columns: (1fr, 1fr),
    align(left)[_ALimitedGroup_], align(right, titolo),
  )
  line(length: 100%)
}

/// Renderizza il piè di pagina
///
/// -> content
#let footer() = {
  set align(center)
  line(length: 100%)
  context [
    Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
  ]
}

/// Renderizza il registro delle modifiche.
///
/// Il parametro `modifiche` è una lista di versioni espresse con la seguente forma:
/// ```typst
/// (
///   ( vers: "0.0.2", data: datetime(day: 16, month: 10, year: 2024), autore: p.matteo, descr: "Redazione documento" ),
///   ( vers: "0.0.1", data: datetime(day: 15, month: 10, year: 2024), autore: p.samuele, descr: "Creazione struttura e template documento" ),
/// )
/// ```
///
/// - modifiche (list): La lista delle modifiche
/// -> content
#let registro-modifiche(modifiche) = {
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (0.25fr, 0.5fr, 0.5fr, 0.5fr, 1fr),
    inset: 5pt,
    align: center,
    stroke: none,
    table.header(
      text(12pt, fill: white)[*Vers.*],
      text(12pt, fill: white)[*Data*],
      text(12pt, fill: white)[*Autore*],
      text(12pt, fill: white)[*Verificatore*],
      text(12pt, fill: white)[*Descrizione*],
    ),
    ..for mod in modifiche {
      if (type(mod.descr) == str and not mod.descr.ends-with(".")) {
        panic("La descrizione di una modifica dovrebbe terminare con un punto. Versione: " + mod.vers)
      }

      (
        mod.vers,
        mod.date.display("[year]-[month]-[day]"),
        abbrev(mod.autore),
        if "verifica" in mod {
          abbrev(mod.verifica)
        } else {
          [-]
        },
        if "approvazione" in mod {
          mod.descr + [ Approvazione da parte di #abbrev(mod.approvazione).]
        } else {
          mod.descr
        },
      )
    },
  )
}

/// Renderizza l'indice di un documento
#let indice() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: 1em)
}

/// Collega una parola del documento alla sua definizione nel glossario
#let def(parola) = {
  let yml = yaml("../02-RTB/documenti-interni/glossario.yml")

  // Se parola è di tipo content, ottieni il testo
  if type(parola) == content {
    parola = parola.text
  }

  // Cerca la parola in ogni lettera dell'alfabeto
  let found = false
  for (letter, words) in yml {
    if parola in words {
      found = true
      break
    }
  }

  // Se la parola non è trovata, genera l'errore; altrimenti, crea il link
  if not found {
    panic("Parola non definita nel glossario: " + parola)
  } else {
    link("https://alimitedgroup.github.io/glossario.pdf#" + parola, parola)
  }
}
/// Indicizza le tabelle presenti nel documento
#let indice-tabelle() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Lista delle tabelle #v(2em)], indent: 1em, target: figure.where(kind: table))
}

/// Indicizza le immagini presenti nel documento
#let indice-immagini() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Lista delle immagini #v(2em)], indent: 1em, target: figure.where(kind: image))
}

///COMMENTO IMPORTANTE RIGUARDANTE indice-immagini e indice-tabelle: tutte e due le funzioni indicizzano correttamente le tabelle/immagini
/// se e solo se queste sono delimitate dal comando #figure con annessa la caption

#let pie-chart(..data, caption: [], legend: false) = {
  data = data.pos()

  if legend {
    data = data.map(x => (..x, titolo: x.titolo + " - " + str(calc.round(x.percentuale, digits: 2)) + "%"))
  }

  figure(
    canvas({
      import draw: *

      if (legend) {
        chart.piechart(
          data,
          name: "pie",
          position: (1em, 0),
          radius: 1.8,
          value-key: "percentuale",
          label-key: "titolo",
          outer-label: (content: none),
          gap: 2deg,
        )
      } else {
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
      }

      set-style(content: (padding: .2))
      if not legend {
        for (i, dat) in data.enumerate() {
          if dat.percentuale > 0 {
            // Calculate the point at 35% of the distance from the border of a slice to its center
            let outer = "pie.chart.item-" + str(i)
            let inner = "pie.chart.item-" + str(i) + "-inner"
            line(outer, inner, stroke: none, mark: none, name: "midline-" + str(i))
            let middle = (name: "midline-" + str(i), anchor: 35%)

            let line-dir = dat.legenda
            let line-anchor = if dat.legenda > 0 {
              "west"
            } else {
              "east"
            }
            let percent = calc.round(dat.percentuale * 100 / data.map(x => x.percentuale).sum())

            line(middle, (rel: (dat.legenda, 0)), name: "line-" + str(i))
            content((), [#dat.titolo - #percent%], anchor: line-anchor)
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
      }
    }),

    caption: caption,
    supplement: [Grafico],
  )
}
