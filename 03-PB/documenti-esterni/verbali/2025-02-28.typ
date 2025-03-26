#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 28, month: 02, year: 2025),
  tipo: [esterno],
  versioni: (
    /* (
      vers: "1.0.0",
      date: datetime(day: 03, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.emanuele,
      descr: "Approvazione interna ed esterna del documento.",
    ),*/
    (
      vers: "0.1.0",
      date: datetime(day: 28, month: 02, year: 2025),
      autore: p.sara,
      verifica: p.emanuele,
      descr: "Redazione del documento.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.sara, p.samuele, p.lorenzo, p.loris, p.matteo, p.marco, p.emanuele),
  odg: [Quinta riunione con #M31: aggiornamento sullo stato avanzamento lavori, discussione _test_],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*28 Febbraio 2025*], [*10.00*], [*11.00*], [#M31])

+ aggiornamento stato avanzamento lavori;
+ repository#super[G] _Minimum Viable Product#super[G] (MVP)_;
+ discussione test#super[G] ;
+ presentazione alcuni microservizi.

In questa riunione hanno partecipato, per conto di #M31:
- #persona(p.luca);
- #persona(p.moones);
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Aggiornamento stato avanzamento lavori
Durante l'incontro il gruppo _ALimitedGroup_ ha aggiornato #M31 sullo stato avanzamento dei lavori:
- Il _Proof of Concept#super[G] (PoC)_ e la documentazione sono state valutate positivamente;
- È stata raggiunta la _Requirement Technology Baseline#super[G] (RTB)_;
- Sono state avviate le attività per la _Product Baseline#super[G] (PB)_.

== Repository _Minimum Viable Product#super[G] (MVP)_
Il codice sorgente del _Minimum Viable Product#super[G] (MVP)_ è caricato su un #link("https://github.com/alimitedgroup/MVP")[_repository_ GitHub#super[G] ]del gruppo _ALimitedGroup_.
L'azienda #M31 ha richiesto di fornire dei rilasci periodici inviando via mail l'archivio compresso contenente il codice sorgente e un file _README.md_ con le istruzioni per l'esecuzione del _software_.
== Discussione test
#M31 ha ribadito al gruppo _ALimitedGroup_ l'importanza di fornire un *_test book_* dettagliato per la verifica#super[G] del corretto funzionamento del sistema.\
Questo documento dovrà includere una descrizione dei casi di _test_#super[G] ,
delle condizioni iniziali, dei passaggi eseguiti, dei risultati attesi e ottenuti, nonché dei criteri di validazione#super[G] utilizzati per verificare il corretto funzionamento del sistema.
I _test_#super[G] che dovranno essere inclusi sono:
- _Test_#super[G] di sincronizzazione;
- _Unit test_#super[G] e _code coverage_: viene stabilito il *_code coverage_* pari al *75%*;
- _Test_#super[G] di carico e scalabilità: per quanto riguarda la scalabilità è sufficiente che più istanze dello stesso servizio possano essere eseguite contemporaneamente;
- _Test_#super[G] di sicurezza.
Il *95%* dei _test_#super[G] devono essere eseguiti con successo.


== Presentazione architettura microservizi realizzati
Durante l'incontro il gruppo _ALimitedGroup_ ha presentato all'azienda #M31 l'architettura dei microservizi per l'autenticazione e la gestione merci.


#pagebreak()

= Esiti della riunione
La riunione si conclude con parere positivo su quanto svolto.\
Le decisioni accordate sono riportate nella tabella presente nella @tabella.\
_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Tabella delle decisioni e delle azioni <tabella>
#tabella-decisioni(
  "DI39",
  "Code Coverage pari al 75%",
  "DI40",
  "95% dei test del test book devono essere eseguiti con successo",
  issue(157),
  "Redazione verbale esterno del 28 Febbraio 2025",
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])

