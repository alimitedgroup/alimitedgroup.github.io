# Ordini

Nel _Minimum Viable Product#super[G]_, che _ALimitedGroup_ ha progettato ed implementato, e nei documenti annessi viene fatto riferimento ad una serie di termini, uno tra questi è: l'**Ordine**.

Viene subito da chiedersi: _Che cos'è un "Ordine"? E cosa intende ALimitedGroup per "Ordine"?_.

Un "Ordine" viene inteso come un qualsiasi invio di merci, unilateralmente, tra due entità; questo invio deve avere queste informazioni al suo interno:

- Un **Identificativo Unico** che rappresenta questo invio;

- La **Quantità** di merce che viene inviata da parte del mittente;

- L'**Indirizzo del Mittente** dell'invio di merci;

- L'**Indirizzo del Destinatario** dell'invio di merce.

Queste sono le informazioni che devono essere presenti nell'invio, perché senza di queste l'Ordine perderebbe di significato.

Inoltre, a differenza del "Trasferimento" e del "Riassortimento", quando viene preso in carico un Ordine#super[G], con i dati sopra citati, quest'ultimo deve essere convalidato se e solo se sia presente la quantità richiesta di merce (_Good_#super[G]) dall'Ordine.
In caso negativo, l'Ordine verrà posto nello stato di "Attesa" (_Hold_) fino a quando non ci sarà la quantità necessaria a soddisfarlo.
