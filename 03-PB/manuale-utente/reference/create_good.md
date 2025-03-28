# POST `/api/v1/goods`

Questa route consente di creare una merce.

## Richiesta autenticazione

Si.

## Corpo della richiesta

Codifica: `application/json`
<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------------- | -------- | ----------------------- | ----------------------------- |
| `name` | `string` | Nome della merce | `"Abito blu"` |
| `description` | `string` | Descrizione della merce | `"Abito blu di alta qualità"` |
<!--typst-end-exclude-->
## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`
<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| --------- | -------- | --------------------------------- | -------------------------------------- |
| `good_id` | `string` | Identificativo della merce creata | `876f754f-e7da-4f07-b6de-258bbfb384bc` |
<!--typst-end-exclude-->