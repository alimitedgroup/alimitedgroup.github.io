#import "../lib/importantdocs.typ": *

#show: body => importantdocs(
  data: datetime(day: 15, month: 11, year: 2024),
  tipo: [interno],
  versioni: ((
      vers: "0.1.0",
      date: datetime(day: 15, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.matteo,
      descr: "Verifica del documento",
    ),
  ),
  versione: [0.1.0],
  stato: [Verificato],
  responsabile: ((p.samuele),),
  verificatore: ((p.matteo),),
  redattori: (
    (p.emanuele),
    (p.marco),
    (p.matteo),
    (p.lorenzo),
  ), 
  descrizione: [Questo documento contiene le _Norme di Progetto_ seguite da il gruppo _ALimitedGroup_ per il progetto C6 proposto dall'azienda #M31],
  body,
)

= Introduzione

== Scopo del documento
Questo documento nasce per descrivere il _Way of Working_ adottato da parte di questo gruppo durante tutto l'arco di svolgimento del progetto didattico. In tale documento, perciò, vengono analizzate tutte le _best practices_ da seguire per ogni tipo di processo, ciascuno di questo avrà correlato le attività che lo compongono seguendo la struttura definita nello standard _ISO/IEC 12207:1995_.\

Per la stesura di questo documento è stata intrapresa un metodo incrementale, cioè la stesura passo passo del documento con modifiche, aggiunte e cancellazioni successive ad un _template_ base. \

I membri dell'intero gruppo si impegnano a visionare constantemente questo documento e a rispettare rigorosamente le regole definite in esso, per svolgere il progetto in modo professionale, coerente ed uniforme.

== Scopo del prodotto

Il prodotto in questione nasce dalla necessità, da parte di #M31, di gestire l'inventario di vari magazzini per garantirne la disponibilità continua e rendere equilibrato tutto l'ecosistema. Per far sì che sia equilibrato, il sistema dovrà essere in grado di ottimizzare la distribuzione delle risorse ma, soprattutto, minimizzare i tempi di risposta. \

== Glossario

Per evitare ogni tipo di ambiguità o incomprensioni riguardanti la nomenclatura adottata in questo documento, è stato deciso di utilizzare un glossario in cui è trascritta, per ogni parola, la definizione. \
_ALimitedGroup_ si impegna a visionarlo periodicamente, per permetter la più completa comprensione di ogni tipo di documento pubblicato dal gruppo.


== Riferimenti
=== Riferimenti normativi
- Capitolato d'appalto C6: Sistema di gestione di un magazzino distribuito \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")
- Standard ISO/IEC 12207:1995 \
  #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")

=== Riferimenti informativi
- I processi di ciclo di vita del software \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")
- Glossario \
  #link("https://alimitedgroup.github.io/Glossario.pdf") ///questo link va assolutamente cambiato quando sarà pubblicato il glossario
                                                        

#pagebreak()
= Processi Primari

== Fornitura

=== Scopo

=== Descrizione

=== Aspettative

=== Rapporti con il proponente

=== Documentazione fornita

Vengono elencati di seguito tutti i documenti che _ALimitedGroup_ consegnerà all'azienda #M31 e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

==== Valutazione dei Capitolati

La #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%201.0.0.pdf")[Valutazione dei Capitolati] è un documento pubblicato da _ALimitedGroup_ in data 2024-10-31. \
Quest'ultimo fornisce, per ogni capitolato, una dettagliata analisi evidenziando i suoi punti di forza e le sue criticità. É suddiviso nelle seguenti sezioni:
- *Panoramica*: che indica l'azienda proponente, il nome del capitolato e delle informazioni generali su il prodotto da realizzare;
- *Scopo*: indica a che pro viene realizzato il prodotto;
- *Punti di forza* 
- *Critictà evidenziate*
- *Conclusioni*: motivazioni del gruppo sulla scelta/non scelta del capitolato.

==== Analisi dei requisiti

//Prossimamente....

==== Piano di progetto

//Prossimamente....

==== Piano di Qualifica

//Prossimamente....

==== Glossario

//Prossimamente....

==== Lettera di Presentazione

//Prossimamente....

=== Strumenti