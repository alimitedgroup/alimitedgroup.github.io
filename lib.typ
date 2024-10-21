/// Crea un registro delle modifiche
///
/// Parametri:
/// - righe: array di elementi nella forma
/// ```typst
/// righe: (
///   ("0.0.1", "15-10-24", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "15-10-24", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "15-10-24", "Samuele Esposito", "-", "Creazione struttura e template documento"),
/// )
/// ```
#let registro(righe) = {
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  table(
    columns: (auto, auto, 0.5fr, 0.5fr, 1fr),
    stroke: 1pt,
    inset: 10pt,
    align: center,
    table.header(
      [*Vers.*],
      [*Data*],
      [*Autore*],
      [*Ruolo*],
      [*Descrizione*],
    ),

    ..(righe.flatten())
  )
}

/// Crea un verbale
///
/// Parametri:
/// - odg: ordine del giorno
/// - data: la data della riunione, nella forma YYYY-MM-DD
/// - tipo: tipologia di verbale: "interno" o "esterno"
/// - presenze: array di nomi e cognomi dei presenti
/// - versioni: lista di versioni del documento
#let verbale(
  odg: [],
  data: [2024-10-18],
  tipo: "interno",
  presenze: (
    "Emanuele Artusi",
    "Lorenzo Stefani",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  versioni: (),
  contenuto,
) = {

  // Prima pagina

  let tipoFemminile = tipo.slice(0, -1) + "a"

  set align(center)
  set text(font: "Times New Roman")

  image("assets/altd.png", height: 7cm)

  v(4em)

  text(24pt, weight: "black", fill: black)[Verbale di riunione #tipoFemminile]

  v(3em)

  show grid.cell.where(x: 0): cell => align(right, cell)
  show grid.cell.where(x: 1): cell => align(left, cell)
  set text(12pt)
  box(
    width: 80%,
    grid(
      columns: (1fr, 2fr),
      grid.vline(x: 1),
      inset: 8pt,

      [Data], data,
      [Presenti], grid(align: left, gutter: 8pt, ..presenze),
      [Ordine del giorno], odg
    ),
  )

  pagebreak()

  // Seconda pagina (indice)

  set page(
    numbering: "I",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[ALimitedGroup], align(right)[Verbale #tipo del #data],
      )
      #line(length: 100%)
    ],
    footer: [
      #line(length: 100%)
      #context {
        align(right, counter(page).display(page.numbering))
      }
    ],
  )
  counter(page).update(1)

  if versioni.len() != 0 {
    registro(versioni)
    pagebreak()
  }

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)

  // Resto del documento

  pagebreak()

  set page(numbering: "1")
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
  contenuto
}
