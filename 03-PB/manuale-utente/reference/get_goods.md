# GET `/api/v1/goods`

Questa route consente di recuperare la lista di `good`s (merci)

### Richiesta autenticazione

No.

### Corpo della richiesta

Nessuno.

### Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `goods` | `GoodAndAmount[]` | Una lista di merci, ognuna con la quantità disponibile globalmente. | `"goods": [{"name": "hat", "description": "a hat", "id": "e9281371-b9fe-41b4-968a-e510a98cf849", "amount": 20}]` |
