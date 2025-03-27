# PUT `/api/v1/goods/:good_id`

Questa route consente di aggiornare una merce.

### Richiesta autenticazione

Si.

### Variabili PATH

| Nome      | Tipo     | Descrizione                  | Esempio                                |
| --------- | -------- | ---------------------------- | -------------------------------------- |
| `good_id` | `string` | L'identificativo della merce | `c8225f15-ba60-47f6-8f84-ee72ca3d3d73` |

### Corpo della richiesta

Codifica: `application/json`

| Nome          | Tipo     | Descrizione             | Esempio                       |
| ------------- | -------- | ----------------------- | ----------------------------- |
| `name`        | `string` | Nome della merce        | `"Abito blu"`                 |
| `description` | `string` | Descrizione della merce | `"Abito blu di alta qualità"` |

### Risposta: 200

L'operazione è stata eseguita con successo.

Corpo della risposta vuoto.
