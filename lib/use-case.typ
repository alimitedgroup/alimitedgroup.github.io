/*#import "@preview/pintorita:0.1.2"
#import "@preview/chronos:0.2.0"

// Don't delete, necessary for diagrams
#show raw.where(lang: "pintora"): it => pintorita.render(it.text)
*/
#let use-case-diagram(version, caption, width: 60%) = [
  #figure(
    image("../assets/diagrams/UC" + version + ".svg", width: width),
    caption: caption,
  )
]

#let use-case(
  attore: [],
  pre: [],
  scenari: [],
  trigger: none,
  inclusioni: none,
  estensioni: none,
  post: none,
  attori_secondari: none,
  scenari_alternativi: none,
  body,
) = [

  #body

  - *Attore principale*: #attore

  #if (attori_secondari != none) {
    [- *Attore secondario*: #attori_secondari]
  }

  - *Precondizioni*: #pre

  #if (post != none) {
    [- *Postcondizioni*: #post]
  }

  - *Scenario principale*: #scenari

  #if (scenari_alternativi != none) {
    [- *Scenari alternativi*: #scenari_alternativi]
  }

  #if (inclusioni != none) {
    [- *Inclusioni*: #inclusioni]
  }

  #if (estensioni != none) {
    [- *Estensioni*: #estensioni]
  }

  #if (trigger != none) {
    [- *Trigger*: #trigger]
  }
]

