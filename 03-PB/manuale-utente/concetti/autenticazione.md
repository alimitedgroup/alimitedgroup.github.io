# Autenticazione ed autorizzazione

Per mantenere un sistema sicuro,
e per evitare azioni accidentali o volute da parte di utenti che non hanno il privilegio di compierle,
molti sistemi richiedono agli utenti di identificarsi, prima di svolgere molte delle operazioni.
Questo processo viene chiamato **autenticazione**.
Il fatto che un utente sia autenticato, però,
non garantisce che esso possa effettuare ogni operazione implementata dal sistema.
Il processo che controlla se l'utente ha i privilegi di effettuare le operazioni che richiede si chiama **autorizzazione**.

Nel Sistema descritto dal presente manuale, i processi di Autenticazione e di Autorizzazione sono parzialmente separati
mediante l'utilizzo di _token_, stringhe di testo che solo il Sistema può generare, utilizzate appunto per identificare l'utente.
Ogni utente è associato a uno e un solo **ruolo**,
ed ogni utente assegnato ad uno stesso ruolo può effettuare le stesse operazioni.

L'interazione tra utente e Sistema può quindi essere riassunta nelle seguenti fasi:

1. L'utente effettua una richiesta di login;
2. Il Sistema controlla le credenziali fornite. Se sono valide, genera e restituisce un _token_;
3. L'utente allega, nelle richieste successive, il _token_;
4. Il Sistema controlla che la richiesta abbia un _token_ associato, e che sia valido;
   se non lo è, restituisce un messaggio d'errore;
5. Il Sistema recupera il ruolo dell'utente autenticato,
   controlla che l'operazione sia consentita ad esso,
   e consente o nega l'operazione di conseguenza.

## _Token_

Il Sistema utilizza dei _token_ con un formato ben conosciuto.
In particolare, essi sono dei [JWT](https://jwt.io/introduction) firmati con algoritmo ES256.
I JWT sono tipicamente trasmessi sotto forma di una stringa composta da tre parti separate da punti: `xxxxx.yyyyy.zzzzz`.
Le prime due parti sono oggetti JSON, codificati con _encoding_ `Base64Url`, mentre l'ultima è una firma crittografica.

La prima parte viene chiamata _header_, e contiene l'algoritmo di firma utilizzato, e il tipo di token.
Essa è composta da un oggetto JSON simile al seguente:
```json
{
  "alg": "ES256",
  "typ": "JWT"
}
```

---

La seconda parte viene chiamata _payload_,
e contiene vari campi utili per identificare l'utente.
Nel caso del Sistema, i campi presenti sono i seguenti:
```json
{
    "sub": "username",
    "role": "local_client",
    "exp": 1355310732,
    "iss": "31c111ab-9ed4-49da-b4c0-8641514a4589",
}
```

I due campi `username` e `role`, come si può intuire dal nome,
contengono rispettivamente il nome utente ed il ruolo.
Il campo `exp` contiene una data di scadenza del token,
espressa come numero di secondi passati dal 1° gennaio 1970
(una convenzione comunemente chiamata "_Unix Timestamp_").
Il campo `iss`, invece, contiene informazioni su chi ha emesso il JWT.
Dato che il sistema è altamente distribuito e volevamo raggiungere un alto livello di scalabilità,
abbiamo più componenti che possono generare questi JWT.
Il campo `iss` è fondamentale per identificare quale tra questi abbia emesso il JWT,
così da poter recuperare la chiave pubblica necessaria per verificare la validità dei _token_.

---

La terza e ultima parte, invece, è una firma crittografica che attesti la validità del _token_.
Senza entrare troppo nei dettagli,
sfruttiamo un sistema di firma mediante crittografia _asimmetrica_,
in cui è presente una coppia di chiavi definite "pubblica" e "privata".
Utilizzando la chiave privata, è possibile generare una "firma" digitale,
che poi con la chiave pubblica è possibile verificare.
In questo modo, il Sistema può inserire dati pubblicamente disponibili all'interno del _token_
(ricordiamo che le sezioni _header_ e _payload_ sono pubblicamente leggibili),
senza paura che vengano alterate (l'utente non possiede la chiave privata,
quindi non può generare una firma valida per il _token_ modificato).

---

Qualora il lettore desiderasse più dettagli, rimandiamo al sito
[https://jwt.io/introduction](https://jwt.io/introduction),
il quale fornisce una rapida introduzione ai JWT.
Qualsiasi dettaglio più specifico può essere reperito all'interno
dell'[RFC 7519](https://www.rfc-editor.org/rfc/rfc7519), il documento che descrive i JWT,
e all'[RFC 7518](https://www.rfc-editor.org/rfc/rfc7518), il quale descrive `ES256`, l'algoritmo di firma che il Sistema utilizza.

## Procedura di autenticazione <procedura_autenticazione>

L'utente che volesse autenticarsi presso il Sistema
dovrà inviare una richiesta al percorso `/api/v1/login`,
allegando le proprie credenziali.
Il Sistema, dopo aver effettuato le verifiche necessarie,
risponderà con un _token_ che l'utente dovrà conservare.

Per le richieste successive, qualora sia richiesta autenticazione,
l'utente dovrà includere un _header_ `Authorization` nella richiesta, con valore `Bearer <token>`
(rimpiazzando `<token>` con il valore ottenuto durante il _login_).
