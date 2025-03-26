# Merce

Nel _Minimum Viable Product#super[G]_, che _ALimitedGroup_ ha progettato ed implementato, e nei documenti annessi viene fatto riferimento ad una serie di termini, uno tra questi è: la **Merce**.

Viene subito da porsi la seguente domanda:
_Cosa si intende per Merce? E cosa ALimitedGroup intende con Merce?_

La risposta è la seguente: _ALimitedGroup_ con il termine "Merce", più appropriamente chiamato _Good_#super[G] ,intende una t-upla, ovvero una sequenza di valori specifici ed univoci, che identifichi tale Merce su cui stiamo lavorando.
All'interno di questa sequenza di valori possiamo trovare:

- L'**Identificatore Univoco** della merce;

- Il **Nome** della merce;

- I **Metadati** associati alla merce.

Quest'ultimi, all'interno dell'MVP, vengono codificati come stringa tramite lo standard _Unicode UTF-8_; questi metadati sono utili per l'utilizzo corretto dell'MVP realizzato.
Di seguito sono riportati alcuni esempi pratici nell'utilizzo dei metadati:

- **Salvare** l'identificatore unico che ha una determinata merce nel sito del fornitore, e da cui devo rifornirmi per aumentare lo _stock_#super[G] nel magazzino;

- **Salvare** l'ID che ha una merce nel sito di un cliente, per effettuare un trasferimento#super[G] a quest'ultimo;

- **Salvare** quando è avvenuto l'ultimo _restock_ nel magazzino di una merce selezionata.

Questi sono solo alcuni esempi, ma potremmo scriverne ancora per comprenderne ulteriormente l'importanza. Perciò, _ALimitedGroup_ consiglia di salvare i metadati presenti all'interno della merce in un _file_ .json.
<!---Spiegare cosa intendiamo noi con "merce" (un good#super[G] ,quindi una tupla con ID, nome, metadati extra).

Specificare che i metadati sono salvati come stringa utf-8, quindi consigliare di salvarli in JSON.

Fornire alcuni esempi di utilizzo dei metadati:
- Salvare l'ID che la merce ha nel sito del fornitore
- Salvare l'ID che la merce ha nel sito di un cliente
- Salvare quando è avvenuto l'ultimo restock di una merce
- ecc.-->
