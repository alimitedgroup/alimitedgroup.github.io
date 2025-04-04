// ignore

#import "../lib.typ": *

==== Oggetti comuni del microservizio

#figure(
  image("../../../../assets/drawio/notification_types.svg"),
  caption: [Tipi comuni a tutto il microservizio],
)

In Go, gli _import_ devono obbligatoriamente formare un grafo aciclico;
di conseguenza questi tipi, che vengono utilizzati sia dalla _business logic_ che dagli _adapter_,
sono stati estratti in un _package_ separato per evitare errori di compilazione.

===== AddStockUpdateCmd <AddStockUpdateCmd>

Questo tipo viene inviato alla _business logic_ quando arriva uno _stock update_ da registrare.

#struct(
  (
    ("+ WarehouseID: string", [Id del magazzino da cui proviene lo _stock update_]),
    ("+ Type: string", [Tipo dello stock update. Valori possibili: `add`, `remove`]),
    ("+ Goods: []StockGood", "Lista di aggiornamenti effettuati"),
    ("+ OrderID: string", "Id dell'ordine"),
    ("+ TransferID: string", "Id del trasferimento"),
    ("+ Timestamp: int64", [Istante temporale in cui lo stock update è avvenuto, come Unix Timestamp]),
  ),
  (),
)

===== StockGood

Una singola merce all'interno di un #typelink(<AddStockUpdateCmd>).

#struct(
  (
    ("+ ID: string", [Id della merce]),
    ("+ Quantity: int", [Nuova quantità presente *per il magazzino specificato*]),
    ("+ Delta: int", [Cambiamento nella quantità immagazzinata. Negativo se è diminuita]),
  ),
  (),
)

===== StockAlertEvent

Questo tipo rappresenta una notifica che sta per essere inviata.

#struct(
  (
    ("+ Id: string", "Id univoco della notifica"),
    ("+ Status: StockStatus", [Stato della notifica. Valori possibili: `Pending`, `Acknowledged`, e `Revoked`]),
    ("+ GoodID: string", "Id della merce a cui la notifica fa riferimento"),
    ("+ CurrentQuantity: int", "Quantità presente in magazzino al momento dell'invio della notifica"),
    ("+ Operator: string", "Operatore della notifica"),
    ("+ Threshold: int", "Quantità limite contro il quale è stata confrontata la quantità immagazzinata"),
    ("+ Timestamp: int64", "Istante temporale in cui il messaggio è stato inviato, come Unix Timestamp"),
    ("+ RuleId: string", "Id della regola che ha scatenato questa notifica"),
  ),
  (),
)

===== StockStatus

Questo tipo è una _type definition_ che punta al tipo primitivo `string`.
Nonostante ciò, i due tipi sono diversi, ed è possibile convertire da uno
all'altro solo inserndo un _cast_ esplicito.

===== QueryRule <QueryRule>

Questo tipo è utilizzato all'interno della _business logic_ per
descrivere le regole utilizzate per decidere quando mandare una notifica.

#struct(
  (
    ("+ GoodId: string", "L'id del Good (merce) che si vuole controllare"),
    ("+ Operator: string", [Operatore da usare. Valori possibili: `<`, `>`, `<=`, `>=`]),
    ("+ Threshold: int", "Quantità limite contro il quale verrà confrontata la quantità immagazzinata"),
  ),
  (),
)

===== QueryRuleWithId

Questo tipo è identico a #typelink(<QueryRule>), se non per l'aggiunta del campo `RuleId`.

#struct(
  (
    ("+ GoodId: string", "L'id del Good (merce) che si vuole controllare"),
    ("+ Operator: string", [Operatore da usare. Valori possibili: `<`, `>`, `<=`, `>=`]),
    ("+ Threshold: int", "Quantità limite contro il quale verrà confrontata la quantità immagazzinata"),
    ("+ RuleId: uuid.UUID", "Id della regola"),
  ),
  (),
)

===== EditRule

Questo tipo è identico a #typelink(<QueryRule>),
tranne per il fatto che tutti i suoi campi sono opzionali
(notare gli asterischi, che indicano puntatori, che in Go possono anche essere nulli).
L'intenzione è di rendere possibile evitare la modifica dei campi che l'utente non desidera ritoccare.

#struct(
  (
    ("+ GoodId: *string", "L'id del Good (merce) che si vuole controllare"),
    ("+ Operator: *string", [Operatore da usare. Valori possibili: `<`, `>`, `<=`, `>=`]),
    ("+ Threshold: *int", "Quantità limite contro il quale verrà confrontata la quantità immagazzinata"),
  ),
  (),
)

===== GetRuleResultResponse

Questo tipo è utilizzato come risultato dell'operazione `GetCurrentQuantityByGoodID()`,
proveniente dall'interfaccia // TODO.

#struct(
  (
    ("+ GoodID: string", [Identificatore della merce]),
    ("+ CurrentQuantity: int", [Quantità attuale della merce richiesta]),
    ("+ Err: error", [Eventuale errore incontrato durante l'operazione]),
  ),
  (),
)

