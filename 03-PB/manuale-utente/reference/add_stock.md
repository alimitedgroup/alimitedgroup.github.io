# POST `/api/v1/goods/:good_id/warehouse/:warehouse_id/add`

Questa route consente di aggiungere dello stock ad una merce del magazzino.

### Richiesta autenticazione

Si.

### Variabili PATH

| Nome | Tipo | Descrizione | Esempio |
| -------------- | -------- | ------------------------------ | -------------------------------------- |
| `good_id` | `string` | L'identificativo della merce | `7be87589-6835-4437-ba6a-96d6b9a383c1` |
| `warehouse_id` | `string` | L'identificativo del magazzino | `warehouse-1` |

### Corpo della richiesta

Codifica: `application/json`

| Nome | Tipo | Descrizione | Esempio |
| ---------- | ----- | ---------------------------------- | ------- |
| `quantity` | `int` | La quantità di stock da aggiungere | `10` |

### Risposta: 200

L'operazione è stata eseguita con successo.

Corpo della risposta vuoto.
