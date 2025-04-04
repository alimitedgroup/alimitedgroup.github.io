// ignore

#import "../lib.typ": *

===== BusinessParams <BusinessParams>

#figure(image("../../../../assets/drawio/apigateway_business.svg"), caption: [_Business_])

Parametri in ingresso necessari per costruire un'istanza di #typelink(<Business>).

#struct(
  (
    (
      "+ Auth: portout.AuthenticationPortOut",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con altri componenti],
    ),
    (
      "+ Catalog: portout.CatalogPortOut",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con altri componenti],
    ),
    (
      "+ Order: portout.OrderPortOut",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con altri componenti],
    ),
    (
      "+ Notfication: portout.NotificationPortOut",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con altri componenti],
    ),
    ("+ Logger: *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (),
)

===== business.Business <Business>

La _business logic_. Coordina tutte le operazioni del microservizio.
Implementa le _port-in_
#typelink(<Auth>),
#typelink(<Notifications>),
#typelink(<Order>) e
#typelink(<Warehouses>).

#struct(
  (
    (
      "- auth: portout.AuthenticationPortOut",
      [La _Port-out_ che verrà utilizzata per implementare il funzionamento della _business logic_],
    ),
    (
      "- catalog: portout.CatalogPortOut",
      [La _Port-out_ che verrà utilizzata per implementare il funzionamento della _business logic_],
    ),
    (
      "- order: portout.OrderPortOut",
      [La _Port-out_ che verrà utilizzata per implementare il funzionamento della _business logic_],
    ),
    (
      "- notification: portout.NotificationPortOut",
      [La _Port-out_ che verrà utilizzata per implementare il funzionamento della _business logic_],
    ),
    ("- logger: *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewBusiness(BusinessParams): *Business", [Costruttore della struttura]),
    // Auth
    ("+ Login(string): (types.LoginResult, error)", [Dato un username, autentica l'utente]),
    (
      "+ ValidateToken(string): (types.UserData, error)",
      [Valida un _token_ fornito dall'utente, per assicurarsi che sia valido],
    ),
    // Notifications
    ("+ CreateQuery(string, string, int): (string, error)", [Crea una regola di notifica]),
    ("+ GetQueries(): ([]dto.Query, error)", [Ritorna le regole di notifica definite]),
    // Order
    ("+ CreateOrder(string, string, string, map[string]int64): (string, error)", [Permette di creare un ordine]),
    ("+ GetOrders(): ([]dto.Order, error)", [Ritorna la lista di ordini]),
    ("+ CreateTransfer(string, string, map[string]int64): (string, error)", [Permette di creare un trasferimento]),
    ("+ GetTransfers(): ([]dto.Transfer, error)", [Ritorna la lista di trasferimenti]),
    // Warehouses
    ("+ GetWarehouseByID(int64): (dto.Warehouse, error)", [Ritorna le informazioni di un magazzino, dato il suo ID]),
    ("+ GetWarehouses(): ([]types.WarehouseOverview, error)", [Ritorna le informazioni di tutti i magazzini]),
    ("+ GetGoods(): ([]dto.GoodAndAmount, error)", [Ritorna le informazioni di tutte le merci]),
    ("+ CreateGood(context.Context, string, string): (string, error)", [Crea una merce]),
    ("+ UpdateGood(context.Context, string, string, string): error", [Aggiorna le informazioni di una merce]),
    ("+ AddStock(string, string, int64): error", [Rifornisce un magazzino di una particolare merce]),
    ("+ RemoveStock(string, string, int64): error", [Estrae una certa quantità di merce da un magazzino]),
  ),
)

===== portin.Auth <Auth>

Questa _port-in_ si occupa di gestire le richieste che necessitano di autenticazione.

#interface(
  ("+ Login(string): (types.LoginResult, error)", [Dato un username, autentica l'utente]),
  (
    "+ ValidateToken(string): (types.UserData, error)",
    [Valida un _token_ fornito dall'utente, per assicurarsi che sia valido],
  ),
)

===== portin.Notifications <Notifications>

Questa _port-in_ si occupa di gestire le richieste relative alle notifiche.

#interface(
  ("+ CreateQuery(string, string, int): (string, error)", [Crea una regola di notifica]),
  ("+ GetQueries(): ([]dto.Query, error)", [Ritorna le regole di notifica definite]),
)

===== portin.Order <Order>

Questa _port-in_ si occupa di gestire le richieste relative agli ordini.

#interface(
  ("+ CreateOrder(string, string, string, map[string]int64): (string, error)", [Permette di creare un ordine]),
  ("+ GetOrders(): ([]dto.Order, error)", [Ritorna la lista di ordini]),
  ("+ CreateTransfer(string, string, map[string]int64): (string, error)", [Permette di creare un trasferimento]),
  ("+ GetTransfers(): ([]dto.Transfer, error)", [Ritorna la lista di trasferimenti]),
)

===== portin.Warehouses <Warehouses>

Questa _port-in_ si occupa di gestire le richieste relative ai magazzini.

#interface(
  ("+ GetWarehouseByID(int64): (dto.Warehouse, error)", [Ritorna le informazioni di un magazzino, dato il suo ID]),
  ("+ GetWarehouses(): ([]types.WarehouseOverview, error)", [Ritorna le informazioni di tutti i magazzini]),
  ("+ GetGoods(): ([]dto.GoodAndAmount, error)", [Ritorna le informazioni di tutte le merci]),
  ("+ CreateGood(context.Context, string, string): (string, error)", [Crea una merce]),
  ("+ UpdateGood(context.Context, string, string, string): error", [Aggiorna le informazioni di una merce]),
  ("+ AddStock(string, string, int64): error", [Rifornisce un magazzino di una particolare merce]),
  ("+ RemoveStock(string, string, int64): error", [Estrae una certa quantità di merce da un magazzino]),
)
