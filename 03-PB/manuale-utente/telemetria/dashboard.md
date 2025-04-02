# Importare una dashbord

I file forniti includono una _dashboard_#super[G] configurata per avere a disposizione tutti i microservizi in esecuzione nella stessa macchina.

Tale _dashboard_#super[G] è automaticamente importata all'avvio del Sistema. Qualora non lo fosse, è possibile seguire questi passaggi.

Anzitutto recarsi nella sezione **Dashboards#super[G]** di Grafana#super[G], selezionando l'apposita opzione nella barra laterale sinistra, come mostrato in figura:

<p align="center">
  <img src="./../../../assets/sel-dashboard.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-dashboard.png", width: 120%, height: 30%),
    ),
    caption: "Selezione del menu delle dashboard"
)
-->

Procedere dunque ad importare la _dashboard_#super[G] caricando l'apposito file JSON che è possibile trovare in `/containers/dashboards/json` della cartella di installazione. La pagina di importazione è simile alla figura che segue:

<p align="center">
  <img src="./../../../assets/import-dashboard.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/import-dashboard.png", width: 120%, height: 30%),
    ),
    caption: "Importare una dashboard"
)
-->
<!--raw-typst

#pagebreak()
-->

# Modificare una dashboard#super[G] 

Selezionare anzitutto la _dashboard_#super[G] appena importata come mostrato in figura:

<p align="center">
  <img src="./../../../assets/import-dashboard-to-view.png" width="100%" />
</p>

<!--raw-typst

#figure(
    grid(
        columns: 1,
        gutter: 2mm,
        image("./../assets/sel-dashboard-to-view.png", width: 120%, height: 30%),
    ),
    caption: "Selezionare una dashboard"
)
-->

A questo punto, è possibile aggiungere i log e le misurazioni del microservizio.

## Aggiungere una finestra di log

