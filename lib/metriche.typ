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

#let to-string(content) = {
  if content.has("text") {
    content.text
  } else if content.has("children") {
    content.children.map(to-string).join("")
  } else if content.has("body") {
    to-string(content.body)
  } else if content == [ ] {
    " "
  }
}

#let test-table(
  unit: [],
  tipo-test: [],
  test,
) = {
  let count = 0
  show figure: set block(breakable: true)
  figure(
    table(
      fill: (x, y) => if (y == 0) {
        rgb("#800080")
      } else if (calc.gcd(y, 2) == 2) {
        rgb("#bf7fbf")
      } else {
        rgb("#d8b2d8")
      },
      align: center + horizon,
      columns: (auto, auto, auto, /*auto,*/ auto),
      //columns: (10%, 30%, 25%, 25%, 10%),
      table.header(
        text(12pt, fill: white)[*Codice*],
        text(12pt, fill: white)[*Descrizione*],
        text(12pt, fill: white)[*Valore atteso*],
        //text(12pt, fill: white)[*Valore ricevuto*],
        text(12pt, fill: white)[*Stato del Test*],
      ),
      ..for cell in test {
        count = count + 1
        (
          "T-" + str(count) + "-" + unit,
          //cell.code,
          cell.desc,
          cell.va,
          cell.st,
        )
      }
    ),
    caption: tipo-test,
  )
}
