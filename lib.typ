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
#let verbale(
  data: [],
  tipo: [interno],
  odg: [],
  presenze: (),
  versione: [],
  stato: [],
  distribuzione: ([_ALimitedGroup_], "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  regmodifiche: (),
  contenuto,
) = {
  set text(lang: "it")
  set list(indent: 1em)
  set enum(indent: 1em)

  // Prima pagina
  set align(center)
  set text(font: "Times New Roman")
  image("assets/altd.png", height: 7cm)
  v(4em)
  text(24pt, weight: "black", fill: black)[_Verbale_ #tipo #data]
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

/// PRESENTAZIONI

// Importazione pacchetto Polylux e tema da personalizzare
#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#let subslide = counter("subslide")
#let repetitions = counter("repetitions")

#let _check-visible(idx, visible-subslides) = {
  if type(visible-subslides) == "integer" {
    idx == visible-subslides
  } else if type(visible-subslides) == "array" {
    visible-subslides.any(s => _check-visible(idx, s))
  } else if type(visible-subslides) == "string" {
    let parts = _parse-subslide-indices(visible-subslides)
    _check-visible(idx, parts)
  } else if type(visible-subslides) == "dictionary" {
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
  } else {
    panic("you may only provide a single integer, an array of integers, or a string")
  }
}

#let _last-required-subslide(visible-subslides) = {
  if type(visible-subslides) == "integer" {
    visible-subslides
  } else if type(visible-subslides) == "array" {
    calc.max(..visible-subslides.map(s => _last-required-subslide(s)))
  } else if type(visible-subslides) == "string" {
    let parts = _parse-subslide-indices(visible-subslides)
    _last-required-subslide(parts)
  } else if type(visible-subslides) == "dictionary" {
    let last = 0
    if "beginning" in visible-subslides {
      last = calc.max(last, visible-subslides.beginning)
    }
    if "until" in visible-subslides {
      last = calc.max(last, visible-subslides.until)
    }
    last
  } else {
    panic("you may only provide a single integer, an array of integers, or a string")
  }
}

#let _conditional-display(visible-subslides, reserve-space, mode, body) = {
  locate( loc => {
    let vs = if reserve-space and handout-mode.at(loc) {
      (:)
    } else {
      visible-subslides
    }
    repetitions.update(rep => calc.max(rep, _last-required-subslide(vs)))
    if _check-visible(subslide.at(loc).first(), vs) {
      body
    } else if reserve-space {
      _slides-cover(mode, body)
    }
  })
}

#let uncover(visible-subslides, mode: "invisible", body) = {
  _conditional-display(visible-subslides, false, mode, body)
}

// per creare lista con pseudo-animazione
#let line-by-line(start: 1, mode: "invisible", body) = {
  let items = if repr(body.func()) == "sequence" {
    body.children
  } else {
    ( body, )
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
  let content = locate( loc => {
    let color = clean-color.at(loc)
    let logo = clean-logo.at(loc)
    let authors = if type(authors) in ("string", "content") {
      ( authors, )
    } else {
      authors
    }

    if watermark != none {
      set image(width: 100%)
      place(watermark)
    }

    v(5%)
    grid(columns: (5%, 1fr, 1fr, 5%),
      [],
      if logo != none {
        set align(bottom + left)
        set image(height: 3em)
        logo
      } else { [] },
      if secondlogo != none {
        set align(bottom + right)
        set image(height: 3em)
        secondlogo
      } else { [] },
      []
    )

    v(-10%)
    align(center + horizon)[
      #block(
        stroke: ( y: 1mm + color ),
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
        ]
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

// Crea una presentazione
/*
Parametri:
intestazioni: attiva o disattiva (default false)
motto: attiva o disattiva (default true)
date: data della presentazione (GG mese AAAA)
contenuto1: elenco della prima sezione (formato:
- item1
- item2
... )
contenuto2: elenco della seconda sezione
contenuto3: elenco della terza sezione
*/
#let presentazione(
  intestazioni: false,
  motto: true,
  date: [],
  contenuto1: [],
  contenuto2: [],
  contenuto3: []
) = {
  set text(font: "Inria Sans")
  // per inserire uno sfondo immagine:
  //#set page(background: image(""))

  // impostazione tema
  show: clean-theme.with(
    aspect-ratio: "16-9",
    footer: [ALimitedGroup, Università di Padova],
    short-title: [Diario di bordo],
    logo: image("assets/altd.png"),
    color: rgb(155,0,20)  // Colore linea decorativa
  )

  // applicazione motto
  if(motto){
    motto = [Limited group, always committed to work]
  } else {
    motto = none
  }

  title-slide(
    title: [Diario di bordo],
    subtitle: [ALimitedGroup],
    subsubtitle: motto,
    authors: ([Emanuele Artusi], [Samuele Esposito], [Sara Ferraro], [Loris Libralato], [Marco Piccoli], [Matteo Schievano], [], [Lorenzo Stefani]),
    date: date,
    secondlogo: image("assets/unipd.svg"),
    watermark: none
  )

  // applicazione intestazioni
  if(intestazioni){
    new-section-slide("Risultati raggiunti e confronto con le previsioni")
    slide()[
      #line-by-line(contenuto1)
    ]
    new-section-slide("Obiettivi e attività per il periodo successivo")
    slide()[
      #line-by-line(contenuto2)
    ]
    new-section-slide("Difficoltà riscontrate e questioni aperte")
    slide()[
      #line-by-line(contenuto3)
    ]
  } else {
    slide(title: "Risultati raggiunti e confronto con le previsioni")[
      #line-by-line(contenuto1)
    ]
    slide(title: "Obiettivi e attività per il periodo successivo")[
      #line-by-line(contenuto2)
    ]
    slide(title: "Difficoltà riscontrate e questioni aperte")[
      #line-by-line(contenuto3)
    ]
  }
}