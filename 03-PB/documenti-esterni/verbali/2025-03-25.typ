#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 25, month: 03, year: 2025),
  tipo: [esterno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 26, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Redazione del documento.",
    ),
  ),
  stato: [In redazione],
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
- resta da completare il servizio di notifiche e l'aggiornamento della _API_#super[G] ;
- è necessario aggiungere alla Specifica Tecnica le informazioni sul microservizio Order/Transfer, Warehouse e API Gateway;
- è necessario proseguire la redazione del Manuale Utente;

== Presentazione microservizi realizzati
Il gruppo _ALimitedGroup_ ha presentato all'azienda #M31 i microservizi realizzati per l'autenticazione, la gestione degli ordini e i trasferimenti tra magazzini.
#M31 ha valutato positivamente quanto svolto.

== Discussione test accettazione
_ALimitedGroup_ ha richiesto a #M31 informazioni sulla modalità di svolgimento dei test#super[G] di accettazione.
Nel prossimo incontro verrà effettualto il collaudo del prodotto.
L'azienda ha richiesto di specificare anche il codice necessario per l'esecuzione dei test#super[G] .



#pagebreak()

= Esiti della riunione
La riunione si conclude con parere positivo su quanto svolto.\
Le decisioni accordate sono riportate nella tabella presente nella @tabella.\
_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Tabella delle decisioni e delle azioni <tabella>
#tabella-decisioni(
  issue(218),
  "Redazione verbale esterno del 28 Febbraio 2025",
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])

