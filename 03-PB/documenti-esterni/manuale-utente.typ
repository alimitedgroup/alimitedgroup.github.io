#import "@preview/cmarker:0.1.2"
#import "../../lib/importantdocs.typ": *

#show: body => importantdocs(
  titolo: "Manuale Utente",
  tipo: [esterno],
  data: datetime.today(),
  descrizione: "Questo documento contiene le informazioni utili per l'utilizzo del "
    + [_Minimum Viable Product_]
    + " realizzato da AlimitedGroup",
  responsabile: (p.samuele,),
  verificatore: (p.emanuele, p.matteo),
  stato: [In redazione],
  redattori: (p.samuele, p.matteo),
  versioni: (
    (
      vers: "0.2.0",
      date: datetime(day: 02, month: 03, year: 2025),
      descr: "Stesura parte introduttiva del documento e requisiti del Sistema " /* + [(@introduzione e @requisiti)] */
        + ".",
      autore: p.matteo,
      verifica: p.emanuele,
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 28, month: 02, year: 2025),
      descr: "Preparazione base documento.",
      autore: p.samuele,
      verifica: p.matteo,
    ),
  ),
  body,
)

#set table(
  fill: (x, y) => if (y == 0) {
    rgb("#800080")
  } else if (calc.gcd(y, 2) == 2) {
    rgb("#bf7fbf")
  } else {
    rgb("#d8b2d8")
  },
  align: center,
)
#show table.cell.where(y: 0): body => text(12pt, fill: white, weight: "bold", body)

#let is-inside-raw-typst(content, position) = {
  let res = ""
  let i = 0
  while i < position and i < content.len() {
    res += repr(i)
    let start = content.slice(i).position(regex("<!--\s*raw-typst"))
    if start == none {
      return false
    }

    let end = content.slice(start).position("-->")
    if end == none {
      return false
    }

    if i + start < position and i + start + end > position {
      return true
    }

    i += end + 5

    res += repr(start)
    res += repr(end)
  }

  // return res
  return false
}
#assert(is-inside-raw-typst("<!-- raw-typst ciao -->", 15))
#assert(not is-inside-raw-typst("<!-- raw-typst ciao -->", 0))
#assert(not is-inside-raw-typst("<!-- raw-typst ciao -->", 23))

#let wrap-replacer(content, replacer) = {
  return match => if is-inside-raw-typst(content, match.start) {
    match.text
  } else {
    replacer(match)
  }
}

#let render(filepath, level) = {
  let basename = ("../manuale-utente/" + filepath).split("/").slice(0, -1).join("/")
  let content = read("../manuale-utente/" + filepath)


  content = content.replace(
    regex(`^(#+.*)(<[\w:\.]+>)\n`.text),
    wrap-replacer(content, match => match.captures.first() + "<!-- raw-typst " + match.captures.at(1) + " -->"),
  )
  content = content.replace(
    "#super[G]",
    wrap-replacer(content, match => "<!-- raw-typst #super(\"G\") -->"),
  )
  cmarker.render(
    content,
    scope: (image: (path, alt: none) => align(center, image(basename + "/" + path, alt: alt, height: 30%))),
  )
}

#let walk_nav(data, level) = {
  for value in data {
    let a2 = value.values().at(0)
    if type(a2) == str {
      render(a2, level)
    } else {
      walk_nav(a2, level + 1)
    }
  }
}

#walk_nav(yaml("../../mkdocs.yml").nav, 1)
