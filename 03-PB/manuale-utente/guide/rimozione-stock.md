# Rimuovere stock#super[G] di una merce

In questa Sezione sarà spiegato come rimuovere _stock_#super[G] ad una merce interagendo con il Sistema mediante l'utilizzo di `curl`.

Seguendo la guida saranno rimosse **5 unità** alla merce con **id** `hat-1` dal magazzino con **id** `1`.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Locale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `LA_TOKEN`. Considererà inoltre creata la merce con id `hat-1` e con _stock_#super[G] sufficiente per effettuarne la rimozione: per maggiori informazioni si consiglia la lettura della Sezione dedicata alla creazione di una merce e all'aggiunta di _stock_#super[G].

Preparare e salvare in una variabile `LA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`LA_PARAMS=(-sS -H "Authorization: Bearer $LA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi procedere alla rimozione dello _stock_#super[G] mediante il seguente comando:

`curl "${LA_PARAMS[@]}" -X DELETE "http://localhost:8080/api/v1/goods/hat-1/warehouse/1/stock" \
  -d '{"quantity": 5}'`

Operazione completata: lo _stock_#super[G] è stato rimosso con successo.

Per verificare le informazioni sulle merci del Sistema si consiglia la lettura della Sezione dedicata.
