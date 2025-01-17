#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 18, month: 12, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 29, month: 12, year: 2024),
      autore: p.loris,
      verifica: p.samuele,
      descr: "Approvazione del documento",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 19, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [Approvato],
  presenze: (
    p.emanuele,
    p.samuele,
    p.sara,
    p.loris,
    p.marco,
    p.matteo,
    p.lorenzo,
  ),
  odg: [Decima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*presenza*], [*18 Dicembre 2024*], [*9.00*], [*10.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 5-01-2025

#pagebreak()
= Dettaglio riunione

== Aggiornamenti sui lavori in corso

Il gruppo ha proseguito le attività previste nel terzo _Sprint_#super[g]: ad ora gli obiettivi posti in merito alla redazione del *Piano di Qualifica* e dell'*Analisi dei Requisiti#super[g]* sono stati per la maggior parte raggiunti.
Nel dettaglio, è proseguito il lavoro di documentazione sulle metriche da inserire nel *Piano di Qualifica* e la stesura dei principali Casi d'Uso dell'*Analisi dei Requisiti#super[g]*, con l'individuazione dei primi Casi d'Uso che poi daranno origine ai requisiti desiderabili e opzionali.

Grandi avanzamenti sono stati fatti anche in merito allo studio delle tecnologie, con anche i primi test sulle stesse.

Infine, anche le *Norme di Progetto* hanno raggiunto quella che sembra essere la struttura finale del documento, inoltre nuove informazioni sono state aggiunte riguardo il Processo di Sviluppo.

== Decisioni relative alle attività del prossimo periodo

_ALimitedGroup_ ha compreso che gli obiettivi posti sino ad ora non sono stati sufficientemente specifici ai fini dell'organizzazione del lavoro asincrono, per questo ha deciso di porsi obiettivi più specifici da questo momento in poi.

Nel dettaglio è stato deciso che:

#align(center)[*Analisi dei Requisiti#super[g]*]
- Sarà necessario aver revisionato tutti i Casi d'Uso sino ad ora redatti entro il giorno *29 Dicembre 2024*
- Sarà necessario aver aggiunto tutti i Casi d'Uso relativi a requisiti non obbligatori entro il giorno *5 Gennaio 2025*

#align(center)[*Norme di Progetto*]
- Sarà necessario aggiungere le informazioni di codifica del codice entro il giorno *5 Gennaio 2025*

#align(center)[*Piano di Qualifica*]
- Sarà necessario effettuare la stesura dell'introduzione del documento e di tutte le misurazioni rilevate entro il giorno *5 Gennaio 2025*

#align(center)[*Tecnologie e PoC*]
- Sarà necessario proseguire con lo studio delle tecnologie e relativi testing basandosi sui requisiti descritti nel capitolato#super[g], eventualmente iniziando la realizzazione del PoC#super[g], sino al giorno *5 Gennaio 2025*

Per l'assegnazione delle attività saranno mantenute le issue generiche di redazione attualmente presenti aggiornando la descrizione con le scadenze, in futuro invece i nomi dovranno essere più specifici.

#pagebreak()
== Assegnazione prevista dei ruoli sino al 05-01-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.loris)* $arrow.r$ *Responsabile*#super[g]]
#align(center)[*#persona(p.sara)* $arrow.r$ *Amministratore*#super[g] \
  *#persona(p.emanuele)* $arrow.r$ *Amministratore*#super[g]
]
#align(center)[*#persona(p.samuele)* $arrow.r$ *Programmatore*#super[g]]
#align(center)[*#persona(p.matteo)* $arrow.r$ *Analista*#super[g] \
  *#persona(p.marco)* $arrow.r$ *Analista*#super[g] \
  *#persona(p.lorenzo)* $arrow.r$ *Analista*#super[g]
]\

Si stabilisce inoltre di contattare quanto prima il docente *#abbrev(p.cardin)* per avere riscontro sui principali dubbi sorti durante la redazione dell'*Analisi dei Requisiti#super[g]* e di redigere il verbale di questa riunione e della riunione esterna con #M31 svoltasi in data 17 Dicembre 2024 entro la fine del quarto _Sprint_#super[g].

Si conclude tenendo conto che in caso di esaurimento delle ore per il ruolo assegnato, anche facendo riferimento al precedente #link("https://alimitedgroup.github.io/VI%2004-12-2024%20v1.0.0.pdf")[*Verbale Interno*], tali ruoli potrebbero subire variazioni.

#pagebreak()
= Esiti della riunione

La riunione si conclude con l'affermare la necessità di intensificare gli sforzi produttivi per arrivare quanto prima possibile alla _Requirements and Technology Baseline_

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "DI26",
  "Proseguire lo studio delle tecnologie (sino al 5 Gennaio 2025)",
  issue(30),
  "Revisionare tutti i Casi d'Uso sino ad ora redatti nell'Analisi dei Requisiti (entro 29 Dicembre 2024)",
  issue(30),
  "Aggiungere tutti i Casi d'Uso relativi a requisiti non obbligatori nell'Analisi dei Requisiti (entro 5 Gennaio 2025)",
  issue(61),
  "Aggiungere le informazioni di codifica del codice nelle Norme di Progetto (entro 5 Gennaio 2025)",
  issue(62),
  "Effettuare la stesura dell'introduzione del documento e di tutte le misurazioni rilevate (entro 5 Gennaio 2025)",
  issue(81),
  "Redazione Verbale Interno 18-12-2024 (entro 5 Gennaio 2025)",
  issue(82),
  "Redazione Verbale Esterno 17-12-2024 (entro 5 Gennaio 2025)",
)
