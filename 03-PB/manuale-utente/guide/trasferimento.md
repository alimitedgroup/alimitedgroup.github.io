# Effettuare un trasferimento

Il Sistema permette di realizzare trasferimenti tra magazzini. La seguente guida illustrerà come realizzarne uno, presupponendo l'esistenza di due magazzini e di stock#super[G] sufficiente nel primo magazzion: per maggiori informazioni visitare la pagina di installazione del presente Sistema e la Sezione dedicata all'aggiunta di _stock#super[G]_.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

Si può quindi procedere a realizzare il trasferimento#super[G] mediante la seguente richiesta:

`curl "${GA_PARAMS[@]}" -X POST "http://localhost:8080/api/v1/transfers" \
  -d '{"receiver_id": "id_magazzino_destinatario", "sender_id": "id_magazzino_mittente", "goods": {"id_merce": qta}}'`

Cambiando i segnaposto seguenti con i valori adeguati:

- **id_magazzino_destinatario**: identificativo del magazzino destinatario del trasferimento#super[G];
- **id_magazzino_mittente**: identificativo del magazzino mittente del trasferimento#super[G];
- **id_merce**: identificativo della merce da trasferire;
- **qta**: quantità della merce da trasferire.

È ovviamente possibile includere più merci inserendole in una lista JSON.

Per verificare l'esito del trasferimento#super[G] è consigliata la lettura della Sezione relativa alla visione dei trasferimenti.
