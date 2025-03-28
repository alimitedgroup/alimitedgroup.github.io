# GET `/api/v1/ping`

Questa route consente di verificare se il servizio `api_gateway` è correttamente in esecuzione.

## Richiesta autenticazione

No.

## Parametri

Nessuno.

## Corpo della richiesta

Nessuno.

## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`
<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `message` | `string` | Valore fisso, sempre uguale a "pong". | `pong` |
<!--typst-end-exclude-->