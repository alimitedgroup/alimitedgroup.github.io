// ignore

#let struct(fields, methods) = [
  *Descrizione degli attributi della struttura:*

  #if fields.len() > 0 {
    list(
      ..fields
        .map(((name, desc)) => (name.replace("+ ", "").replace("- ", ""), desc))
        .map(field => [#strong(raw(field.at(0))) - #field.at(1)])
        .enumerate()
        .map(((i, f)) => if i != fields.len() - 1 { f + [;] } else { f + [.] }),
    )
  } else {
    [Questa struttura non contiene attributi.]
  }

  *Descrizione dei metodi invocabili dalla struttura:*

  #if methods.len() > 0 {
    list(
      ..methods
        .map(((name, desc)) => (name.replace("+ ", "").replace("- ", ""), desc))
        .map(method => [#strong(raw(method.at(0))) - #method.at(1)])
        .enumerate()
        .map(((i, f)) => if i != methods.len() - 1 { f + [;] } else { f + [.] }),
    )
  } else {
    [Questa struttura non contiene metodi.]
  }
]

#let interface(..methods) = [
  *Descrizione dei metodi dall'interfaccia:*

  #if methods.pos().len() > 0 {
    list(
      ..methods
        .pos()
        .map(((name, desc)) => (name.replace("+ ", "").replace("- ", ""), desc))
        .map(method => [#strong(raw(method.at(0))) - #method.at(1)])
        .enumerate()
        .map(((i, f)) => if i != methods.pos().len() - 1 { f + [;] } else { f + [.] }),
    )
  } else {
    [Questa struttura non contiene metodi.]
  }
]

#let typelink(to) = {
  link(to, str(to))
}
