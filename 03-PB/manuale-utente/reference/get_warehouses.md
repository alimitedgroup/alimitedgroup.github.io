# GET `/api/v1/warehouses`

Questa route consente di recuperare la lista di `warehouse`s (magazzini)

## Richiesta autenticazione

No.

## Corpo della richiesta

Nessuno.

## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `ids` | `string[]` | Una lista di ID dei magazzini. | `"ids": ["f7465619-4e3c-4a3e-8f0d-0379666bb47a", "2ecd185a-f7a6-4834-b29c-92657485d284"]` |
