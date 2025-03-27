# POST `/api/v1/login`

Questa route consente di autenticarsi presso il servizio `api_gateway`, in modo da poter accedere alle route che richiedono autenticazione.

## Richiesta autenticazione

No.

## Corpo della richiesta

Codifica: `application/x-www-form-urlencoded`

| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `username` | `string` | L'username con cui ci si vuole autenticare | `admin` |

## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `token` | `string` | Un token JWT che autentica l'utente. | `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0.KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30` |
