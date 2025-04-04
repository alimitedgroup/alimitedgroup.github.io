// ignore

#import "../lib.typ": *

==== _Adapter-out_

#figure(image("../../../../assets/drawio/apigateway_adapterout.svg"), caption: [_Adapter-out_])

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
