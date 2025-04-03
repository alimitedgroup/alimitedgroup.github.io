// ignore

#import "../lib.typ": *

=== API Gateway <api_gateway>

Il microservizio *API Gateway* permette di interagire con il Sistema,
esponendo un API HTTP e implementando
confrontandola con una quantità di riferimento impostata dall'utente.
Se la quantità configurata dell'utente non è soddisfatta, allora viene inviata una notifica in uno stream dedicato,
seguita da un secondo messaggio quando la quantità ritorna nei livelli nominali.

#include "types.typ"
#include "business.typ"
