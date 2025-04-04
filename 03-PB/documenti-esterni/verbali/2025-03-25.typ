#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 25, month: 03, year: 2025),
  tipo: [esterno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 26, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.lorenzo,
      descr: "Approvazione interna ed esterna del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 26, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Redazione del documento.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.sara, p.lorenzo, p.loris, p.matteo, p.marco, p.emanuele),
  odg: [Sesta riunione con #M31: aggiornamento sullo stato avanzamento lavori],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*25 Marzo 2025*], [*10.45*], [*11.40*], [#M31])

+ aggiornamento stato avanzamento lavori;
+ presentazione alcuni microservizi;
+ discussione test#super[G] di accettazione.

In questa riunione hanno partecipato, per conto di #M31:
- #persona(p.luca);
- #persona(p.moones);
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Aggiornamento stato avanzamento lavori
Durante l'incontro il gruppo _ALimitedGroup_ ha aggiornato #M31 sullo stato avanzamento dei lavori:
- resta da completare il servizio di notifiche e l'aggiornamento del microservizio API#super[G] Gateway;
- è necessario aggiungere alla Specifica Tecnica#super[G] le informazioni sul microservizio Order/Transfer, Warehouse#super[G] e API#super[G] Gateway;
- è necessario proseguire la redazione del Manuale Utente#super[G];

== Presentazione microservizi realizzati
Il gruppo _ALimitedGroup_ ha presentato all'azienda #M31 i microservizi realizzati per l'autenticazione, la gestione degli ordini e i trasferimenti tra magazzini.
#M31 ha valutato positivamente quanto svolto, suggerendo di includere nella Specifica Tecnica#super[G] il funzionamento degli ordini e dei trasferimenti, specie facendo attenzione a descrivere come eventuali conflitti vengono risolti dal Sistema.

== Discussione test accettazione
_ALimitedGroup_ ha richiesto a #M31 informazioni sulla modalità di svolgimento dei test#super[G] di accettazione.
A tal proposito, l'azienda ha richiesto di specificare nel Piano di Qualifica#super[G] anche i risultati attesi dal test#super[G] ,nonché le istruzioni per eseguire gli stessi.
Il gruppo si impegnerà per fornire al più presto i test#super[G] di accettazione proposti per far sì, nel prossimo incontro, di svolgere gli stessi.



#pagebreak()

= Esiti della riunione
La riunione si conclude con parere positivo su quanto svolto.\
Le decisioni accordate sono riportate nella tabella presente nella @tabella.\
_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Tabella delle decisioni e delle azioni <tabella>
#tabella-decisioni(
  issue(218),
  "Redazione verbale esterno del 25 Marzo 2025",
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
#figure(image("../../../assets/fima_ve2503.png", width: 50%))

