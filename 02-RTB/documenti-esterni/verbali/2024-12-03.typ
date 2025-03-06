#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 03, month: 12, year: 2024),
  tipo: [esterno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 06, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.loris,
      descr: "Approvazione interna ed esterna del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 03, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.samuele,
      descr: "Prima redazione del documento.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.emanuele, p.samuele, p.sara, p.loris, p.marco, p.matteo, p.lorenzo),
  odg: [Seconda riunione con #M31: esposizione di tutti gli _use-case_ individuati nell'Analisi dei Requisiti, sciolti i dubbi riguardo quest'ultimi, decisi i periodi dei prossimi _meeting_],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*ibrida*], [*3 Dicembre 2024*], [*14:30*], [*15:55*], [#M31])
+ Esposizione _use-case_
+ Risoluzione dubbi fase di analisi
+ Prossimi incontri con #M31

In questa riunione hanno partecipato, per conto di #M31:
- #persona(p.luca), in modalità virtuale tramite _Microsoft Teams_;
- #persona(p.moones), in presenza;
- #persona(p.cristian), in presenza.

#pagebreak()

= Dettagli riunione
== Esposizione _use-case_ e risoluzione dubbi
Il gruppo _ALimitedGroup_ ha esposto ai rappresentanti di #M31 alcuni _use-case_ emersi durante la fase di analisi.

L'azienda ha consigliato di concentrare l'attenzione sulla descrizione testuale, considerando i diagrammi dei casi d'uso come uno strumento di supporto alla comprensione del documento di *Analisi dei Requisiti#super[G]*.

Visto che il progetto riguarda un *sistema distribuito*, è stato evidenziato come prioritario affrontare la gestione della concorrenza, con particolare attenzione al trattamento delle eccezioni e degli errori correlati.

Il CTO#super[G] #persona(p.luca) ha illustrato la metodologia seguita da #M31 durante l'analisi dei requisiti#super[G]:
+ Individuazione degli *User Need#super[G]*: si identificano le richieste e le necessità espresse dall'utente in relazione al prodotto.
+ Definizione dei *Design Input#super[G]*: gli user need#super[G] vengono tradotti in requisiti specifici e misurabili.
+ Definizione dei *Design Output#super[G]*: si progettano soluzioni tecniche mirate a soddisfare i requisiti individuati e a risolvere i problemi emersi.

L'azienda ha enfatizzato l'importanza di produrre _documenti leggibili e facilmente fruibili_.\

#M31 ha lasciato libertà nella definizione dei _campi da attribuire alle merci_,
consigliando di ispirarsi a sistemi di e-commerce già esistenti.
Inoltre, ha suggerito l'implementazione di un _catalogo centrale_ riportante i prodotti.\

Infine, l'azienda ha raccomandato di optare per _scelte semplici_,
rimandando alcune funzionalità#super[G] avanzate a sviluppi futuri.
Tra queste, si includono:
- La gestione dei magazzini offline.
- La possibilità di gestire più ordini contemporanei per lo stesso utente.

== Prossimi incontri con #M31
I prossimi incontri con l'azienda e i rappresentanti di #M31 verranno fissati in questi giorni e riportati nei prossimi verbali.
#M31 consiglia di effettuare un ultimo _meeting_ prima del *20 Dicembre 2024*, data limite per via della chiusura natalizia dell'azienda.

#pagebreak()

= Esiti della riunione
Sono state risolte tutte le perplessità riguardante la fase di analisi.
Il gruppo si pone l'obiettivo di confrontarsi per decidere l'architettura da implementare per la gestione del magazzino distribuito.
La progettazione sarà oggetto di discussione nel prossimo incontro con #M31.
_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per averci accolto in sede, per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.
#pagebreak()

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(57),
  "Redazione verbale esterno del 3 Dicembre 2024",
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
#figure(image("../../../assets/firma_ve0312.png", width: auto))
