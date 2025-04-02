# Visualizzare gli ordini eseguiti

Il Sistema permette di ottenere una lista degli ordini eseguiti.

Anzitutto è necessario ottenere un token per il ruolo di **Cliente**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `C_TOKEN`.

Preparare e salvare in una variabile `C_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`C_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi ottenere la lista degli ordini eseguendo il comando seguente:

`curl "${C_PARAMS[@]}" -X GET "http://localhost:8080/api/v1/orders"`.

Si noti che gli ordini possono avere quattro stati:

- **Created**: ordine#super[G] creato, in attesa di iniziare le _reservation_;
- **Filled**: tutte le _reservation_ sono riuscite, è in corso la rimozione degli _stock_#super[G];
- **Completed**: ordine#super[G] completato;
- **Cancelled**: una o più _reservation_ non sono riuscite e non è più presente merce a sufficienza per completare l'ordine.
