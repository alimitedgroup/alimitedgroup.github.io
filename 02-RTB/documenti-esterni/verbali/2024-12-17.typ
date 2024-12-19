#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 17, month: 12, year: 2024),
  tipo: [esterno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 19, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Prima redazione del documento",
    ),
  ),
  stato: [Redatto],
  presenze: (p.samuele, p.loris, p.matteo),
  odg: [Terza riunione con #M31: esposizione di tutti gli _use-case_ individuati nell'Analisi dei Requisiti, sciolti i dubbi riguardo quest'ultimi, decisi i periodi dei prossimi _meeting_],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*ibrida*], [*17 Dicembre 2024*], [*14:30*], [*15:30*], [#M31])
+ Esposizione degli avanzamenti sullo studio delle tecnologie e possibile architettura del Sistema
+ Prossimi incontri con #M31

In questa riunione hanno partecipato, per conto, di #M31:
- #persona(p.moones), in presenza;
- #persona(p.cristian), in presenza.

#pagebreak()

= Dettagli riunione
== Esposizione degli avanzamenti sullo studio delle tecnologie e possibile architettura del Sistema
Nel corso della riunione i componenti di _ALimitedGroup_ presenti all'incontro hanno esposto ad #M31 gli avanzamenti fatti in merito all'uso di *Go* e *Nats*:
nel dettaglio, è stata presentata un'istanza di funzionamento di un pacchetto *Docker* che comunicava, mediante *Nats*, ad un Database localmente presente, il tutto gestito mediante codice in *Go*.

In seguito è stata esposta una prima idea architetturale, idea che, data la complessità del progetto, è necessaria per adeguatamente testare le tecnologie da utilizzare nel progetto.

#M31 ha accolto positivamente entrambi gli eventi, esprimondosi in maniera positiva su quanto realizzato.

I rappresentanti di #M31 hanno consigliato, in merito alla bozza architetturale, di cercare progetti _Open Soruce_ che potrebbero implementare meccanismi utili alla risoluzione di alcuni delle problematiche che il Sistema sviluppato da _ALimitedGroup_ dovrà risolvere.

== Prossimi incontri con #M31

Viene stabilito di fissare il prossimi incontri con #M31 ad *Analisi dei Requisiti* conclusa e/o quando il PoC avrà raggiunto un buon stato di sviluppo.

#pagebreak()

= Esiti della riunione

Il gruppo conclude l'incontro impegnandosi al completamento delle attività quanto prima.

_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per averci accolto in sede, per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
