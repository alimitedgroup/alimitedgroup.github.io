// ignore

#import "../lib.typ": *

==== _Adapter-out_ e _Port-out_ <adapterout_portout>

#figure(
  image("../../../../assets/drawio/notification_adapterout.svg"),
  caption: [_Adapter-out_ di Notification],
)

Questi tipi sono stati utilizzati per realizzare la parte di "uscita" dell'architettura esagonale.
Nella sezione corrente sono inclusi i tipi dei _package_ `adapterout` e `portout`.

===== AdapterParams

Parametri in ingresso necessari per costruire un'istanza di #typelink(<NotificationAdapter>).

#struct(
  (
    ("- Logger *zap.Logger", [Necessario per raccogliere i log]),
    ("+ InfluxClient: influxdb2.Client", [_Client_ per la connessione a _InfluxDB_]),
    (
      "+ RuleRepo portout.RuleRepository",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con questo componente],
    ),
    (
      "+ Broker *broker.NatsMessageBroker",
      [Astrazione che contiene le connessioni a _NATS Core_ e _Jetstream_, oltre a logica per gestire l'iscrizione a _subject_ o _stream_],
    ),
    ("+ Config *config.NotificationConfig", [Configurazione del microservizio]),
  ),
  (),
)

===== NotificationAdapter <NotificationAdapter>

_Adapter-out_ che realizza buona parte delle comunicazioni verso l'esterno effettuate dal microservizio.
Implementa le interfacce
#typelink(<RuleQueryRepository>),
#typelink(<StockEventPublisher>) e
#typelink(<StockRepository>).

#struct(
  (
    (
      "- ruleRepo portout.RuleRepository",
      [La _Port-out_ che verrà utilizzata dalla _business logic_ per parlare con questo componente],
    ),
    ("- writeApi: api.WriteAPI", [Connessione a _InfluxDB_ dal lato "scrittura"]),
    ("- queryApi: api.QueryAPI", [Connessione a _InfluxDB_ dal lato "lettura"]),
    ("- influx: influxdb2.Client", [_Client_ per la connessione a _InfluxDB_]),
    (
      "- brk *broker.NatsMessageBroker",
      [Astrazione che contiene le connessioni a _NATS Core_ e _Jetstream_, oltre a logica per gestire l'iscrizione a _subject_ o _stream_],
    ),
    ("- cfg *config.NotificationConfig", [Configurazione del microservizio]),
    ("- str: jetstream.Stream", [_Stream_ su cui questo adapter opera]),
    ("- logger *zap.Logger", [Necessario per raccogliere i log]),
  ),
  (
    ("+ NewNotificationAdapter(AdapterParams) (*NotificationAdapter, error)", [Costruttore della struttura]),
    ("+ SaveStockUpdate(*types.AddStockUpdateCmd) error", [Salva uno _stock update_ all'interno di _InfluxDB_]),
    ("+ PublishStockAlert(types.StockAlertEvent) error", [Pubblica una notifica]),
    (
      "+ RevokeStockAlert(types.StockAlertEvent) error",
      [Segnala che una notifica è rientrata, ossia non è più presente nessuna condizione scatenante],
    ),
    (
      "+ GetCurrentQuantityByGoodID(string) *types.GetRuleResultResponse",
      [Recupera la quantità presente in tutti i magazzini della merce con id specificato],
    ),
  ),
)


===== RuleQueryRepository <RuleQueryRepository>

Porta che permette di eseguire query su _InfluxDB_.

#interface((
  "+ GetCurrentQuantityByGoodID(string) *types.GetRuleResultResponse",
  [Recupera la quantità presente in tutti i magazzini della merce con id specificato],
))

===== StockEventPublisher <StockEventPublisher>

Porta che permette di pubblicare una notifica, o aggiornarne lo stato.

#interface(
  ("+ PublishStockAlert(types.StockAlertEvent) error", [Pubblica una notifica]),
  (
    "+ RevokeStockAlert(types.StockAlertEvent) error",
    [Segnala che una notifica è rientrata, ossia non è più presente nessuna condizione scatenante],
  ),
)

===== StockRepository <StockRepository>

Porta che permette di salvare _stock update_ all'interno di _InfluxDB_.

#interface(("+ SaveStockUpdate(*types.AddStockUpdateCmd) error", [Salva uno _stock update_ all'interno di _InfluxDB_]))

===== RuleRepositoryImpl

_Adapter-out_ che si occupa della persistenza delle regole di notifica.
Implementa l'interfaccia #typelink(<RuleRepository>).

#struct(
  (
    ("- kv: jetstream.KeyValue", [_Stream_ su cui vengono salvate le regole]),
  ),
  (
    ("+ NewRuleRepository(*broker.NatsMessageBroker) (*RuleRepositoryImpl, error)", [Costruttore della struttura]),
    ("+ AddRule(types.QueryRule) (uuid.UUID, error)", [Permette di aggiungere una regola]),
    ("+ GetRule(uuid.UUID) (types.QueryRule, error)", [Permette di ottenere una regola]),
    ("+ ListRules() ([]types.QueryRuleWithId, error)", [Permette di recuperare una lista delle regole]),
    ("+ EditRule(uuid.UUID, types.EditRule) error", [Permette di modificare una regola]),
    ("+ RemoveRule(uuid.UUID) error", [Permette di rimuovere una regola]),
  ),
)

===== RuleRepository <RuleRepository>

Porta che permette di persistere le regole di notifica.

#interface(
  ("+ AddRule(types.QueryRule) (uuid.UUID, error)", [Permette di aggiungere una regola]),
  ("+ GetRule(uuid.UUID) (types.QueryRule, error)", [Permette di ottenere una regola]),
  ("+ ListRules() ([]types.QueryRuleWithId, error)", [Permette di recuperare una lista delle regole]),
  ("+ EditRule(uuid.UUID, types.EditRule) error", [Permette di modificare una regola]),
  ("+ RemoveRule(uuid.UUID) error", [Permette di rimuovere una regola]),
)
