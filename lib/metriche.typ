#let metric(
  cod: [],
  formula: none,
  desc: [],
  body,
) = [

  #body

  - *Codice*: #cod

  #if (formula != none) {
    [- *Formula*: #formula]
  }

  - *Descrizione*: #desc
]
)
