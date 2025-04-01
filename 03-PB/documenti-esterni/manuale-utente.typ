#import "@preview/cmarker:0.1.2"
#import "../../lib/importantdocs.typ": *

#let ver = [0.2.0]
#show: body => importantdocs(
  titolo: "Manuale Utente",
  tipo: [esterno],
  data: datetime.today(),
  descrizione: "Questo documento contiene le informazioni utili per l'utilizzo del "
    + [_Minimum Viable Product_]
    + " realizzato da "
    + [_ALimitedGroup_],
  responsabile: (p.samuele,),
  verificatore: (p.emanuele, p.matteo),
  stato: [In redazione],
  redattori: (p.samuele, p.matteo, p.marco),
  versione: ver,
  versioni: (
    (
      vers: "0.2.0",
      date: datetime(day: 19, month: 03, year: 2025),
      descr: "Redazione sezione Tipi di Utenti, Ordini, Trasferimenti e Riassortimenti: "
        + [(@tipiutenti, @capordini, @captrasferimenti, @capriassortimenti)]
        + ".",
      autore: p.marco,
      verifica: p.samuele,
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 02, month: 02, year: 2025),
      descr: "Preparazione base documento."
        + [ \ ]
        + "Stesura parte introduttiva del documento e requisiti del Sistema "
        + [(@introduzione e @requisiti)]
        + ".",
      autore: p.samuele,
      verifica: p.emanuele,
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
    let start = content.slice(i).position(regex("<!--raw-typst"))
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
#assert(is-inside-raw-typst("<!--raw-typst ciao -->", 15))
#assert(not is-inside-raw-typst("<!--raw-typst ciao -->", 0))
#assert(not is-inside-raw-typst("<!--raw-typst ciao -->", 23))

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

  content = content
    .replace(
      regex(`^(#+.*)<([\w:\.]+)>\n`.text),
      match => match.captures.first() + "<!--raw-typst <" + match.captures.at(1) + ">-->",
    )
    .replace(
      "#super[G]",
      wrap-replacer(content, match => "<!--raw-typst#super(\"G\")-->"),
    )
  cmarker.render(
    content,
    scope: (
      image: (path, width: 50%, height: 30%, alt: none) => align(
        center,
        image(basename + "/" + path, alt: alt, width: width, height: height, fit: "contain"),
      ),
    ),
    h1-level: level,
  )
}

#let walk_nav(data, level) = {
  for value in data {
    let a2 = value.values().at(0)
    if type(a2) == str {
      render(a2, level)
    } else {
      [
        #heading(
          value.keys().at(0),
          level: level,
        )
        #label(lower(value.keys().at(0)))
      ]
      walk_nav(a2, level + 1)
    }
  }
}

#walk_nav(yaml("../../mkdocs.yml").nav, 1)
