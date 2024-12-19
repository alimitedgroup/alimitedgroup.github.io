#let metric(
  code: [],
  formula: none,
  description: [],
) = {
  // Impostazioni del documento
  set text(font: "New Computer Modern", size: 11pt)

  // Stile per le etichette
  let label(text) = text(weight: "bold")[#text + ":"]

  // Codice
  grid(
    columns: (120pt, auto),
    gutter: 10pt,
    label("Codice"), text[#code],
  )

  // Formula (opzionale)
  if formula != none {
    block(spacing: 1em)[
      #label("Formula")
      #align(center)[#formula]
    ]
  }

  // Descrizione
  block(spacing: 1em)[
    #label("Descrizione") #description
  ]
}
