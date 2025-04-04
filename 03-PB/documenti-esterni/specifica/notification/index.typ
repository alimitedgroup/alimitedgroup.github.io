// ignore

#import "../lib.typ": *

=== Notification <notification>

Il microservizio *Notification* si occupa di controllare periodicamente la quantità di merce presente nel sistema,
confrontandola con una quantità di riferimento impostata dall'utente.
Se la quantità configurata dell'utente non è soddisfatta, allora viene inviata una notifica in uno stream dedicato,
seguita da un secondo messaggio quando la quantità ritorna nei livelli nominali.

#include "comuni.typ"
#include "adapterin.typ"
#include "adapterout.typ"
#include "business.typ"
