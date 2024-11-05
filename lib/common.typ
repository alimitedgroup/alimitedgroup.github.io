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
///
/// Ogni persona ha le proprietà `nome`, `cognome` e, se è uno studente, `matricola`
///
/// #example(```
///  p.samuele.cognome
///  " | "
///  str(p.samuele.matricola)
/// ```)
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
    abbrev: "docs",
    link: "https://github.com/alimitedgroup/alimitedgroup.github.io",
    issues: "/issues/",
    pulls: "/pull/",
  ),
)

/// Inserisce un simbolo che rappresenta M31
///
/// #example(`M31`)
#let M31 = text(font: "Futura", weight: 500)[M31]

/// Mostra una persona, con nome e cognome
///
/// #example(`persona(p.samuele)`)
///
/// - p (persona):
#let persona(p) = {
  p.nome
  " "
  p.cognome
}

/// Abbrevia il nome di una persona, mostrando solo la prima lettera del nome
///
/// #example(`abbrev(p.samuele)`)
///
/// - p (persona):
#let abbrev(p) = {
  p.nome.at(0)
  ". "
  p.cognome
}

/// Mostra il nome di un professore, preceduto da Prof.
///
/// #example(`prof(p.tullio)`)
///
/// - p (persona):
#let prof(p) = {
  "Prof. " + p.nome + " " + p.cognome
}

/// Una issue su GitHub. Notare che la repository ha un valore di default
///
/// #example(`issue(16, repo: repo.docs)`)
///
/// - n (integer): Numero della issue su GitHub
/// - repo (repository): Repository di riferimento
#let issue(n, repo: repo.docs) = {
  link(repo.link + repo.issues + str(n), repo.abbrev + " #" + str(n))
}

/// Una Pull Request su GitHub
///
/// #example(`pr(16, repo: repo.docs)`)
///
/// - n (integer): Numero della issue su GitHub
/// - repo (repository): Repository di riferimento
#let pr(n, repo: repo.docs) = {
  link(repo.link + repo.pulls + str(n), repo.abbrev + " #" + str(n))
}

/// Renderizza la prima pagina di un documento
///
/// - titolo (string, content): Il titolo del documento
/// -> content
#let prima-pagina(titolo, ..entries) = {
  set align(center)

  // Prima pagina
  image("/assets/altd.png", height: 7cm)
  v(4em)
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
      luma(200)
    } else if (calc.gcd(y, 2) == 2) {
      luma(240)
    } else {
      white
    },
    columns: 5,
    inset: 5pt,
    align: center,
    table.header(
      text(12pt)[*Vers.*],
      text(12pt)[*Data*],
      text(12pt)[*Autore*],
      text(12pt)[*Verificatore*],
      text(12pt)[*Descrizione*],
    ),

    ..for mod in modifiche {
      (
        mod.vers,
        mod.data.display("[year]-[month]-[day]"),
        abbrev(mod.autore),
        if "verifica" in mod {
          abbrev(mod.verifica)
        } else {
          [-]
        },
        mod.descr,
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
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)
}