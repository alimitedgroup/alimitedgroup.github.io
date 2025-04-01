# Aggiungere una merce

In questa sezione sarà spiegato come aggiungere una merce interagendo con il sistema mediante l'utilizzo di `curl` e `jq`.

La merce aggiunta avrà le seguenti caratteristiche:

- **id**: hat-1;
- **nome**: hat;
- **descrizione**: blue hat.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi procedere all'aggiunta della merce eseguendo il seguente comando:

`curl "${GA_PARAMS[@]}" -X PUT "http://localhost:8080/api/v1/goods/hat-1" \
  -d '{"name":"hat","description":"blue hat"}' | jq`

Operazione completata: la merce è stata aggiunta con successo.

Si noti che il comando eseguito ha manualmente assegnato l'id alla merce, tuttavia questo non è necessario: si consiglia la lettura degli _endpoint_ disponibili.

Per verificare le informazioni sulle merci del sistema si consiglia la lettura della Sezione dedicata.
