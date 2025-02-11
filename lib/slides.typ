#import "@preview/polylux:0.4.0"
#import "@preview/polylux:0.4.0": toolbox

#let clean-color = rgb(155, 0, 20);
#let clean-logo = image("/assets/altd.png");
#let clean-short-title = [Diario di bordo];
#let clean-footer = [ALimitedGroup, #link("mailto:alimitedgroup@gmail.com")];

#let title-slide(
  title: none,
  subtitle: none,
  subsubtitle: none,
  authors: (),
  date: none,
  watermark: none,
  secondlogo: none,
) = {
  let content = {
    let color = clean-color
    let logo = clean-logo
    let authors = if type(authors) in ("string", "content") {
      authors
    } else {
      authors
    }

    if watermark != none {
      set image(width: 100%)
      place(watermark)
    }

    v(5%)
    grid(
      columns: (5%, 1fr, 1fr, 5%),
      [],
      if logo != none {
        set align(bottom + left)
        set image(height: 3em)
        logo
      } else {
        []
      },
      if secondlogo != none {
        set align(bottom + right)
        set image(height: 3em)
        secondlogo
      } else {
        []
      },
      [],
    )

    v(-10%)
    align(center + horizon)[
      #block(
        stroke: (y: 1mm + color),
        inset: 1em,
        breakable: false,
        [
          #text(1.3em)[*#title*] \
          #{
            if subtitle != none {
              parbreak()
              text(1.1em)[#subtitle]
            }
            if subsubtitle != none {
              parbreak()
              text(.6em)[#subsubtitle]
            }
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
  }
  polylux.slide(content)
}

#let new-section-slide(name) = {
  set page(margin: 2em)
  let content = {
    let color = clean-color
    set align(center + horizon)
    show: block.with(stroke: (bottom: 1mm + color), inset: 1em)
    set text(size: 1.5em)
    strong(name)
    toolbox.register-section(name)
  }
  polylux.slide(content)
}

#let slide(title: none, body) = {
  let header = align(
    top,
    {
      let color = clean-color
      let logo = clean-logo
      let short-title = clean-short-title

      show: block.with(stroke: (bottom: 1mm + color), width: 100%, inset: (y: .3em))
      set text(size: .5em)

      grid(
        columns: (1fr, 1fr),
        if logo != none {
          set align(left)
          set image(height: 4em)
          logo
        } else { [] },
        if short-title != none {
          align(
            horizon + right,
            grid(
              columns: 1,
              rows: 1em,
              gutter: .5em,
              short-title,
              toolbox.current-section,
            ),
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
          toolbox.slide-number
          " / "
          toolbox.last-slide-number
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

  polylux.slide(content)
}

#let presentazione(title, date, body) = {
  set text(font: "Inria Sans")
  set page(paper: "presentation-16-9", margin: 0em, header: none, footer: none)
  set text(size: 25pt, font: "Inria Sans")

  title-slide(
    title: title,
    subtitle: [ALimitedGroup],
    subsubtitle: [Limited group, always committed to work],
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
    date: date.display("[day]/[month]/[year]"),
    secondlogo: image("/assets/unipd.svg"),
  )

  body
}

#let ddb(
  intestazioni: true,
  date: [],
  contenuto1: [],
  contenuto2: [],
  contenuto3: [],
) = {
  [ #metadata[DB #date.display("[day]-[month]-[year]")] <titolo> ]

  show: presentazione.with(
    [Diario di bordo],
    date,
  )

  if (intestazioni) {
    new-section-slide("Risultati raggiunti e confronto con le previsioni")
    slide(contenuto1)
    new-section-slide("Obiettivi e attività per il periodo successivo")
    slide(contenuto2)
    new-section-slide("Difficoltà riscontrate e questioni aperte")
    slide(contenuto3)
  } else {
    slide(title: "Risultati raggiunti e confronto con le previsioni", contenuto1)
    slide(title: "Obiettivi e attività per il periodo successivo", contenuto2)
    slide(title: "Difficoltà riscontrate e questioni aperte", contenuto3)
  }
}
