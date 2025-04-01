# Aggiungere stock ad una merce

In questa Sezione sarà spiegato come aggiungere _stock_ ad una merce interagendo con il sistema mediante l'utilizzo di `curl`.

Seguendo la guida saranno aggiunte **6 unità** alla merce con **id** `hat-1` al magazzino con **id** `1`.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Locale**: per maggiori informazioni vedere la Sezione dedicata al login. 

La guida considererà ottenuto questo token e salvato in una variabile `LA_TOKEN`. Considererà inoltre creata la merce con id `hat-1`: per maggiori informazioni si consiglia la lettura della Sezione dedicata alla creazione di una merce.

Preparare e salvare in una variabile `LA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`LA_PARAMS=(-sS -H "Authorization: Bearer $LA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi procedere all'aggiunta dello _stock_ mediante il seguente comando:

`curl "${LA_PARAMS[@]}" -X POST "$BASE/goods/hat-1/warehouse/1/stock" \
  -d '{"quantity": 6}'`

Operazione completata: lo _stock_ è stato aggiunto con successo.

Per verificare le informazioni sulle merci del sistema si consiglia la lettura della Sezione dedicata.