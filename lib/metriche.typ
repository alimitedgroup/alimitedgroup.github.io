#let metric(
  cod: [],
  formula: none,
  desc: [],
) = [

  //#body

  - *Codice*: #cod

  #if (formula != none) {
    [- *Formula*: #formula]
  }

  - *Descrizione*: #desc
]
