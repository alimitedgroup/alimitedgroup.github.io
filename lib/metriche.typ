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

#let metriche-graph(
  nome: [],
  desc: [],
  width: none,
) = [
  #figure(image("../assets/measurements/" + nome + ".svg", width: width), caption: desc)
]
