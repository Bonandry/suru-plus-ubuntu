<p align="center"> 
<img src="images/logo-nuovo.svg" alt="Logotype">
</p>

<p align="center"> 
<img src="images/Title - Italian.svg" alt="Title">
</p>

![Screenshot 1](images/screenshot1.png)
![Screenshot 2](images/screenshot2.png)

<h1>Indice</h1>

O puoi visitare rapidamente il [WIki](https://github.com/Bonandry/suru-plus-ubuntu/wiki).

- [Cosa c'è di nuovo nella versione?](#cosa-c%C3%A8-di-nuovo-nella-versione)
  - [v17.1](#v171)
- [Installazione con il CLI](#installazione-con-il-cli)
  - [Cartella ROOT (raccomandato)](#cartella-root-raccomandato)
  - [Cartella HOME per GNOME](#cartella-home-per-gnome)
  - [Per gli utenti di Lubuntu](#per-gli-utenti-di-lubuntu)
  - [Per gli utenti non-Ubuntu e non-GNOME](#per-gli-utenti-non-ubuntu-e-non-gnome)
  - [Dinsinstallazione](#dinsinstallazione)
- [Modifica delle icone alternative e del colore delle icone](#modifica-delle-icone-alternative-e-del-colore-delle-icone)
  - [Firefox](#firefox)
    - [Per cambiare il percorso dell'icona nel file desktop (raccomandato)](#per-cambiare-il-percorso-dellicona-nel-file-desktop-raccomandato)
    - [Per creare il collegamento](#per-creare-il-collegamento)
  - [Icona alternativa](#icona-alternativa)
  - [Colore alternativo](#colore-alternativo)
- [Bug consociuti](#bug-consociuti)
  - [App create tramite Snap](#app-create-tramite-snap)
  - [App create tramite AppImage](#app-create-tramite-appimage)
  - [Icone predefinite delle applicazioni con un nome brutto](#icone-predefinite-delle-applicazioni-con-un-nome-brutto)
  - [Icone non attraenti di Bluetooth Manager, Gigolo, Network Wifi, ecc.](#icone-non-attraenti-di-bluetooth-manager-gigolo-network-wifi-ecc)
  - [Icone non riconosciute e brutte (Okular, ecc.))](#icone-non-riconosciute-e-brutte-okular-ecc)
  - [Supporti distribuzioni non-GNOME?](#supporti-distribuzioni-non-gnome)
- [Rapporto](#rapporto)
- [Contributo](#contributo)
  - [Linee Guida di Progettazione](#linee-guida-di-progettazione)
  - [Kit di Strumenti](#kit-di-strumenti)
- [Autori e Collaboratori](#autori-e-collaboratori)
  - [Sviluppatori centrali (in ordine di apparizione)](#sviluppatori-centrali-in-ordine-di-apparizione)
  - [Collaboratori](#collaboratori)
- [Registro delle modifiche](#registro-delle-modifiche)
- [Crediti e Licenze](#crediti-e-licenze)

## Cosa c'è di nuovo nella versione?

### v17.1

Aggiunte tre alternative di Firefox che puoi selezionare:

<img src="alternatives/firefox.svg?sanitize=true" alt="Firefox Traditional" height="65px"> <img src="alternatives/firefox-20.svg?sanitize=true" alt="Firefox Suru++ 25" height="65px"> <img src="alternatives/firefox-mozilla.svg?sanitize=true"  alt="Firefox Mozilla" height="65px">

## Installazione con il CLI

Utilizza gli script per installare la versione più recente direttamente da questo repository (indipendentemente dalla tua distribuzione):

**NOTA:** Utilizza lo stesso comando per aggiornare il tema di icone.

### Cartella ROOT (raccomandato)

```
wget -qO- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | sh
```

### Cartella HOME per GNOME

```
wget -qO- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | env DESTDIR="$HOME/.icons" sh
```

###  Per gli utenti di Lubuntu

Se vuoi che le icone di 24px e 26px siano colorate nel pannello, visita [Suru++ Lubuntu](https://github.com/gusbemacbe/suru-plus-lubuntu/).

### Per gli utenti non-Ubuntu e non-GNOME

Questo repository è progettato solo per Ubuntu, dal 18.04 al 19.04 e distribuzioni **con GNOME 3.32**. Se vuoi il supporto per le distribuzioni non-GNOME e non-Ubuntu, visita il [Suru++ 25](https://github.com/gusbemacbe/suru-plus) di [@gusbemacbe](https://github.com/gusbemacbe).

### Dinsinstallazione

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus-ubuntu/master/install.sh | env uninstall=true sh
```

## Modifica delle icone alternative e del colore delle icone

### Firefox

Ci sono due opzioni che puoi scegliere:

#### Per cambiare il percorso dell'icona nel file desktop (raccomandato)

1. Vai alla `/usr/share/applications/`;
2. Trova il file di configurazione di *desktop* `Firefox`;
3. Apri il file con il tuo editore di testo favorito;
4. Trova l'opzione `Icon=...` e modificala con una di tre alternative: `Icon=firefox` o `Icon=firefox-20` o `Icon=firefox-mozilla`. Salvalo.

#### Per creare il collegamento

Esegui i comandi:

```
# Dipende da dove hai installato il tema di icone Suru++ Ubuntu
cd ~/.icons/Suru++-Ubuntu/apps/scalable`
cd /usr/share/icons/Suru++-Ubuntu/apps/scalable`

# Scegli una delle alternative:
ln -sfnr firefox-20.svg firefox.svg
ln -sfnr firefox-mozilla.svg firefox.svg
```

Per ritornare all'originale, hai bisogno di copiare l'icona originale `firefox.svg` dalla cartella `alternatives` sul repositorio, per la cartella `Suru++-Ubuntu/apps/scalable`. 

### Icona alternativa

1. Vai alla cartella `alternatives` sul repositorio;
2. Scegli una delle tue icone preferite e copiala per la `Suru++-Ubuntu/apps/scalable`.
3. Esegui i comandi:

```
cd ~/.icons/Suru++-Ubuntu/apps/scalable
# A esempio, crea il collegamento alternativo per l'icona senza suffisso: ln -sfnr backup-alt1.svg backup.svg
ln -sfnr nuovo.svg vecchio.svg
```

Per ritornare all'originale, hai bisogno di copiare l'icona originale senza suffisso dalla cartella from the folder `alternatives` sul repositorio, per la cartella `Suru++-Ubuntu/apps/scalable`. 

### Colore alternativo

1. Vai alla cartella `alternatives` sul repositorio;
2. Scegli uno dei colori preferiti delle icone e copialo per la `Suru++-Ubuntu/apps/scalable`.
3. Esegui i comandi:

```
cd ~/.icons/Suru++-Ubuntu/apps/scalable
# A esempio, crea il collegamento alternativo per l'icona senza suffisso: ln -sfnr backup-azzuro.svg backup.svg
ln -sfnr nuovo.svg vecchio.svg
```

Per ritornare all'originale, hai bisogno di copiare l'icona originale senza suffisso dalla cartella from the folder `alternatives` sul repositorio, per la cartella `Suru++-Ubuntu/apps/scalable`. 

## Bug consociuti

Per favore fa un clic per visitare sul Wiki:

### [App create tramite Snap](https://github.com/Bonandry/suru-plus-ubuntu/wiki/App-create-tramite-Snap)
### [App create tramite AppImage](https://github.com/Bonandry/suru-plus-ubuntu/wiki/App-create-tramite-AppImage)
### [Icone predefinite delle applicazioni con un nome brutto](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Icone-predefinite-delle-app-con-un-nome-brutto)
### [Icone non attraenti di Bluetooth Manager, Gigolo, Network Wifi, ecc.](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Icone-non-attraenti-di-Bluetooth-Manager,-Gigolo,-Network-Wifi,-ecc.)
### [Icone non riconosciute e brutte (Okular, ecc.)](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Icone-non-riconosciute-e-brutte-(Okular,-ecc.))
### [Supporti distribuzioni non-GNOME?](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Supporti-distribuzioni-non-GNOME%3F)

## Rapporto

Segnala, ma per favore fornisci informazioni ben dettagliate. Tu devi scrivere in inglese o italiano.

Prima di creare un nuovo *issue*, assicurati che:

- La richiesta di icona non è un duplicato;
- Il titolo contiene l'applicazione o il nome dell'icona (per esempio: `[Richiesta di Icona] Boostnote`).

**OSSERVAZIONE**

You'll find most of necessary entries for the icon request in a app's desktop file, usually placed in the `/usr/share/applications/` or `~/.local/share/applications` folder (for example: `/usr/share/applications/firefox.desktop`).

Troverai la maggior parte delle entrate necessarie per la richiesta di icona nel file di configurazione di *desktop* di un'app, di solito nella cartella `/usr/share/applications/` o `~/.local/share/applications` (ad esempio: `/usr/share/applications/firefox.desktop`).

- Nome dell'app
- Nome dell'icona
- Descrizione
- Pagina *web* (opzionale)
- Icona originale

Carica (o semplicemente trascina e rilascia) l'icona dell'app originale sotto. 

## Contributo

### Linee Guida di Progettazione

Le istruzioni e line guida di progettazione sono state mosse per la pagina del sito [Suru++ Site – Design Guidelines](https://gusbemacbe.github.io/suru-plus-site/guidelines.html) (in inglese).

### Kit di Strumenti

Puoi trovare i file e le palette nella cartella esterna [templates sul Suru++ 25](https://github.com/gusbemacbe/suru-plus/tree/master/templates)  e anche nella cartella `templates` di questo repositorio. 

## Autori e Collaboratori

Il set di icone di FreeDesktop Suru è progettato e sviluppato da:

- Sam Hewitt: <sam@snwh.org>

Il set e il concept originali di icone Suru sono stati creati da:

- Matthieu James
- Canonical Design Team

### Sviluppatori centrali (in ordine di apparizione)

- Andrea Bonanni (original author): <bonandry@gmail.com>
- Gustavo Costa (co-author and collaborator): <gusbemacbe@gmail.com>

### Collaboratori

- Chris Escarra: [@ChrisP4](https://github.com/ChrisP4)

## Registro delle modifiche

Per favore visita la lista di [rilasci](https://github.com/Bonandry/suru-plus-ubuntu/releases) per vedere i registri delle modifiche. 

O vedere il [registro delle modifiche pieno](CHANGELOG.md). 

## Crediti e Licenze

* CC-BYSA/GPL3 © Suru Icons di Sam Hewitt.
* GPL3 © 2018 Suru++ Ubuntu di Andrea Bonanni e Gustavo Costa. 
