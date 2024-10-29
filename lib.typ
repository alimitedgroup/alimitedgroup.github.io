#import "@preview/polylux:0.3.1": *

#let colore-diari = rgb(140, 27, 29)
#let clean-logo = image("assets/altd.png")
#let clean-short-title = [Diario di bordo]
#let clean-footer = [ALimitedGroup, #link("mailto:alimitedgroup@gmail.com")]

/// Crea un verbale
///
/// Parametri:
/// - odg: ordine del giorno
/// - data: la data della riunione, nella forma YYYY-MM-DD
/// - tipo: tipologia di verbale: "interno" o "esterno"
/// - presenze: array di nomi e cognomi dei presenti
/// - versione: attuale versione del documento
/// - stato: attuale stato del documento (approvato oppure no)
/// - regmodifiche: lista di modifiche, nella forma
/// ```typst
/// regmodifiche: (
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
/// )
/// ```

#let documento(
  versione: [],
  nome: [],
  data: [],
  stato: [],
  distribuzione: ([_ALimitedGroup_], "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  regmodifiche: (),
  contenuto,
) = {
  set text(lang: "it", font: "Hanken Grotesk")
  set list(indent: 1em)
  set enum(indent: 1em)
  set align(center)

  [ #metadata[#nome #versione] <titolo> ]

  // Prima pagina
  image("assets/altd.png", height: 7cm)
  v(4em)
  text(24pt, weight: "bold", fill: black)[#nome \ Versione #versione]
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
      [Stato], stato,
      [Data ultima modifica], data.display("[day]/[month]/[year]"),
      [Distribuzione], grid(align: left, gutter: 8pt, ..distribuzione),
    ),
  )

  // Setup header, footer, contatore pagina
  set page(
    numbering: "1",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[_ALimitedGroup_], align(right)[#nome \ #versione],
      )
      #line(length: 100%)
    ],
    footer: [
      #set align(center)
      #line(length: 100%)
      #context [
        Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
      ]
    ],
  )
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
  pagebreak()

  // Registro delle modifiche
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto, 0.5fr, 0.5fr, 1fr),
    stroke: none,
    inset: 5pt,
    align: center,
    table.header(
      text(12pt, fill: white)[*Vers.*],
      text(12pt, fill: white)[*Data*],
      text(12pt, fill: white)[*Autore*],
      text(12pt, fill: white)[*Ruolo*],
      text(12pt, fill: white)[*Descrizione*],
    ),
    ..regmodifiche.flatten()
  )
  pagebreak()

  //Indice
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)
  pagebreak()

  // Resto del documento
  contenuto
}

#let verbale(
  data: [],
  tipo: [interno],
  odg: [],
  presenze: (),
  versione: [],
  stato: [],
  distribuzione: ([_ALimitedGroup_], "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  regmodifiche: (),
  disambiguatore: [],
  contenuto,
) = {
  set text(lang: "it", font: "Hanken Grotesk")
  set list(indent: 1em)
  set enum(indent: 1em)
  set align(center)

  if tipo == [interno] {
    [ #metadata[VI #data.display("[day]-[month]-[year]") #versione #disambiguatore] <titolo>]
  } else if tipo == [esterno] {
    [ #metadata[VE #data.display("[day]-[month]-[year]") #versione #disambiguatore] <titolo>]
  } else {
    panic("Tipo di verbale sconosciuto: " + tipo)
  }

  // Prima pagina
  image("assets/altd.png", height: 7cm)
  v(4em)
  text(24pt, weight: "bold", fill: black)[_Verbale_ #tipo #data.display("[day]/[month]/[year]")]
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
      [Stato], stato,
      [Versione], versione,
      [Presenti], grid(align: left, gutter: 8pt, ..presenze),
      [Distribuzione], grid(align: left, gutter: 8pt, ..distribuzione),
    ),
  )

  v(2em)
  text(14pt, weight: "black", fill: black)[Ordine del giorno]
  v(0.5em)
  text(10pt)[#odg]

  // Setup header, footer, contatore pagina
  set page(
    numbering: "1",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[_ALimitedGroup_], align(right)[_Verbale_ #tipo #data],
      )
      #line(length: 100%)
    ],
    footer: [
      #set align(center)
      #line(length: 100%)
      #context [
        Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
      ]
    ],
  )
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
  pagebreak()

  // Registro delle modifiche
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto, 0.5fr, 0.5fr, 1fr),
    stroke: none,
    inset: 5pt,
    align: center,
    table.header(
      text(12pt, fill: white)[*Vers.*],
      text(12pt, fill: white)[*Data*],
      text(12pt, fill: white)[*Autore*],
      text(12pt, fill: white)[*Ruolo*],
      text(12pt, fill: white)[*Descrizione*],
    ),
    ..regmodifiche.flatten()
  )
  pagebreak()

  //Indice
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)
  pagebreak()

  // Resto del documento
  contenuto
}

#let inizio-verbale-interno(
  modalità,
  data,
  inizio,
  fine,
) = [
  Con il seguente documento si attesta che in data #data
  è stata condotta, in modalità #modalità, una riunione durata dalle ore #inizio alle ore #fine con il seguente ordine del giorno:
]

#let inizio-verbale-esterno(
  modalità,
  data,
  inizio,
  fine,
  azienda,
) = [
  Con il seguente documento si attesta che in data #data
  è stata condotta, in modalità #modalità, una riunione durata dalle ore #inizio alle ore #fine con l'azienda #azienda riguardante i seguenti argomenti:
]

/// Inserisce un simbolo che rappresenta M31
#let M31 = text(font: "Futura", weight: 500)[M31]

#let title-slide(
  title: none,
  subtitle: none,
  subsubtitle: none,
  date: none,
  authors: (),
) = {
  polylux-slide({
    let logo = image("assets/altd.png")
    let secondlogo = image("assets/unipd.svg")

    v(5%)
    grid(
      columns: (5%, 1fr, 1fr, 5%),
      [],
      align(bottom + left, image(height: 3em, "assets/altd.png")),
      align(bottom + right, image(height: 3em, "assets/unipd.svg")),
      [],
    )

    v(-10%)
    align(center + horizon)[
      #block(
        stroke: (y: 1mm + colore-diari),
        inset: 1em,
        breakable: false,
        [
          #text(1.3em)[*#title*] \
          #{
            parbreak()
            text(1.1em)[#subtitle]
            parbreak()
            text(.6em)[#subsubtitle]
          }
        ],
      )
      #set text(size: .8em)
      #grid(
        columns: (1fr,) * calc.min(authors.len(), 3),
        column-gutter: 1em,
        row-gutter: 1em,
        ..authors
      )
      #v(1em)
      #date
    ]
  })
}

#let new-section-slide(name) = {
  set page(margin: 2em)
  set align(center + horizon)
  set text(size: 1.5em)

  polylux-slide(block(stroke: (bottom: 1mm + colore-diari), inset: 0.5em, strong(name)))
}

#let line-by-line(start: 1, mode: "invisible", body) = {
  let items = if repr(body.func()) == "sequence" {
    body.children
  } else {
    body
  }

  let idx = start
  for item in items {
    if repr(item.func()) != "space" {
      uncover((beginning: idx), mode: mode, item)
      idx += 1
    } else {
      item
    }
  }
}

#let presentazione(
  intestazioni: true,
  motto: true,
  pseudoanimazioni: false,
  date: datetime,
  body,
) = {
  set text(font: "Inria Sans", size: 25pt)
  set page(paper: "presentation-16-9", margin: 0em, header: none, footer: none)

  [ #metadata[DB #date.display("[day]-[month]-[year]")] <titolo> ]

  // applicazione motto
  if (motto) {
    motto = [Limited group, always committed to work]
  } else {
    motto = none
  }

  title-slide(
    title: [Diario di bordo],
    subtitle: [ALimitedGroup],
    subsubtitle: motto,
    date: date.display("[day]/[month]/[year]"),
    authors: (
      [Emanuele Artusi],
      [Samuele Esposito],
      [Sara Ferraro],
      [Loris Libralato],
      [Marco Piccoli],
      [Matteo Schievano],
      [],
      [Lorenzo Stefani],
    ),
  )

  body
}

#let slide(title: none, body) = {
  let clean-color = colore-diari

  let header = align(
    top,
    {
      let color = clean-color
      let logo = clean-logo

      show: block.with(stroke: (bottom: 1mm + color), width: 100%, inset: (y: .3em))
      set text(size: .5em)

      grid(
        columns: (1fr, 1fr),
        if logo != none {
          set align(left)
          set image(height: 4em)
          logo
        } else {
          []
        },
        if clean-short-title != none {
          align(
            horizon + right,
            clean-short-title,
          )
        } else {
          align(horizon + right, utils.current-section)
        },
      )
    },
  )

  let footer = {
    let color = clean-color

    block(
      stroke: (top: 1mm + color),
      width: 100%,
      inset: (y: .3em),
      text(
        .5em,
        {
          clean-footer
          h(1fr)
          context {
            logic.logical-slide.display()
          }
        },
      ),
    )
  }

  set page(
    margin: (top: 4em, bottom: 2em, x: 1em),
    header: header,
    footer: footer,
    footer-descent: 1em,
    header-ascent: 1.5em,
  )

  let body = pad(x: .0em, y: .5em, body)


  let content = {
    if title != none {
      heading(level: 2, title)
    }
    body
  }

  logic.polylux-slide(content)
}
