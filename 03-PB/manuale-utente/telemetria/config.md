Questa guida spiegherà come configurare Grafana per avere sotto osservazione tutte le misurazioni di natura telemetrica.

La guida suppone che l'accesso a Grafana sia effettuato da una macchina che possiede in esecuzione un'istanza dell'omonimo servizio: vedere la Sezione dedicata all'installazione del Sistema.

L'avvio con i _file_ sorgente non alterati dovrebbe completare automaticamente la configurazione ma questa guida illustrerà nel dettaglio tutti i passaggi.

# Primo accesso

Avviato il container con il servizio `grafana` aprire un browser e collegarsi all'indirizzo `localhost:3000`. Apparirà la seguente schermata di login:

<p align="center">
  <img src="./../../../assets/grafana-login.png" width="100%" />
</p>

<!--raw-typst

#figure(
image("./../assets/grafana-login.png", width: 120%, height: 30%),
    caption: "Pagina di login di Grafana"
)
-->

Inserire i dati di login di default:

- **Username**: `admin`;
- **Password**: `admin`.

Si presenterà la seguente schermata: sebbene sia consigliato cambiare la password di default, al momento premeremo "Skip" per procedere con la guida.

<p align="center">
  <img src="./../../../assets/grafana-logged-in.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/grafana-logged-in.png", width: 120%, height: 30%),
    ),
    caption: "Pagina di richiesta cambio password di Grafana"
)
-->

Login effettuato.

# Aggiungere connessione a Prometheus

Selezionare, nella colonna di sinistra, la voce **Connections**, quindi **Data sources**. Apparirà la seguente schermata:

<p align="center">
  <img src="./../../../assets/grafana-add-source.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/grafana-add-source.png", width: 120%, height: 30%),
    ),
    caption: "Pagina Data Sources di Grafana"
)
-->

Come indicato dalla figura 6, cliccare il bottone **Add data source**.

Nella schermata che appare, cercare **Prometheus** e selezionarlo, come mostrato in figura.

<p align="center">
  <img src="./../../../assets/sel-prom.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-prom.png", width: 120%, height: 30%),
    ),
    caption: "Pagina Data Sources di Grafana"
)
-->

Inserire l'indirizzo di Prometheus: se configurato localmente e con il file `compose.yml`, l'indirizzo è `http://prometheus:9090`.

<p align="center">
  <img src="./../../../assets/prom-addr.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/prom-addr.png", width: 120%, height: 30%),
    ),
    caption: "Inserimento indirizzo di Prometheus"
)
-->

<!--raw-typst
#pagebreak()
-->

Salvare quindi la configurazione.

<p align="center">
  <img src="./../../../assets/prom-save.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/prom-save.png", width: 110%, height: 30%),
    ),
    caption: "Salvataggio connessione a Prometheus"
)
-->

# Aggiungere connessione a Loki

Anzitutto, recarsi nuovamente in **Connections** > **Data sources**. Dopo l'aggiunta di **Prometheus**, la schermata sarà simile alla seguente:

<p align="center">
  <img src="./../../../assets/add-src-2.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/add-src-2.png", width: 120%, height: 30%),
    ),
    caption: "Aggiunta di una nuova sorgente dati"
)
-->

Cliccare, come mostrato in Figura 10, **Add new data source**.

<!--raw-typst
#pagebreak()
-->

A questo punto, procedere a cercare e selezionare **Loki**, come mostrato nella figura seguente:


<p align="center">
  <img src="./../../../assets/sel-loki.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-loki.png", width: 120%, height: 30%),
    ),
    caption: "Selezione della sorgente dati Loki"
)
-->

Inserire l'indirizzo di Loki: se configurato localmente e con il file `compose.yml`, l'indirizzo è `http://loki:3100`.


<p align="center">
  <img src="./../../../assets/config-loki.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/config-loki.png", width: 120%, height: 30%),
    ),
    caption: "Inserimento indirizzo di Loki"
)
-->
<!--raw-typst
#pagebreak()
-->
Confermare quindi l'aggiunta come mostrato nella figura che segue:

<p align="center">
  <img src="./../../../assets/confirm-loki.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/confirm-loki.png", width: 120%, height: 30%),
    ),
    caption: "Salvataggio connessione a Loki"
)
-->

<!--raw-typst
#pagebreak()
-->