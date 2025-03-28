# Riassortimento

Nel _Minimum Viable Product#super[G]_, che _ALimitedGroup_ ha progettato ed implementato, e nei documenti annessi viene fatto riferimento ad una serie di termini, uno tra questi è: il **Riassortimento**.

Viene subito da porsi la seguente domanda:
_Cosa si intende per Riassortimento? E cosa ALimitedGroup intende con Riassortimento?_

Con il termine "Riassortimento" si intende il processo per cui, tramite il Sistema, si viene a conoscenza della scarsità di una determinata merce (_Good_#super[G]) in uno specifico magazzino (_Warehouse_#super[G]), ovvero che la quantità disponibile alla vendita di quella merce è sottostante alla soglia minima impostata dall'Admin Globale.
Questo provoca, sempre tramite il Sistema, la notifica all'Admin Globale e successivamente il suggerimento di aumentare la quantità (_Stock_#super[G]) disponibile, usufruendo del servizio di trasferimento#super[G] da parte del magazzino più vicino che dispone di un surplus della merce in questione, favorendo l'approvvigionamento di quest'ultima e l'ammortamento dei costi.

A differenza dell'Ordine e del l'operazione di "Riassortimento" delle merci avviene **se e solo se** viene notificato, come detto in precedenza, il superamento della soglia minima della capienza in un magazzino.
