#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 04, month: 04, year: 2025),
  tipo: [esterno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 04, month: 04, year: 2025),
      autore: p.matteo,
      verifica: p.loris,
      descr: "Approvazione interna ed esterna del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 04, month: 04, year: 2025),
      autore: p.matteo,
      verifica: p.loris,
      descr: "Redazione del documento.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.sara, p.lorenzo, p.loris, p.matteo, p.marco, p.emanuele, p.samuele),
  odg: [Settima riunione con #M31: presentazione del _Minimum Viable Product_ ed esecuzione dei test di accettazione],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*4 Aprile 2025*], [*11.30*], [*12.30*], [#M31])

+ Presentazione del _Minimum Viable Product#super[G]_;
+ Accettazione formale del _Minimum Viable Product#super[G]_.

In questa riunione hanno partecipato, per conto di #M31:
- #persona(p.luca);
- #persona(p.moones);
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Presentazione del _Minimum Viable Product_

Nel corso della riunione il team di _ALimitedGroup_ ha presentato ad #M31 alcuni chiarimenti rispetto allo sviluppo delle componenti del Sistema. Ha quindi proseguito con l'esecuzione in tempo reale dei test#super[G] di accettazione.

#M31 ha potuto osservare che i test#super[G] riportavano i risultati previsti e si è detta soddisfatta di quanto realizzato da _ALimitedGroup_.


== Accettazione formale del _Minimum Viable Product_.

#M31 si dice formalmente soddisfatta di quanto sviluppato da _ALimitedGroup_. Tale formale accettazione è comprovata dalla firma, qui sotto riportata, di uno dei componenti partecipanti alla riunione:




#pagebreak()

= Esiti della riunione e ringraziamenti
\
La riunione si conclude positivamente.

Il gruppo ottavo del progetto di Ingegneria del Software per l'anno accademico 2024/2025 ringrazia profondamente #M31 per tutto il supporto fornito durante questo progetto e per tutti i preziosi consigli.

I membri del gruppo si impegneranno per fare tesoro di tutto quanto ciò che è stato consigliato e spera in futuro di avere ancora possibilità di collaborare con #M31.
\
\
I membri di *_ALimitedGroup_*, \

#persona(p.sara) \
#persona(p.emanuele) \
#persona(p.lorenzo) \
#persona(p.loris) \
#persona(p.samuele) \
#persona(p.marco) \
#persona(p.matteo) \

#pagebreak()

= Tabella delle decisioni e delle azioni <tabella>
#tabella-decisioni(
  issue(244),
  "Redazione verbale esterno del 4 Aprile 2025",
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
#align(right)[#image("../../../assets/firma_ve0404.png", width: 35%)]
