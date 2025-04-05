// ignore

#import "../lib.typ": *

==== Oggetti comuni del microservizio

#figure(
  image("../../../../assets/drawio/apigateway_types.svg"),
  caption: [Tipi comuni a tutto il microservizio API Gateway],
)

In Go, gli _import_ devono obbligatoriamente formare un grafo aciclico;
di conseguenza questi tipi, che vengono utilizzati sia dalla _business logic_ che dagli _adapter_,
sono stati estratti in un _package_ separato per evitare errori di compilazione.

===== types.UserRole <UserRole>

Questa enumerazione rappresenta il ruolo assegnato ad un utente.

#enum(
  (
    ("RoleNone", [Nessun ruolo. Generalmente usato per indicare errori di autenticazione]),
    ("RoleLocalAdmin", [_admin_ locale]),
    ("RoleGlobalAdmin", [_admin_ globale]),
    ("RoleClient", [cliente]),
  ),
  (
    ("+ String() string", [Ritorna la rappresentazione in stringa di questo ruolo]),
    ("+ FromString(string) UserRole", [Effettua il _parsing_ della stringa fornita]),
  ),
)

===== types.UserToken <UserToken>

Questo tipo rappresenta un _token_ di un utente autenticato.

#struct(
  (
    ("Inner string", [Rappresentazione in stringa del _token_]),
  ),
  (),
)

===== types.ParsedToken <ParsedToken>

Questo tipo "opaco" è in realtà un'interfaccia senza nessun metodo.
Dato che solo l'_adapter-in_ dell'autenticazione può costruire un'istanza di `ParsedToken`,
Questo design permette alla _business logic_ di operare su di esso
senza conoscere la rappresentazione interna dei _token_.
Così facendo, in futuro sarebbe possibile cambiare completamente tipologia di _token_
senza dover modificare la _business logic_.

===== types.UserData <UserData>

Questo tipo rappresenta le informazioni di un utente.

#struct(
  (
    ("+ Username string", [_Username_ dell'utente]),
    ("+ Role UserRole", [Ruolo dell'utente]),
  ),
  (),
)

===== types.LoginResult <LoginResult>

Questo tipo rappresenta il risultato di un'operazione di _login_.

#struct(
  (
    ("+ Token UserToken", [Un _token_ che identifica l'utente]),
    ("+ Role UserRole", [Il ruolo dell'utente]),
  ),
  (),
)

===== types.WarehouseOverview <WarehouseOverview>

Questo tipo raccoglie le informazioni ad alto livello dei magazzini.

#struct(
  (
    ("+ ID string", [Identificatore del magazzino]),
  ),
  (),
)
