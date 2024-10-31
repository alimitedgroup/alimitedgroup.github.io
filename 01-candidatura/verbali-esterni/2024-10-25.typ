// VE 25-10-2024

#import "../../lib.typ": *
#show: doc => verbale(
  data: datetime(day: 25, month: 10, year: 2024),
  tipo: [esterno],
  regmodifiche: (
    ("2.0.0","31-10","Marco Piccoli","-","Approvazione esterna del documento da parte di M31",),
    ("1.0.0","29-10","Matteo Schievano","-","Modifiche minori, aggiunta della sezione per approvazione esterna e approvazione documento",),
    ("0.1.0", "29-10", "Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "25-10", "Samuele Esposito", "-", "Redazione documento"),
    ("0.0.1", "25-10", "Samuele Esposito", "-", "Creazione struttura e template del documento"),
  ),
  versione: [2.0.0],
  stato: [Approvato],
  presenze: (
    "Emanuele Artusi",
    "Lorenzo Stefani",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  odg: [Primo incontro di _ALimitedGroup_ con l'azienda #M31: vengono chiariti alcuni dubbi sorti durante la presentazione del capitolato],
  disambiguatore: [(M31)],
  doc,
)


= Informazioni generali

#inizio-verbale-esterno([*virtuale*], [*25 Ottobre 2024*], [*14.30*], [*15.10*], [_M31_])

- Chiarimenti sul capitolato
- Richiesta di maggiori dettagli sui requisiti
- Esposizione domande riguardante il progetto
- Ulteriori dubbi minori

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

#pagebreak()
= Resoconto

== Possibilità di modifiche all'architettura proposta

Durante la lettura del capitolato, il gruppo si era trovato in dubbio su alcuni punti dell'architettura e su alcuni passaggi dei requisiti.
Di conseguenza, è stato chiesto ad #M31 se l'architettura proposta nel capitolato fosse vincolante.\
La risposta, da parte di #M31, è stata negativa: l'azienda, essendo cliente, non è strettamente interessata all'architettura interna del software, ma piuttosto alla sua qualità e al rispetto dei requisiti.

== Chiarimenti su riassortimento predittivo

Uno dei requisiti del capitolato è l'implementazione di un "sistema per il riassortimento predittivo";
abbiamo richiesto ulteriori informazioni in particolare su questo punto.

Si richiede di implementare un sistema che possa, mediante _Machine Learning_ o tecnologie simili,
decidere quando e in che quantità effettuare spedizioni di materiale da un magazzino a un altro.\
Per realizzare questo sistema, è necessario poter in qualche modo osservare la quantità di materiale in uscita
e da quella determinare quando si rende necessario effettuare una spedizione.\
Chiaramente, l'obiettivo di questo sistema è evitare che un magazzino si trovi in carenza di materiale e, inoltre, minimizzare il numero di spedizioni.

== Piattaforma per le repository del progetto

Abbiamo richiesto su quale piattaforma sarebbero state conservate le repository del progetto.
L'azienda #M31 ha risposto che ci fornirà uno spazio apposito sulla piattaforma _BitBucket_.

== Assistenza da parte di #M31 al gruppo _ALimitedGroup_

Il gruppo e l'azienda sono coscienti che il capitolato sia molto complicato in termini di realizzazione.
L'azienda si è dimostrata, a tal proposito, disponibile, durante le fasi iniziali del progetto, a contrattare i requisiti.

Inoltre, per la parte di "Riassortimento predittivo",
#M31 metterà a disposizione un esperto in materia che ci potrà assistere.

#pagebreak()

= Esiti della riunione

La riunione con l'azienda _M31_ è stata esplicativa e formativa per tutti i presenti del gruppo, i rappresentati dell'azienda hanno risposto esaustivamente toccando punto per punto il progetto didattico. \
Tutti i presenti del gruppo _ALimitedGroup_ ringraziano l'azienda _M31_ e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante il _meeting_.

#pagebreak()
= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#text(font:"Futura")[M31]])
#figure(image("../../assets/firma_m31.png", width: 45%))