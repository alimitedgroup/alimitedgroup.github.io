#import "/lib/common.typ": *

#{
  let nome = "Analisi dei requisiti"
  let versioni = ( 
    (
      vers: "0.0.2",
      date: datetime(day: 13, month: 11, year: 2024),
      autore: p.sara,
      // verifica: p.,
      descr: "Aggiornamento contenuto",
    ),
    (
      vers: "0.0.1",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      // verifica: p.,
      descr: "Creazione struttura e template documento",
    ),
   
 )
  let data = datetime(day: 12, month: 11, year: 2024)
  let stato = "Redazione"

  let versione = versioni.at(0).vers
  [ #metadata[#nome #versione] <titolo>]

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: nome, date: data)
  set text(lang: "it", font: "Hanken Grotesk")
  show link: underline

  // @typstyle off
  prima-pagina(
    nome,
    [Stato], stato,
    [Versione], versione,
    [Distribuzione], grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
  )

  set heading(numbering: "1.")
  set page(numbering: "1", header: header(nome), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()
}

= Introduzione

#lorem(10) 

== Scopo del documento

#lorem(10)

== Ambito di applicazione

#lorem(10)

== Definizioni, acronimi e abbreviazioni
#lorem(10) 

== Riferimenti
=== Riferimenti normativi
#lorem(10) 
=== Riferimenti informativi
- Standard IEEE: \ https://ieeexplore.ieee.org/document/720574
- Capitolato C6 _Sistema di Gestione di un Magazzino Distribuito_: \ https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf
- Analisi dei requisiti: \ https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf
- Diagrammi casi d'uso: \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Diagrammi delle attività: \ https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf

== Quadro generale
#lorem(10) 

= Descrizione generale
== Prospettiva del prodotto
#lorem(10) 
== Funzioni del prodotto
#lorem(10) 
== Caratteristiche dell'utente
#lorem(10) 
== Vincoli
#lorem(10) 
== Assunzioni e dipendenze
#lorem(10) 
= Requisiti specifici

= Informazioni di supporto
== Tabella dei contenuti
#lorem(10) 


