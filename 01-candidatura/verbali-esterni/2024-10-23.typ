// VE 23-10-2024

#import "/lib/legacy.typ": *
#show: doc => verbale(
  data: datetime(day: 23, month: 10, year: 2024),
  tipo: [esterno],
  regmodifiche: (
    ("1.0.1", "29-10", "Matteo Schievano", "-", "Aggiunta sezione per approvazione esterna"),
    ("1.0.0", "25-10", "Matteo Schievano", "-", "Modifiche di formattazione minori e approvazione documento"),
    ("0.1.0", "23-10", "Sara Ferraro    Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "23-10", "Marco Piccoli   Sara Ferraro", "-", "Redazione documento"),
    ("0.0.1", "23-10", "Marco Piccoli", "-", "Creazione struttura e template documento"),
  ),
  versione: [1.0.1],
  stato: [Approvato],
  presenze: (
    "Samuele Esposito",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Lorenzo Stefani",
    "Sara Ferraro",
  ),
  odg: [Primo meeting di _ALimitedGroup_ con l'azienda _SyncLab_: vengono chiariti alcuni dubbi sorti durante la presentazione del capitolato],
  disambiguatore: [(SyncLab)],
  doc,
)


= Informazioni generali

#inizio-verbale-esterno([*virtuale*], [*23 Ottobre 2024*], [*16.00*], [*16.30*], [_SyncLab_])
- chiarimenti sul capitolato e sulle tecnologie da utilizzare
- esposizione domande riguardante il progetto.


A questo incontro, svoltosi tramite la piattaforma _Google Meet_, hanno partecipato per conto dell'azienda _SyncLab_ i seguenti rappresentanti:

- Andrea Dorigo
- Fabio Pallaro
- Daniele Zorzi.
#pagebreak()

= Motivo della riunione
Il gruppo _ALimitedGroup_ ha richiesto chiarimenti, dopo aver analizzato il progetto _NearYou_, su diversi ambiti:

- punti d'interesse e pubblicità personalizzate
- raccolta dati degli utenti
- dettagli sui test da effettuare
- dettagli sulla formazione proposta

= Resoconto
== Punti d'interesse e pubblicità personalizzate
L'azienda ha chiarito che il sistema genererà un messaggio solo quando l'utente entrerà nel raggio di azione predefinito.\
L' _LLM_ verrà interrogato una sola volta per ciascun evento, evitando interazioni ridondanti e ottimizzando le risorse.\
Il messaggio personalizzato sarà basato su diverse informazioni contestuali, come il battito cardiaco dell'utente, le condizioni meteorologiche e altri dati pertinenti.\
È fondamentale formulare la query in modo da evitare che il messaggio risulti sgradito o inappropriato per l'utente, assicurando così un'interazione positiva.\
L'azienda ha anche suggerito una possibile verifica dell'autenticità della risposta mediante confronti con fonti online, pur confidando principalmente nell'affidabilità dell'LLM scelto.



== Raccolta dati utenti

L'azienda proponente ha specificato che si partirà da un database esistente contenente dati degli utenti, il quale verrà aggiornato e personalizzato in tempo reale.\
Questa raccolta dinamica permetterà di adattare le informazioni per ciascun utente, migliorando la precisione e la pertinenza delle risposte fornite.

== Test

Per il progetto _NearYou_, l'azienda proponente garantirà supporto per testare e verificare che il modello realizzato sia efficace e completo per tutti i casi d’uso previsti.\
È stato anticipato che, nell'ambito del progetto, l'attenzione sarà principalmente focalizzata sui test _end-to-end_, piuttosto che sui test _unitari_, per assicurare una valutazione più ampia e integrata del sistema.

== Formazione

L'azienda _SyncLab_ consiglia per il progetto _NearYou_ di adottare un modello _agile_.\
Verranno organizzati _SAL_ settimanali o bisettimanali in presenza o a distanza.\
Verrà effettuata un'analisi dei requisiti condivisa.\
Se opportuno i requisiti potranno essere revisionati.\
L'azienda ha dichiarato che fornirà supporto nell'apprendimento delle nuove tecnologie.\
Inoltre, viene confermata la possibilità di inserire nel _curriculum vitae_ il progetto realizzato, con le conseguenti referenze.


== Altro
L'azienda ha chiarito che non verrà richiesta l'implementazione della parte mobile del progetto e del software che visualizza i messaggi.
#pagebreak()

= Esiti della riunione
La riunione con l'azienda _SyncLab_ è stata esplicativa e formativa per tutti i presenti del gruppo, i rappresentati dell'azienda hanno risposto esaustivamente toccando punto per punto il progetto didattico. \
Tutti i presenti del gruppo _ALimitedGroup_ ringraziano l'azienda _SyncLab_ e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante il _meeting_.

#pagebreak()
= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [*SyncLab*])