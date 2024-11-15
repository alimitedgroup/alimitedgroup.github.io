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

I membri dell'intero gruppo si impegnano a visionare constantemente questo documento e a rispettare rigorosamente le regole definite 

== Scopo del prodotto

Il prodotto in questione nasce dalla necessità dell'azienda #M31 di 

= Processi Primari

== Fornitura

=== Scopo

=== Descrizione

=== Rapporti con il proponente