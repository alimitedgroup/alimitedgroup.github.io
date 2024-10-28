// VE 25-10-2024

#import "../../lib.typ": *
#show: doc => verbale(
  data: datetime(day: 25, month: 10, year: 2024),
  tipo: [esterno],
  regmodifiche: (("0.0.1", "25-10", "Samuele Esposito", "-", "Redazione documento"),),
  versione: [0.0.1],
  stato: [Redatto],
  presenze: (
    "Samuele Esposito",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Emanuele Artusi",
    "Sara Ferraro",
  ),
  odg: [Primo incontro di _ALimitedGroup_ con l'azienda _M31_: vengono chiariti alcuni dubbi sorti durante la presentazione del capitolato],
  doc,
)


= Informazioni generali

#inizio-verbale-esterno([*virtuale*], [*25 Ottobre 2024*], [*14.30*], [*15.10*], [_M31_])

- Chiarimenti sul capitolato
- Richiesta di maggiori dettagli sui requisiti
- Esposizione domande riguardante il progetto

A questo incontro, svoltosi tramite la piattaforma _Microsoft Teams_,
hanno partecipato per conto dell'azienda _M31_ i seguenti rappresentanti:
- Luca Cossaro
- Cristian Pîrlog

#pagebreak()

= Motivo della riunione

Il gruppo, visto il documento di presentazione del capitolato,
ha richiesto ulteriori informazioni sui seguenti punti chiave:
1. Possibilità di modifiche all'architettura proposta
2. Chiarimenti su riassortimento predittivo
3. Piattaforma per le repository del progetto
4.

= Resoconto

== Punti d'interesse e pubblicità personalizzate

L'azienda ha chiarito che il sistema genererà un messaggio solo quando l'utente entrerà nel raggio di azione predefinito.\
L'_LLM_ verrà interrogato una sola volta per ciascun evento, evitando interazioni ridondanti e ottimizzando le risorse.\
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

La riunione con l'azienda _M31_ è stata esplicativa e formativa per tutti i presenti del gruppo, i rappresentati dell'azienda hanno risposto esaustivamente toccando punto per punto il progetto didattico. \
Tutti i presenti del gruppo _ALimitedGroup_ ringraziano l'azienda _M31_ e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante il _meeting_.
