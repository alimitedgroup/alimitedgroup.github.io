#let registro(contenuto)={
    text(16pt, weight: "black", fill:black)[Registro delle Modifiche]
    set table(
    fill: (x, y) =>
      if(y == 0) {
        rgb("#800080")
      }
      else if(calc.gcd(y, 2) == 2)
      {
        rgb("#bf7fbf")
      }
      else 
      {
        rgb("#d8b2d8")
      },
    columns:(auto, auto , 0.5fr, 0.5fr, 1fr),
    stroke: none,
    inset: 10pt,
    align: center,
  )

    table(
    fill: (x, y) =>
      if(y == 0) {
        rgb("#800080")
      }
      else if(calc.gcd(y, 2) == 2)
      {
        rgb("#bf7fbf")
      }
      else 
      {
        rgb("#d8b2d8")
      },
    columns:(auto, auto , 0.5fr, 0.5fr, 1fr),
    stroke: none,
    inset: 10pt,
    align: center,
    table.header(
      [*Vers.*],[*Data*],[*Autore*],[*Ruolo*],[*Descrizione*],
    ),
    "0.0.1",
    "15-10-24",
    "Samuele Esposito",
    "-",
    "Creazione struttura e template documento",
    "0.0.1",
    "15-10-24",
    "Samuele Esposito",
    "-",
    "Creazione struttura e template documento",
      "0.0.1",
    "15-10-24",
    "Samuele Esposito",
    "-",
    "Creazione struttura e template documento",  
  )
  pagebreak()

  set page(numbering: "1")
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
  contenuto
}

