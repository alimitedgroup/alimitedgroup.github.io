#let registro(contenuto) = {
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  set table(
    fill: (x, y) => if y == 0 {
      rgb("#800080")
    } else if calc.gcd(y, 2) == 2 {
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
    text(11pt)[1.0.0],
    text(11pt)[15-10-24],
    text(11pt)[Samuele Esposito],
    text(11pt)[-],
    text(11pt)[Approvazione documento],
    text(11pt)[0.1.0],
    text(11pt)[15-10-24],
    text(11pt)[Samuele Esposito],
    text(11pt)[-],
    text(11pt)[Verifica documento],
    text(11pt)[0.0.2],
    text(11pt)[15-10-24],
    text(11pt)[Samuele Esposito],
    text(11pt)[-],
    text(11pt)[Redazione documento],
    text(11pt)[0.0.1],
    text(11pt)[15-10-24],
    text(11pt)[Samuele Esposito],
    text(11pt)[-],
    text(11pt)[Creazione struttura e template documento],
  )

  /*table(
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
  inset: 5pt,
  align: center,
  table.header(
  text(12pt, fill: white)[*Vers.*],
  text(12pt, fill: white)[*Data*],
  text(12pt, fill: white)[*Autore*],
  text(12pt, fill: white)[*Ruolo*],
  text(12pt, fill: white)[*Descrizione*],
  ),
  text(11pt)[1.0.0],
  text(11pt)[15-10-24],
  text(11pt)[Samuele Esposito],
  text(11pt)[-],
  text(11pt)[Approvazione documento],
  text(11pt)[0.1.0],
  text(11pt)[15-10-24],
  text(11pt)[Samuele Esposito],
  text(11pt)[-],
  text(11pt)[Verifica documento],
  text(11pt)[0.0.2],
  text(11pt)[15-10-24],
  text(11pt)[Samuele Esposito],
  text(11pt)[-],
  text(11pt)[Redazione documento],
  text(11pt)[0.0.1],
  text(11pt)[15-10-24],
  text(11pt)[Samuele Esposito],
  text(11pt)[-],
  text(11pt)[Creazione struttura e template documento],
  )  */
  pagebreak()
  contenuto
}

