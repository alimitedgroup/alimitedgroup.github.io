// ignore

#import "../lib.typ": *

==== _Adapter-in_ e _Port-in_ <adapterin_portin>

#figure(
  image("../../../../assets/drawio/notification_adapterin.svg"),
  caption: [_Adapter-in_ di Notification],
)

Questi tipi sono stati utilizzati per realizzare la parte di "ingresso" dell'architettura esagonale.
Nella sezione corrente sono inclusi i tipi dei _package_ `adapterin` e `portin`.

===== StockReceiverParams

Parametri in ingresso necessari per costruire un'istanza di #typelink(<StockUpdateReceiver>).

#struct(
  (
    ("+ StockPort portin.StockUpdates", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("+ Logger *zap.Logger", [Necessario per raccogliere i log]),
    ("+ Meter metric.Meter", [Necessario per raccogliere le metriche]),
  ),
  (),
)

===== StockUpdateReceiver <StockUpdateReceiver>

Questo _Adapter-in_ è incaricato di ricevere da _NATS_ gli _stock update_.
Implementa l'interfaccia #typelink(<JsController>).

#struct(
  (
    ("- stockPort portin.StockUpdates", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    (
      "+ Handle(context.Context, jetstream.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Stream() jetstream.StreamConfig",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)

===== JsController <JsController>

Questa interfaccia accomuna tutti i _controller_ che si interfacciano con _Jetstream_,
in contrapposizione a quelli che si interfacciano con _NATS Core_, rappresentati da #typelink(<Controller>).

#interface(
  (
    "+ Handle(context.Context, jetstream.Msg) error",
    [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
  ),
  (
    "+ Stream() jetstream.StreamConfig",
    [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
  ),
)

===== AddQueryController <AddQueryController>

Questo controller gestisce l'aggiunta di regole al microservizio.
Implementa l'interfaccia #typelink(<Controller>).

#struct(
  (
    ("- rulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewAddQueryController(QueryControllersParams) *AddQueryController", [Costruttore della struttura]),
    (
      "+ Handle(context.Context, *nats.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Subject() broker.Subject",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)

===== GetQueryController <GetQueryController>

Questo controller gestisce la modifica di regole del microservizio.
Implementa l'interfaccia #typelink(<Controller>).

#struct(
  (
    ("- rulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewGetQueryController(QueryControllersParams) *GetQueryController", [Costruttore del tipla struttura]),
    (
      "+ Handle(context.Context, *nats.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Subject() broker.Subject",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)

===== ListQueriesController <ListQueriesController>

Questo controller gestisce la modifica di regole del microservizio.
Implementa l'interfaccia #typelink(<Controller>).

#struct(
  (
    ("- rulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewListQueriesController(QueryControllersParams) *ListQueriesController", [Costruttore del tipla struttura]),
    (
      "+ Handle(context.Context, *nats.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Subject() broker.Subject",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)

===== EditQueryController <EditQueryController>

Questo controller gestisce la modifica di regole del microservizio.
Implementa l'interfaccia #typelink(<Controller>).

#struct(
  (
    ("- rulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewEditQueryController(QueryControllersParams) *EditQueryController", [Costruttore del tipla struttura]),
    (
      "+ Handle(context.Context, *nats.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Subject() broker.Subject",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)


===== RemoveQueryController <RemoveQueryController>

Questo controller gestisce la modifica di regole del microservizio.
Implementa l'interfaccia #typelink(<Controller>).

#struct(
  (
    ("- rulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewRemoveQueryController(QueryControllersParams) *RemoveQueryController", [Costruttore del tipla struttura]),
    (
      "+ Handle(context.Context, *nats.Msg) error",
      [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
    ),
    (
      "+ Subject() broker.Subject",
      [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
    ),
  ),
)

===== Controller <Controller>

Questa interfaccia accomuna tutti i _controller_ che si interfacciano con _NATS Core_,
in contrapposizione a quelli che si interfacciano con _Jetstream_, rappresentati da #typelink(<JsController>).

#interface(
  (
    "+ Handle(context.Context, *nats.Msg) error",
    [Questo metodo viene chiamato quando l'_adapter_ riceve un messaggio],
  ),
  (
    "+ Subject() broker.Subject",
    [Questo metodo viene chiamato in fase di avvio del software, per capire quali messaggi esso debba gestire],
  ),
)

===== QueryControllersParams

Parametri in ingresso necessari per costruire un'istanza di
#typelink(<AddQueryController>),
#typelink(<GetQueryController>),
#typelink(<ListQueriesController>),
#typelink(<EditQueryController>), o
#typelink(<RemoveQueryController>).

#struct(
  (
    ("+ RulesPort portin.QueryRules", [La _Port-in_ che verrà utilizzata per parlare con la _business logic_]),
    ("+ Logger *zap.Logger", [Necessario per raccogliere i log]),
    ("+ Meter metric.Meter", [Necessario per raccogliere le metriche]),
  ),
  (),
)
