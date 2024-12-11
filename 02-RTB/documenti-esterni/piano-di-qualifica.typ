#import "../../lib/common.typ": *
#import "@preview/cetz:0.3.1": *
#import "@preview/cetz-plot:0.1.0": chart

#set text(lang: "it", font: "Hanken Grotesk")
#set list(indent: 1em)
#set par(justify: true)
#show link: underline
#show ref: underline

#let versione = [0.1.0]
#let nome-documento = [Piano di Qualifica]
#let link-glossario(
  link-text,
) = {
  link("https://alimitedgroup.github.io/glossario%200.1.0")[#link-text]
}
#let link-norme(
  link-text,
) = {
  link("https://alimitedgroup.github.io/norme%20di%progetto%200.1.0")[#link-text]
}

#metadata[Piano di qualifica #versione] <titolo>
#prima-pagina(
  nome-documento + "\nVersione " + versione,
  [],
  [Stato],
  [Redazione],
  [Versione],
  versione,
  [Distribuzione],
  grid(align: left, gutter: 8pt, [_ALimitedGroup_], [M31], prof(p.tullio), prof(p.cardin)),
)

#set heading(numbering: "1.")
#set page(numbering: "1", header: header(nome-documento + " v" + versione), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (
    vers: "0.1.0",
    date: datetime(day: 11, month: 12, year: 2024),
    autore: p.sara,
    descr: "Aggiunta sezione introduzione",
  ),
  (
    vers: "0.1.0",
    date: datetime(day: 5, month: 12, year: 2024),
    autore: p.sara,
    descr: "Redazione documento",
  ),
))
#pagebreak()

#indice()
#pagebreak()

= Introduzione
== Scopo del documento
Il presente Piano di Qualifica rappresenta un documento fondamentale per la gestione e il monitoraggio continuo della qualità del progetto software e dei processi coinvolti nel suo ciclo di vita.\
Il Piano di Qualifica si sviluppa attraverso tre dimensioni interconnesse:

+ Piano della Qualità
  - Definisce gli obiettivi qualitativi
  - Stabilisce gli standard di riferimento
  - Delinea le politiche e le strategie per raggiungere l'eccellenza


+ Controllo di Qualità
  - Implementa meccanismi di misurazione oggettivi
  - Verifica la conformità ai requisiti
  - Monitora le prestazioni attraverso metriche predefinite


+ Miglioramento Continuo
  - Analizza periodicamente i risultati
  - Identifica opportunità di ottimizzazione
  - Adatta costantemente processi e obiettivi

Il Piano di Qualifica rappresenta uno strumento strategico volto a garantire che il progetto:
- Rispetti integralmente i requisiti definiti
- Consegua gli obiettivi prefissati
- Mantenga elevati standard qualitativi

L'approccio metodologico adottato non configura la qualità come un elemento statico, bensì come un processo dinamico di apprendimento, miglioramento e ottimizzazione continua.

I destinatari del documento sono:
- Team di sviluppo
- Committenti
- Utenti finali

== Definizioni, acronimi e abbreviazioni
Per tutte le definizioni, acronimi e abbreviazioni utilizzati in questo documento, si faccia
riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni
necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti
rilevanti per il progetto.
== Riferimenti
=== Riferimenti normativi
- Norme di Progetto
alimitedgroup.github.io/norme-progetto.pdf
- Capitolato d’appalto C6 Sistema di Gestione di un Magazzino Distribuito:
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf


=== Riferimenti informativi
- Glossario:
alimitedgroup.github.io/Glossario.pdf


=Qualità di processo

=Qualità di prodotto

