/// PRESENTAZIONI

// Importazione pacchetto Polylux e tema da personalizzare
#import "@preview/polylux:0.3.1": *
#import themes.clean: *

// per fixare punti elenco vuoti
#let subslide = counter("subslide")
#let repetitions = counter("repetitions")

#let check-visible(idx, visible-subslides) = {
  let lower-okay = if "beginning" in visible-subslides {
    visible-subslides.beginning <= idx
  } else {
    true
  }
  let upper-okay = if "until" in visible-subslides {
    visible-subslides.until >= idx
  } else {
    true
  }
  lower-okay and upper-okay
}

#let last-required-subslide(visible-subslides) = {
    let last = 0
    if "beginning" in visible-subslides {
      last = calc.max(last, visible-subslides.beginning)
    }
    if "until" in visible-subslides {
      last = calc.max(last, visible-subslides.until)
    }
    last
}

#let conditional-display(visible-subslides, reserve-space, mode, body) = {
  locate(loc => {
    let vs = if reserve-space and handout-mode.at(loc) {
      (:)
    } else {
      visible-subslides
    }
    repetitions.update(rep => calc.max(rep, last-required-subslide(vs)))
    if check-visible(subslide.at(loc).first(), vs) {
      body
    }
  })
}

#let uncover(visible-subslides, mode: "invisible", body) = {
  conditional-display(visible-subslides, false, mode, body)
}

// per creare lista con pseudo-animazione
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

// slide del titolo, aggiunto spazio motto
#let title-slide(
  title: none,
  subtitle: none,
  subsubtitle: none,
  authors: (),
  date: none,
  watermark: none,
  secondlogo: none,
) = {
  let content = locate(loc => {
    let color = clean-color.at(loc)
    let logo = clean-logo.at(loc)
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
  })
  logic.polylux-slide(content)
}

// Crea una presentazione (valori default per pubblicazione nel sito)
/*
Parametri:
intestazioni: attiva o disattiva (default true)
motto: attiva o disattiva (default true)
pseudoanimazioni: attiva o disattiva (default false)
date: data della presentazione (GG mese AAAA)
contenuto1: elenco della prima sezione (formato:
- item1
- item2
... )
contenuto2: elenco della seconda sezione
contenuto3: elenco della terza sezione
*/
#let presentazione(
  intestazioni: true,
  motto: true,
  pseudoanimazioni: false,
  date: [],
  contenuto1: [],
  contenuto2: [],
  contenuto3: [],
) = {
  set text(font: "Inria Sans")
  // per inserire uno sfondo immagine:
  //#set page(background: image(""))

  // impostazione tema
  show: clean-theme.with(
    aspect-ratio: "16-9",
    footer: [ALimitedGroup #link("alimitedgroup@gmail.com")],
    short-title: [Diario di bordo],
    logo: image("assets/altd.png"),
    color: rgb(155,0,20)  // Colore linea decorativa
  )

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
    date: date,
    secondlogo: image("assets/unipd.svg"),
    watermark: none,
  )

  // applicazione intestazioni
  if (intestazioni) {
    new-section-slide("Risultati raggiunti e confronto con le previsioni")
    slide()[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto1)
      } else {
        contenuto1
      }
    ]
    new-section-slide("Obiettivi e attività per il periodo successivo")
    slide()[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto2)
      } else {
        contenuto2
      }
    ]
    new-section-slide("Difficoltà riscontrate e questioni aperte")
    slide()[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto3)
      } else {
        contenuto3
      }
    ]
  } else {
    slide(title: "Risultati raggiunti e confronto con le previsioni")[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto1)
      } else {
        contenuto1
      }
    ]
    slide(title: "Obiettivi e attività per il periodo successivo")[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto2)
      } else {
        contenuto2
      }
    ]
    slide(title: "Difficoltà riscontrate e questioni aperte")[
      #if(pseudoanimazioni) { // applicazione pseudoanimazione
        line-by-line(contenuto3)
      } else {
        contenuto3
      }
    ]
  }
}