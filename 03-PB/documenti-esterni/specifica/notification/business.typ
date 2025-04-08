// ignore

#import "../lib.typ": *

==== _Business logic_

#figure(
  image("../../../../assets/drawio/notification_business.svg"),
  caption: [_Business logic_ del microservizio Notification],
)

===== BusinessParams <BusinessParams>

Parametri necessari per costruire un'istanza di #typelink(<Business>)

#struct(
  (
    (
      "+ RuleRepo portout.RuleRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ AlertPublisher portout.StockEventPublisher",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ QuantityReader portout.RuleQueryRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ StockRepo portout.StockRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
  ),
  (),
)

===== business.Business <Business>

_Business logic_ del microservizio di notifica.

#struct(
  (
    (
      "- ruleRepo portout.RuleRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "- alertPublisher portout.StockEventPublisher",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "- quantityReader portout.RuleQueryRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "- stockRepo portout.StockRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
  ),
  (
    ("+ NewBusiness(BusinessParams) *Business", [Costruttore della struttura]),
    ("+ AddQueryRule(types.QueryRule) (uuid.UUID, error)", [Aggiunge una regola di notifica]),
    (
      "+ GetQueryRule(uuid.UUID) (types.QueryRule, error)",
      [Recupera una regola di notifica dato il suo identificatore],
    ),
    ("+ ListQueryRules() ([]types.QueryRuleWithId, error)", [Recupera tutte le regole di notifica]),
    ("+ EditQueryRule(uuid.UUID, types.EditRule) error", [Modifica una regola di notifica]),
    ("+ RemoveQueryRule(uuid.UUID) error", [Rimuove una regola di notifica]),
    ("+ RecordStockUpdate(*types.AddStockUpdateCmd) error", [Salva uno _stock_update_ in maniera permanente]),
    (
      "+ GetCurrentQuantityByGoodID(string) *types.GetRuleResultResponse",
      [Recupera la quantità attuale di una merce, dato il suo identificatore],
    ),
    ("+ PublishStockAlert(types.StockAlertEvent) error", [Pubblica una notifica]),
  ),
)

===== RuleCheckerParams <RuleCheckerParams>

Parametri necessari per costruire un'istanza di #typelink(<RuleChecker>)

#struct(
  (
    (
      "+ Lc fx.Lifecycle",
      [Gestisce il ciclo di vita dei componenti dell'applicazione],
    ),
    (
      "+ Logger *zap.Logger",
      [Necessario per raccogliere i log],
    ),
    (
      "+ Brk *broker.NatsMessageBroker",
      [Astrazione che incapsula la connessione a NATS],
    ),
    (
      "+ Rules portout.RuleRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ Queries portout.RuleQueryRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ Publish portout.StockEventPublisher",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "+ Cfg *config.NotificationConfig",
      [Configurazione del microservizio],
    ),
  ),
  (),
)

===== business.RuleChecker <RuleChecker>

Componente che implementa un controllo periodico delle regole di notifica, e si occupa di mandare le regole in caso serva.

#struct(
  (
    ("- logger *zap.Logger", [Necessario per raccogliere i log]),
    ("- cfg *config.NotificationConfig", [Configurazione del microservizio]),
    ("- brk *broker.NatsMessageBroker", [Astrazione che incapsula la connessione a NATS]),
    (
      "- rulePort portout.RuleRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "- queryPort portout.RuleQueryRepository",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    (
      "- publishPort portout.StockEventPublisher",
      [_Port-out_ che verrà utilizzata dalla _business logic_ per parlare con gli _adapter-out_],
    ),
    ("- stop chan bool", [Canale usato per ricevere un messaggio quando l'applicazione sta venendo terminata]),
    ("- stopOk chan bool", [Canale su cui viene inviata una conferma quando _RuleChecker_ sta venendo terminato]),
  ),
  (
    ("+ NewRuleChecker(RuleCheckerParams) *RuleChecker", [Costruttore della struttura]),
    ("- run()", [Blocca la _goroutine_ corrente ed avvia il controllo delle regole periodico]),
    ("- checkAllRules()", [Controlla le regole. Viene chiamata da `run()`]),
  ),
)

