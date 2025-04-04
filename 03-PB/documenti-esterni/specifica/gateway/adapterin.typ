// ignore

#import "../lib.typ": *

==== _Adapter-in_ e _Port-in_

#figure(
  image("../../../../assets/drawio/apigateway_adapterin.svg"),
  caption: [_Adapter-in_],
)

Questi tipi sono stati utilizzati per realizzare la parte di "ingresso" dell'architettura esagonale.
Nella sezione corrente sono inclusi i tipi dei _package_ `adapterin` e `portin`.

===== adapterin.HttpConfig <HttpConfig>

Configurazione del server HTTP.

#struct(
  (
    (
      "+ Host string",
      [Indirizzo IP su cui esporre il server HTTP. Utilizzare `0.0.0.0` per esporre su tutti gli indirizzi],
    ),
    ("+ Port int", [Porta su cui esporre il server HTTP. Esempio: `8080`]),
  ),
  (
    ("+ FromEnv() (*HttpConfig, error)", [Legge la configurazione dalle variabili d'ambiente]),
  ),
)

===== adapterin.HttpParams <HttpParams>

Parametri in ingresso necessari per costruire un'istanza di #typelink(<HTTPHandler>).

#struct(
  (
    ("+ Auth portin.Auth", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
    ("+ Lifecycle fx.Lifecycle", [Elemento che consente di eseguire routine di avvio e spegnimento del server HTTP]),
    ("+ Listener *net.TCPListener", [Un _socket_ in ascolto]),
    ("+ Logger *zap.Logger", [Necessario per raccogliere i _log_]),
    ("+ Meter metric.Meter", [Necessario per raccogliere le metriche]),
  ),
  (),
)

===== adapterin.HTTPHandler <HTTPHandler>

Componente che gestisce le richieste HTTP in ingresso.

#struct(
  (
    ("+ Engine *gin.Engine", [Componente della libreria HTTP _gin_]),
    ("+ Authenticate gin.HandlerFunc", [_middleware_ che verifica l'autenticazione]),
  ),
  (
    ("+ NewHTTPHandler(HttpParams) *HTTPHandler", [Costruttore della struttura]),
  ),
)



===== adapterin.Controller

Questa interfaccia accomuna tutti i _controller_.

#interface(
  ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
  ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
  ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
  (
    "+ RequiresAuth() bool",
    [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
  ),
  (
    "+ AllowedRoles() []types.UserRole",
    [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
  ),
)

===== adapterin.UpdateGoodController <UpdateGoodController>

Questo _adapter_ si occupa dell'aggiornamento delle merci.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewUpdateGoodController(portin.Warehouses) *UpdateGoodController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.GetTransfersController <GetTransfersController>

Questo _adapter_ si occupa di recuperare i trasferimenti.

#struct(
  (
    ("- order portin.Order", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewGetTransfersController(portin.Order) *GetTransfersController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.RemoveStockController <RemoveStockController>

Questo _adapter_ si occupa di rimuovere disponibilità da un magazzino.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewRemoveStockController(portin.Warehouses) *RemoveStockController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.GetQueriesController <GetQueriesController>

Questo _adapter_ si occupa di recuperare le regole di notifica.

#struct(
  (
    (
      "- notifications portin.Notifications",
      [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_],
    ),
    ("- Logger *zap.Logger", [Necessario per raccogliere i _log_]),
  ),
  (
    (
      "+ NewGetQueriesController(portin.Notifications, *zap.Logger) *GetQueriesController",
      [Costruttore della struttura],
    ),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.GetOrdersController <GetOrdersController>

Questo _adapter_ si occupa di recuperare gli ordini.

#struct(
  (
    ("- order portin.Order", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewGetOrdersController(portin.Order) *GetOrdersController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.LoginController <LoginController>

Questo _adapter_ si occupa della procedura di _login_.

#struct(
  (
    ("- broker *broker.NatsMessageBroker", [Necessario per comunicare con _NATS_.]),
    ("- business portin.Auth", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewLoginController(*broker.NatsMessageBroker, portin.Auth) *LoginController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.ListWarehousesController <ListWarehousesController>

Questo _adapter_ si occupa di recuperare la lista di magazzini.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewListWarehousesController(portin.Warehouses) *ListWarehousesController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.AuthHealthCheckController <AuthHealthCheckController>

Questo _adapter_ si occupa di ritornare all'utente il suo ruolo attuale.

#struct(
  (
    ("- business portin.Auth", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewAuthHealthCheckController(portin.Auth) *AuthHealthCheckController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.HealthCheckController <HealthCheckController>

Questo _adapter_ si occupa di ritornare una risposta che segnali il corretto funzionamento del microservizio.

#struct(
  (),
  (
    ("+ NewHealthCheckController() *HealthCheckController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.GetGoodsController <GetGoodsController>

Questo _adapter_ si occupa di recuperare le merci.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewGetGoodsController(portin.Warehouses) *GetGoodsController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.CreateTransferController <CreateTransferController>

Questo _adapter_ si occupa della creazione di trasferimenti.

#struct(
  (
    ("- order portin.Order", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewCreateTransferController(portin.Order) *CreateTransferController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.CreateQueryController <CreateQueryController>

Questo _adapter_ si occupa della creazione di regole di notifica.

#struct(
  (
    (
      "- notifications portin.Notifications",
      [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_],
    ),
    ("- Logger *zap.Logger", [Necessario per raccogliere i _log_]),
  ),
  (
    (
      "+ NewCreateQueryController(portin.Notifications, *zap.Logger) *CreateQueryController",
      [Costruttore della struttura],
    ),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.CreateOrderController <CreateOrderController>

Questo _adapter_ si occupa della creazione di ordini.

#struct(
  (
    ("- order portin.Order", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewCreateOrderController(portin.Order) *CreateOrderController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.CreateGoodController <CreateGoodController>

Questo _adapter_ si occupa della creazione di merci.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewCreateGoodController(portin.Warehouses) *CreateGoodController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)

===== adapterin.AddStockController <AddStockController>

Questo _adapter_ si occupa dell'aggiunta di disponibilità ad un magazzino.

#struct(
  (
    ("- warehouses portin.Warehouses", [Una _port-in_ che verrà utilizzata per comunicare con la _business logic_]),
  ),
  (
    ("+ NewAddStockController(portin.Warehouses) *AddStockController", [Costruttore della struttura]),
    ("+ Handler() gin.HandlerFunc", [Ritorna una funzione che può gestire le richieste in ingresso]),
    ("+ Pattern() string", [Ritorna l'_URL_ che questo _controller_ gestisce]),
    ("+ Method() string", [Ritorna il metodo che questo _controller_ gestisce]),
    (
      "+ RequiresAuth() bool",
      [Ritorna _true_ se le richieste effettuate a questo _controller_ devono essere autenticate],
    ),
    (
      "+ AllowedRoles() []types.UserRole",
      [Ritorna la lista dei ruoli che possono effettuare richieste a questo _controller_. Se RequresAuth() è falso, questo metodo non verrà mai chiamato],
    ),
  ),
)
