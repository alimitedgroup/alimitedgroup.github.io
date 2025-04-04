# Importare una dashboard
I file forniti includono una _dashboard_#super[G] configurata per avere a disposizione tutti i microservizi in esecuzione nella stessa macchina.

Tale _dashboard_#super[G] è automaticamente importata all'avvio del Sistema. Qualora non lo fosse, è possibile seguire questi passaggi.

Anzitutto recarsi nella sezione **Dashboards#super[G]** di Grafana#super[G], selezionando l'apposita opzione nella barra laterale sinistra, come mostrato in figura:

<p align="center">
  <img src="./../../assets/sel-dashboard.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-dashboard.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del menu delle dashboard"
)
-->

<!--raw-typst #pagebreak() -->

Procedere dunque ad importare la _dаshboard_ caricando l'apposito file _JSON_ che è possibile trovare in `/containers/dashboards/json` della cartella di installazione. La pagina di importazione è simile alla figura che segue:

<p align="center">
  <img src="./../../assets/import-dashboard.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/import-dashboard.png", width: 120%, height: 26%),
    ),
    caption: "Importare una dashboard"
)
-->

# Modificare una dashbоard

Selezionare anzitutto la _dashboаrd_ appena importata come mostrato in figura:

<p align="center">
  <img src="./../../assets/sel-dashboard-to-view.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-dashboard-to-view.png", width: 120%, height: 26%),
    ),
    caption: "Selezionare una dashboard"
)
-->

A questo punto, è possibile aggiungere i log e le misurazioni del microservizio.

Attivare anzitutto la modifica della _dаshboard_ corrente premendo il tasto **Edit**, come mostrato nella figura che segue:

<p align="center">
  <img src="./../../assets/press-edit.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/press-edit.png", width: 120%, height: 26%),
    ),
    caption: "Selezionare del tasto di modifica"
)
-->

Premere quindi il tasto **Add** e quindi **Visualization**

<p align="center">
  <img src="./../../assets/sel-vis.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-vis.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del tasto di aggiunta"
)
-->

A questo punto il processo differisce in base all'aggiunta di log e misurazioni, per cui si consiglia di seguire i paragrafi successivi.

<!--raw-typst
  #pagebreak()
-->

## Aggiungere una finestra di log

Dalla finestra che si apre, selezionare, dal menu a tendina vicino la voce **Data source**, la voce **Loki**.

<p align="center">
  <img src="./../../assets/sel-loki-dash.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-loki-dash.png", width: 120%, height: 26%),
    ),
    caption: "Selezionare di Loki come sorgente dati"
)
-->

Selezionare ora il menu a tendina indicato dalla figura che segue:

<p align="center">
  <img src="./../../assets/sel-logs-type.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-logs-type.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del tipo di dati"
)
-->

Cercare e selezionare **Logs**.

<p align="center">
  <img src="./../../assets/search-logs.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/search-logs.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del tipo di dati"
)
-->

Dalla Sezione **Label filters**, selezionare la voce **Select label** e, dal menu a tendina, la voce **service_name**.

<p align="center">
  <img src="./../../assets/loki-srv-name.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/loki-srv-name.png", width: 120%, height: 26%),
    ),
    caption: "Selezione modalità individuazione servizio per log"
)
-->

Premere ora su **Select value**, quindi selezionare il servizio di interesse. Per una rapida individuazione, i nomi sono nella forma che segue:

`github.com/alimitedgroup/MVP/srv/nome_servizio#servizio`

dove

- **nome_servizio** è il nome del servizio;
- **#servizio** è l'id assegnato al servizio (vedere la Sezione relativa alla configurazione del Sistema).

Un esempio è riportato nella figura che segue:

<p align="center">
  <img src="./../../assets/loki-srv-value.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/loki-srv-value.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del servizio di cui visualizzare i log"
)
-->

**Attenzione**: il servizio potrebbe comparire nella solo nel momento in cui viene fornito il primo output.

Premere quindi **Run query** e **Save dаshboard** per sincronizzare i dati e salvare le modifiche.

<p align="center">
  <img src="./../../assets/loki-run-save.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/loki-run-save.png", width: 120%, height: 26%),
    ),
    caption: "Salvataggio dashboard dopo aggiunta dei log"
)
-->

Il pannello è stato aggiunto: premere **Back to dashboаrd** per visualizzarlo.

## Aggiungere una misurazione

Dopo l'apertura del menu di aggiunta visualizzazione, il campo **Data source** presente nella parte inferiore dovrebbe essere già popolato con **Prometheus**: se così non fosse selezionarlo similmente a quanto fatto con Loki.

Premere quindi sul menu **Select metric**, quindi su **Metrics explorer**.

<p align="center">
  <img src="./../../assets/sel-metric.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-metric.png", width: 120%, height: 26%),
    ),
    caption: "Apertura del menu di selezione metriche"
)
-->

Cercare, nella finestra successiva, la metrica di interesse, quindi premere sul bottone mostrato in figura:

<p align="center">
  <img src="./../../assets/sel-metric-prom.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-metric-prom.png", width: 120%, height: 26%),
    ),
    caption: "Selezione della metrica"
)
-->

**Attenzione**: la metrica potrebbe non apparire se non è mai stata fatta una misurazione a riguardo.

Premere quindi su **Select label** e, nel menu che si apre, premere **Job**.

<p align="center">
  <img src="./../../assets/prom-sel-job.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/prom-sel-job.png", width: 120%, height: 26%),
    ),
    caption: "Selezione modalità individuazione servizio per metriche"
)
-->

Premere ora su **Select value** e premere sul servizio di interesse. Per una rapida individuazione, i nomi sono nella forma che segue:

`github.com/alimitedgroup/MVP/srv/nome_servizio#servizio`

dove

- **nome_servizio** è il nome del servizio;
- **#servizio** è l'id assegnato al servizio (vedere la Sezione relativa alla configurazione del Sistema).

Un esempio è riportato nella figura che segue:

<p align="center">
  <img src="./../../assets/prom-job-value.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/prom-job-value.png", width: 120%, height: 26%),
    ),
    caption: "Selezione del servizio di cui visualizzare una metrica"
)
-->

**Attenzione**: il servizio potrebbe comparire nella solo nel momento in cui viene fornita una prima misurazione.

Premere quindi **Run query** e **Save dаshboard** per sincronizzare i dati e salvare le modifiche.

<p align="center">
  <img src="./../../assets/prom-save-dash.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/prom-save-dash.png", width: 120%, height: 26%),
    ),
    caption: "Salvataggio dashboard dopo aggiunta dei log"
)
-->

Il pannello è stato aggiunto: premere **Back to dashboаrd** per visualizzarlo.

<!--raw-typst #pagebreak() -->
