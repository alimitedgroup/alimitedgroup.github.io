// ignore

#import "../lib.typ": *

==== _Adapter-out_ e _Port-out_

#figure(
  image("../../../../assets/drawio/apigateway_adapterout.svg"),
  caption: [_Adapter-out_],
)

Questi tipi sono stati utilizzati per realizzare la parte di "uscita" dell'architettura esagonale.
Nella sezione corrente sono inclusi i tipi dei _package_ `adapterout` e `portout`.

===== AuthenticationAdapter <AuthenticationAdapter>

_Adapter-out_ che consente l'interazione con il microservizio di autenticazione.

#struct(
  (
    ("- broker: *broker.NatsMessageBroker", [Necessario per comunicare con _NATS_.]),
    ("- logger: *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ GetToken(string): (types.UserToken, error)", [Ritorna un _token_ per l'_username_ fornito, se è valido]),
    ("+ GetUsername(types.ParsedToken): (string, error)", [Ritorna l'_username_ associato al _token_ fornito]),
    ("+ GetRole(types.ParsedToken): (types.UserRole, error)", [Ritorna il ruolo associato al _token_ fornito]),
    (
      "+ VerifyToken(types.UserToken): (types.ParsedToken, error)",
      [Verifica che un token sia valido, e recupera i dati ad esso associati],
    ),
  ),
)
===== CatalogAdapterOut <CatalogAdapterOut>

_Adapter-out_ che consente l'interazione con il microservizio catalog.

#struct(
  (
    ("- broker: *broker.NatsMessageBroker", [Necessario per comunicare con _NATS_.]),
  ),
  (
    ("+ ListGoods(): (map[string]dto.Good, error)", [Consente di recuperare la lista di merci]),
    (
      "+ ListStock(): (map[string]int64, error)",
      [Consente di recuperare la disponibilità globale per ogni merce],
    ),
    ("+ ListWarehouses(): (map[string]dto.Warehouse, error)", [Ritorna la lista di magazzini]),
    ("+ AddStock(string, string, int64): error", [Aggiunge disponibilità ad un magazzino]),
    ("+ RemoveStock(string, string, int64): error", [Rimuove disponibilità ad un magazzino]),
    ("+ CreateGood(context.Context, string, string): (string, error)", [Crea una merce]),
    ("+ UpdateGood(context.Context, string, string, string): error", [Aggiorna una merce]),
  ),
)
===== OrderAdapterOut <OrderAdapterOut>

_Adapter-out_ che consente l'interazione con il microservizio degli ordini.

#struct(
  (
    ("- broker: *broker.NatsMessageBroker", [Necessario per comunicare con _NATS_.]),
  ),
  (
    ("+ CreateOrder(request.CreateOrderRequestDTO): (response.OrderCreateInfo, error)", [Consente di creare un ordine]),
    ("+ GetAllOrders(): ([]response.OrderInfo, error)", [Consente di recuperare la lista di ordini]),
    (
      "+ CreateTransfer(request.CreateTransferRequestDTO): (response.TransferCreateInfo, error)",
      [Consente di creare un trasferimento],
    ),
    ("+ GetAllTransfers(): ([]response.TransferInfo, error)", [Consente di recuperare la lista di trasferimenti]),
  ),
)

===== NotificationsAdapterOut <NotificationsAdapterOut>

_Adapter-out_ che consente l'interazione con il microservizio delle notifiche.

#struct(
  (
    ("- broker: *broker.NatsMessageBroker", [Necessario per comunicare con _NATS_.]),
  ),
  (
    ("+ CreateQuery(dto.Rule): (string, error)", [Permette di creare una nuova regola]),
    ("+ GetQueries(): ([]types.QueryRuleWithId, error)", [Permette di ottenere la lista di regole]),
  ),
)

===== OrderPortOut <OrderPortOut>

_Port-out_ che consente la comunicazione col microservizio di gestione degli ordini.

#interface(
  ("+ CreateOrder(request.CreateOrderRequestDTO): (response.OrderCreateInfo, error)", [Consente di creare un ordine]),
  ("+ GetAllOrders(): ([]response.OrderInfo, error)", [Consente di recuperare la lista di ordini]),
  (
    "+ CreateTransfer(request.CreateTransferRequestDTO): (response.TransferCreateInfo, error)",
    [Consente di creare un trasferimento],
  ),
  ("+ GetAllTransfers(): ([]response.TransferInfo, error)", [Consente di recuperare la lista di trasferimenti]),
)

===== CatalogPortOut <CatalogPortOut>

_Port-out_ che consente la comunicazione col microservizio di gestione del catalogo.

#interface(
  ("+ ListGoods(): (map[string]dto.Good, error)", [Consente di recuperare la lista di merci]),
  (
    "+ ListStock(): (map[string]int64, error)",
    [Consente di recuperare la disponibilità globale per ogni merce],
  ),
  ("+ ListWarehouses(): (map[string]dto.Warehouse, error)", [Ritorna la lista di magazzini]),
  ("+ AddStock(string, string, int64): error", [Aggiunge disponibilità ad un magazzino]),
  ("+ RemoveStock(string, string, int64): error", [Rimuove disponibilità ad un magazzino]),
  ("+ CreateGood(context.Context, string, string): (string, error)", [Crea una merce]),
  ("+ UpdateGood(context.Context, string, string, string): error", [Aggiorna una merce]),
)

===== NotificationPortOut <NotificationPortOut>

_Port-out_ che consente la comunicazione col microservizio di notifica.

#interface(
  ("+ CreateQuery(dto.Rule): (string, error)", [Permette di creare una nuova regola]),
  ("+ GetQueries(): ([]types.QueryRuleWithId, error)", [Permette di ottenere la lista di regole]),
)

===== AuthenticationPortOut <AuthenticationPortOut>

_Port-out_ che consente la comunicazione col microservizio di autenticazione.

#interface(
  ("+ GetToken(string): (types.UserToken, error)", [Ritorna un _token_ per l'_username_ fornito, se è valido]),
  ("+ GetUsername(types.ParsedToken): (string, error)", [Ritorna l'_username_ associato al _token_ fornito]),
  ("+ GetRole(types.ParsedToken): (types.UserRole, error)", [Ritorna il ruolo associato al _token_ fornito]),
  (
    "+ VerifyToken(types.UserToken): (types.ParsedToken, error)",
    [Verifica che un token sia valido, e recupera i dati ad esso associati],
  ),
)
