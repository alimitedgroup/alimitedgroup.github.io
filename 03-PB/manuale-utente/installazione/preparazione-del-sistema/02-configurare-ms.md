# Personalizzazione della configurazione

## Informazioni generali

Il Sistema è stato realizzato per poterne configurare a proprio piacimento i servizi in esecuzione in una stessa macchina.

Per iniziare aprire il file `compose.yml`, file `yaml` contenente i servizi che saranno avviati mediante Docker.#super[G] I seguenti servizi sono obbligatori per l'esecuzione di qualsiasi altro microservizio:

- **collector**;
- **loki**;
- **prometheus**.

Questi tre servizi offrono le funzionalità#super[G] telemetriche e non possono perciò essere rimossi.

Il servizio `nats`#super[G] avvia un'istanza di un server NATS:#super[G] se rimosso è bene eliminare tale servizio dal campo `depends-on` presente in alcuni altri servizi.

I servizi che possono essere aggiunti e rimossi a piacimento sono:

- **api-gateway**: servizio che avvia un'istanza del microservizio omonimo;
- **warehouse-1**: servizio che avvia un'istanza del microservizio warehouse.#super[G] Dal momento che il nome del servizio è non vincolante, il nome può essere cambiato in base alle proprie esigenze;
- **catalog**: servizio che avvia un'istanza del microservizio omonimo;
- **order**: servizio che avvia un'istanza del microservizio omonimo, che gestisce gli ordini e i trasferimenti;
- **authenticator**: servizio che avvia un'istanza del microservizio omonimo;
- **notification**: servizio che avvia un'istanza del microservizio omonimo;
- **grafana#super[G]**: servizio per visualizzare la telemetria con una comoda _Graphic User Interface_.

Tutti i servizi appena elencati possiedono tre variabili d'ambiente configurabili in base alle proprie esigenze, presenti sotto la voce `environment`:

- **ENV_BROKER_URL**: l'indirizzo di un'istanza NATS#super[G] (default: `nats://nats:4222`);
- **ENV_SERVICE_ID**: l'identificativo del servizio;
- **OTLP_URL**: l'indirizzo di un'istanza di collector (default: `collector:4317`);

<!--raw-typst
-------------------------------------------------------------------------------------------------------------------
-->

> **IMPORTANTE**
>
> Prestare attenzione alla configurazione di **ENV_SERVICE_ID**: l'impostazione di due o più istanze con stesso identificativo **IMPEDIRÀ** la distinzione dei dati telemetrici di un'istanza dalle altre. Se omesso, il sistema genererà un identificativo causale, tuttavia questo sarà resettato al riavvio dell'istanza, determinandone un cambiamento: tale modo d'impiego è dunque **caldamente sconsigliato**. <br>  <!--raw-typst \ -->
> La generazione automatica non è abilitata per i magazzini, che non entreranno in esecuzione se la variabile d'ambiente non è impostata.

<!--raw-typst
-------------------------------------------------------------------------------------------------------------------
-->

Alcuni dei servizi sviluppati presentano la seguente dicitura:

`build: { args: { SERVICE: valore } }`

questo significa che il servizio verrà compilato dai file localmente disponibili. Il campo `valore` deve essere sostituito con il nome della cartella dove si trovano i file da compilare per quel microservizio (ad esempio, scrivere `api_gateway` per compilare e avviare un servizio che esegue Api gateway).

Nel caso un servizio richiederà ulteriori configurazioni, questo sarà ora descritto.

## Api gateway

Possiede queste ulteriori variabili d'ambiente:

- **ENV_API_PORT**: porta API#super[G] (default: `8080`);
- **HTTP_HOST**: host del sistema (default: `0.0.0.0`);
- **HTTP_PORT**: porta http (default: `8080`).

## Influxdb

Possiede queste ulteriori variabili d'ambiente:

- DOCKER_INFLUXDB_INIT_MODE: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `setup`);
- DOCKER_INFLUXDB_INIT_USERNAME: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `admin`);
- DOCKER_INFLUXDB_INIT_PASSWORD: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `admin1234`);
- DOCKER_INFLUXDB_INIT_ORG: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `my-org`);
- DOCKER_INFLUXDB_INIT_BUCKET: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `stockdb`);
- DOCKER_INFLUXDB_INIT_ADMIN_TOKEN: vedere la [documentazione ufficiale](https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/) (default: `my-token`).

## Notifications

Possiede queste ulteriori variabili d'ambiente:

- INFLUXDB_TOKEN: stesso valore inserito al servizio influxdb (default: `my-token`);
- INFLUXDB_ORG: stesso valore inserito al servizio influxdb (default: `my-org`);
- INFLUXDB_URL: Indirizzo del servizio Influxdb (default: `http://influxdb:8086`)
- INFLUXDB_BUCKET: stesso valore inserito al servizio influxdb (default: `stockdb`);
- RULE_CHECKER_TIMER: il valore impostato determinerà ogni quanto tempo vengono controllate le soglie e le quantità globali disponibili di una merce per inviare o meno una notifica (default `5s`).

Affinché Notifications funzioni correttamente è necessario sia attiva un'istanza del microservizio catalog: qualora non sia presente il microservizio non riuscirà a completare la procedura di avvio.

Se nello stesso file `compose.yml` non è presente il microservizio catalog, eliminare la dicitura `catalog` dalle voci elencate su `depends_on`, discorso analogo se Influxdb è in esecuzione su un'altra macchina.
