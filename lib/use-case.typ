#import "@preview/pintorita:0.1.2"
#import "@preview/chronos:0.2.0"

// Don't delete, necessary for diagrams
#show raw.where(lang: "pintora"): it => pintorita.render(it.text)

#let use-case-diagram(version, caption, width: 60%) = [
  #figure(
    image("../assets/diagrams/UC"+ version + ".svg", width: width),
    caption: caption,
  )
]

#let use-case(
  num: [],
  titolo: [],
  attore: [],
  pre: [],
  scenari: [],
  trigger: [],
  post: none,
  attori_secondari: none,
  scenari_alternativi: none,
  body,
) = [
  === UC#num - #titolo

  - *Attore principale*: #attore

  #if (attori_secondari != none) {
    [- *Attore secondario*: attore_secondario]
  }

  - *Precondizioni*: #pre

  #if (post != none) {
    [- *Postcondizioni*: #post]
  }

  - *Scenario principale*: #scenari

  #if (scenari_alternativi != none) {
    [- *Scenari alternativi*: #scenari_alternativi]
  }

  - *Trigger*: #trigger

  #body
]

