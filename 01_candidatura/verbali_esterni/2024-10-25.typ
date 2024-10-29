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
4. Assistenza da parte di #M31 al gruppo _ALimitedGroup_

= Resoconto

== Possibilità di modifiche all'architettura proposta

Durante la lettura del capitolato, il gruppo si era trovato in dubbio su alcuni punti dell'architettura e su alcuni passaggi dei requisiti.
Di conseguenza, è stato richiesto ad #M31 se l'architettura proposta nel capitolato fosse vincolante;
la risposta è stata negativa: come cliente, l'azienda non è strettamente interessata all'architettura interna del software,
ma piuttosto alla sua qualità e al rispetto dei requisiti.

== Chiarimenti su riassortimento predittivo

Uno dei requisiti del capitolato è l'implementazione di un "sistema per il riassortimento predittivo";
abbiamo richiesto ulteriori informazioni in particolare su questo punto.

Si richiede di implementare un sistema che possa, mediante _Machine Learning_ o tecnologie simili,
decidere quando e in che quantità effettuare spedizioni di materiale da un magazzino a un'altro.
Per realizzare questo sistema, è necessario poter in qualche modo osservare la quantità di materiale in uscita
e da quella determinare quando si rende necessario effettuare una spedizione.
Chiaramente, l'obiettivo di questo sistema è evitare che un magazzino si trovi in carenza di materiale,
e minimizzare il numero di spedizioni.

== Piattaforma per le repository del progetto

Abbiamo richiesto su quale piattaforma sarebbero state conservate le repository del progetto.
#M31 ha risposto che ci fornirà uno spazio apposito su piattaforma _BitBucket_

== Supporto da parte di #M31 al gruppo _ALimitedGroup_

Il gruppo e l'azienda sono coscienti che il capitolato sia molto complicato di realizzazione;
di conseguenza, l'azienda si è dimostrata disponibile, durante le fasi iniziali del progetto,
a contrattare i requisiti.

Inoltre, per la parte di "Riassortimento predittivo",
#M31 metterà a disposizione un esperto in materia che ci potrà assistere.

#pagebreak()

= Esiti della riunione

La riunione con l'azienda _M31_ è stata esplicativa e formativa per tutti i presenti del gruppo, i rappresentati dell'azienda hanno risposto esaustivamente toccando punto per punto il progetto didattico. \
Tutti i presenti del gruppo _ALimitedGroup_ ringraziano l'azienda _M31_ e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante il _meeting_.
