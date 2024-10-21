/// Ciao
#let verbale(
  data: "15-10-2024",
  odg: [],
  tipo: "interno",
  presenze: (
    "Emanuele Artusi",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  versione: [1.0.0],
  stato: "Approvato",
  distribuzione: ([_ALimitedGroup_], "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  regmodifiche: [],
  contenuto,
) = {

  // Prima pagina

  let tipoFemminile = tipo.slice(0, -1) + "a"

  set align(center)
  set text(font: "Times New Roman")

  image("assets/altd.png", height: 7cm)

  v(4em)

  text(24pt, weight: "black", fill: black)[_Verbale_ interno #data]

  v(1.5em)

  show grid.cell.where(x: 0): cell => align(right, cell)
  show grid.cell.where(x: 1): cell => align(left, cell)
  set text(11pt)
  box(
    width: 80%,
    grid(
      columns: (1fr, 2fr),
      grid.vline(x: 1),
      inset: 8pt,
      [Stato], stato,
      [Versione], versione,
      [Presenti], grid(align: left, gutter: 8pt, ..presenze),
      /*[Ordine del giorno], odg,*/
      [Distribuzione], grid(align: left, gutter: 8pt, ..distribuzione),
    ),
  )


  v(2.25em)
  text(14pt, weight: "black", fill: black)[Ordine del giorno]
  v(0.5em)
  text(10pt)[#odg]
  // Seconda pagina (indice)

  set page(
    numbering: "I",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[ALimitedGroup], align(right)[_Verbale_ interno #data],
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
  counter(page).update(1)
  pagebreak()

  //Registro delle modifiche
  set page(numbering: "1")
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
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
    ..regmodifiche
  )
  pagebreak()
  //Indice

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)

  // Resto del documento

  pagebreak()

  /*set page(numbering: "1")
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)*/
  contenuto
}
