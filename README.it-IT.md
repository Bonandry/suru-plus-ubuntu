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
  - [v25.0](#v250)
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
- [Modifica del colore delle cartelle](#modifica-del-colore-delle-cartelle)
- [Bug consociuti](#bug-consociuti)
  - [App create tramite Snap](#app-create-tramite-snap)
  - [App create tramite AppImage](#app-create-tramite-appimage)
  - [Icone predefinite delle applicazioni con un nome brutto](#icone-predefinite-delle-applicazioni-con-un-nome-brutto)
  - [Icone non attraenti di Bluetooth Manager, Gigolo, Network Wifi, ecc.](#icone-non-attraenti-di-bluetooth-manager-gigolo-network-wifi-ecc)
  - [Icone non riconosciute e brutte (Okular, ecc.)](#icone-non-riconosciute-e-brutte-okular-ecc)
  - [Supporti distribuzioni non-Ubuntu e non-GNOME?](#supporti-distribuzioni-non-ubuntu-e-non-gnome)
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

<img align="left" src="alternatives/firefox.svg?sanitize=true" alt="Firefox Traditional" height="65px"> 
<img align="left" src="alternatives/firefox-20.svg?sanitize=true" alt="Firefox Suru++ 25" height="65px"> 
<img src="alternatives/firefox-mozilla.svg?sanitize=true"  alt="Firefox Mozilla" height="65px">

### v25.0

* Aggiornata dal Suru++ 25;
* Molte icone sono state reimmaginate con un'apparenza di GNOME 3.32, basta fare un clic su una di esse per visualizzare l'anteprima di ciò che è:

<img align="left" alt="anteprima di icone"          title="anteprima di icone"          height="65px" src="images/gnome-3.32/org.gnome.IconPreview.png"> 
<img align="left" alt="bloc-notes"                  title="bloc-notes"                  height="65px" src="images/gnome-3.32/bloc-notes.png"> 
<img align="left" alt="calendario"                  title="calendario"                  height="65px" src="images/gnome-3.32/calendario.png"> 
<img align="left" alt="caveau"                      title="caveau"                      height="65px" src="images/gnome-3.32/caveau.png"> 
<img align="left" alt="crittografia"                title="crittografia"                height="65px" src="images/gnome-3.32/crittografia.png"> 
<img align="left" alt="cronologia"                  title="cronologia"                  height="65px" src="images/gnome-3.32/cronologia.png"> 
<img align="left" alt="dizionario"                  title="dizionario"                  height="65px" src="images/gnome-3.32/dizionario.png"> 
<img align="left" alt="effeti"                      title="effeti"                      height="65px" src="images/gnome-3.32/display.im6.png"> 
<img align="left" alt="libro di font"               title="libro di font"               height="65px" src="images/gnome-3.32/font.png"> 
<img align="left" alt="mine"                        title="mine"                        height="65px" src="images/gnome-3.32/mine.png"> 
<img align="left" alt="MPV"                         title="MPV"                         height="65px" src="images/gnome-3.32/mpv.png"> 
<img align="left" alt="rubrica"                     title="rubrica"                     height="65px" src="images/gnome-3.32/rubrica.png"> 
<img align="left" alt="smartcard"                   title="smartcard"                   height="65px" src="images/gnome-3.32/gcr-smart-card.png"> 
<img align="left" alt="telecamera"                  title="telecamera"                  height="65px" src="images/gnome-3.32/telecamera.png"> 
<img align="left" alt="visualizzatore di immagine"  title="visualizzatore di immagine"  height="65px" src="images/gnome-3.32/gthumb.png"> 
<img align="left" alt="visualizzatore di immagine"  title="visualizzatore di immagine"  height="65px" src="images/gnome-3.32/visualizzatore-di-immagini.png"> 
<img align="none" alt="video"                       title="video"                       height="65px" src="images/gnome-3.32/totem.png"> 

* Hai più opzioni per scegliere una delle icone alternative o uno dei colori di icone che preferisci di più, ad esempio, l'icona di *backup*:
  * Backup
    * Pittogrammi alternativi

      <img src="alternatives/backup.svg?sanitize=true"      alt="backup official" height="64px" align="left">
      <img src="alternatives/backup-alt1.svg?sanitize=true" alt="backup alt 1"    height="64px" align="left">
      <img src="alternatives/backup-alt2.svg?sanitize=true" alt="backup alt 2"    height="64px" align="left">
      <img src="alternatives/backup-alt3.svg?sanitize=true" alt="backup alt 3"    height="64px" align="left">
      <img src="alternatives/backup-alt4.svg?sanitize=true" alt="backup alt 4"    height="64px">

    * Colori alternativi

      <img src="alternatives/backup-acquamarina.svg?sanitize=true"  alt="backup aquamarine" height="64px" align="left">
      <img src="alternatives/backup-arancione.svg?sanitize=true"    alt="backup orange"     height="64px" align="left">
      <img src="alternatives/backup-azzuro.svg?sanitize=true"       alt="backup sky blue"   height="64px" align="left">
      <img src="alternatives/backup-giallo.svg?sanitize=true"       alt="backup yellow"     height="64px" align="left">
      <img src="alternatives/backup-grigio.svg?sanitize=true"       alt="backup grey"       height="64px" align="left">
      <img src="alternatives/backup-rosa.svg?sanitize=true"         alt="backup pink"       height="64px" align="left">
      <img src="alternatives/backup-rosso.svg?sanitize=true"        alt="backup red"        height="64px" align="left">
      <img src="alternatives/backup-verde.svg?sanitize=true"        alt="backup green"      height="64px">

<br/>

* Nuovi colori delle cartelle. Controlla i colori disponibili nell'articolo [Modifica del colore delle cartelle](#modifica-del-colore-delle-cartelle).

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

## Modifica del colore delle cartelle

I colori disponibili in Suru++ Ubuntu:

<img align="left" src="images/folders/folder-aubergine.svg?sanitize=true"      alt="cartella melanzia"       height="64px">
<img align="left" src="images/folders/folder-blue.svg?sanitize=true"           alt="cartella azzura"         height="64px">
<img align="left" src="images/folders/folder-bordeaux.svg?sanitize=true"       alt="cartella bordeaux"       height="64px">
<img align="left" src="images/folders/folder-canonical.svg?sanitize=true"      alt="cartella canonical"      height="64px">
<img align="left" src="images/folders/folder-cyan.svg?sanitize=true"           alt="cartella ciana"          height="64px">
<img align="left" src="images/folders/folder-darkblue.svg?sanitize=true"       alt="cartella azzura scura"   height="64px">
<img align="left" src="images/folders/folder-green.svg?sanitize=true"          alt="cartella verde"          height="64px">
<img align="left" src="images/folders/folder-orange.svg?sanitize=true"         alt="cartella arancione"      height="64px">
<img align="left" src="images/folders/folder-purple.svg?sanitize=true"         alt="cartella porpora"        height="64px">
<img align="left" src="images/folders/folder-red.svg?sanitize=true"            alt="cartella rossa"          height="64px">
<img align="left" src="images/folders/folder-vermillion.svg?sanitize=true"     alt="cartella vermiglione"    height="64px">
<img src="images/folders/folder-yellow.svg?sanitize=true"         alt="cartella gialla"         height="64px">

Per modificare il colore delle cartelle, devi installare il [Suru++ Folders](https://github.com/gusbemacbe/suru-plus-folders).

## Bug consociuti

### App create tramite Snap

Purtroppo le app create tramite Snap non sono supportate quasi da alcun tema di icone, perché le icone sono predefinite e i file di configurazione di *desktop* non sono ospitati nella cartella `~/.local/share/applications` o `/usr/share/applications`.

Per risolverlo, segui le istruzioni:

1. Fai:

```bash
# Copia tutti i file di configurazione di desktop di tutte le app create tramite Snap per la "~/.local/share/applications"
sudo cp /var/lib/snapd/desktop/applications/*.desktop ~/.local/share/applications
# Per rendere pubblicamente accessibili i file
sudo chmod -R 777 ~/.local/share/applications
# Per rimuovere i duplicati
sudo rm /var/lib/snapd/desktop/applications/*.desktop
```

2. Vai alla cartella  `~/.local/share/applications`;
3. Apri ciascun file desktop dell'app Snap con il tuo editor di testo favorito e sostituisci il percorso codificato di `Icon` per il percorso semplice senza estensione. Ad esempio, se utilizzi Insonnia:

```bash
# Sostituisci...
Icon=snap/icons/icon.png
# per
Icon=insomnia
```

4. Esegui il commando `update-desktop-database` nel terminale.

### App create tramite AppImage

Con AppImageLauncher installato, quando fai clic su un'AppImage, esso viene automaticamente integrato nella cartella `~/Applicazioni` e i file di configurazione di *desktop* sono automaticamente creati nella cartella `~/local/share/applications`. Ma, se modifichi uno dei file di configurazione di *desktop* dell'app creata tramite AppImage per correggere il percorso dell'icona, AppImageLauncher ripristina automaticamente il file di configurazione di *desktop* per il percorso originale e mantiene nuovamente il percorso dell'icona predefinito. Rimuove anche l'opzione `StartupWMClass`. Ti consigliamo di rimuovere `AppImageLauncher`.

1. Rimuovi `appimagelauncher` nel terminale;
2. Crea la cartella `~/Applications/AppImages/`, muovi tutti gli AppImage per questa cartella. 
3. Rendi tutti gli AppImage eseguibili e affidabili nel terminale:

```bash
chmod a+x *.AppImage
```

3. Riavvia;
4. Crea i file di configurazione di *desktop* manualmente nella cartella `~/.local/share/applications`. Non dimenticare di aggiungere l'opzione `StartupWNClass` o l'icona sarà sconosciuta o brutta. Il file di configurazione di *desktop*, per esempio, `ColourPicker.desktop`, dovrebbe essere come:

```
[Desktop Entry]
Categories = Graphics;
Comment = A mininal but complete color picker
Comment[en_GB] = A mininal but complete colour picker
Exec = $HOME/Applications/AppImages/ColorPicker.AppImages
GenericName = Color Picker
GenericName[en_GB] = Colour Picker
Icon = colorpicker
Keywords = colorpicker; color-picker
Keywords[en_GB] = colourpicker; colour-picker
# MimeType = application/illustrator; application/pdf;
Name = Color Picker
Name[en_GB] = Colour Picker
StartupNotify = true
StartupWMClass = ColorPicker
Terminal = false
Type = Application
Version = 1.0
# X-AppImage-Version = 9.0
X-Ayatana-Desktop-Shortcuts = Color Picker
X-GNOME-FullName = Minimal Color Picker
X-GNOME-FullName[en_GB] = Minimal Colour Picker
X-DBUS-ServiceName = ColorPicker
```

Ed esegui il commando `update-desktop-database` nel terminale.

**Suggerimenti**

1. Per sapere quale il nome dell'opzione `StartupWNClass`, per esempio, 
  * Vedi in grassetto: <b><code>ColorPicker</b>.AppImage</code>;
  * Se non funziona, hai bisogno di estrarre l'AppImage per scoprire il nome della shell `bin`;
  * Se non funziona ancora, controlla e scopri il nome del titolo nel pannello quando apri l'applicazione AppImage.
2. Se sei italofono nativo o non-nativo e vuoi commentario e nome in tua lingua, puoi aggiungere, per esempio, `Comment[en_GB]`, `GenericName[en_GB]`, `Keywords[en_GB]`, `Name[en_GB]` e `X-GNOME-FullName[en_GB]`. Se per in italiano, sarebbe `[it]`, e per in italiano svizzero, `[it_CH]`. 
3. Il nome degli AppImage dovrebbe rimanere originale, ma se vuoi rinominare, sei libero, ma per il nome dell'opzione `StartupWNClass`, hai bisogno di mantenere il nome original di quell'AppImage, come vedi nell'elemento 1 sopra.

### Icone predefinite delle applicazioni con un nome brutto

Abbiamo già delle icone, ma è un nome sbagliato o brutto o perché l'icona è predefinita. Per esempio, la vecchia versione dell'applicazione GitHub Desktop utilizzava `Icon=desktop.png` e altre app, come Insomnia, utilizzano `Icon=icon.png`, o peggio, `Icon=stupido/percorsa/icona.png`. 

Per trattare le icone predefinite dell'applicazione, raccomandiamo di installare il *plugin* [hardcode-fixer](https://github.com/Foggalong/hardcode-fixer). Suru++ supporta la maggior parte delle applicazioni in questa lista. Se [hardcode-fixer](https://github.com/Foggalong/hardcode-fixer) non supporta ancora la tua applicazione favorita, per favore, apri un [*issue* qui](https://github.com/Foggalong/hardcode-fixer/issues) o modifica il tuo file `.desktop` manualmente. 

### Icone non attraenti di Bluetooth Manager, Gigolo, Network Wifi, ecc.

Perché i file di configurazione di *desktop* utilizzano le icone di 16px delle cartelle `actions`, `mimetypes`, `panel` e `places` e non le icone di `apps` e `categories`. Perciò, hai bisogno di modificare manualmente i **nomi generici di icona** sui file di configurazione di *desktop* per prendere le icone di `apps`. 

### Icone non riconosciute e brutte (Okular, ecc.)

Non solo Suru++ Ubuntu e Suru++ 25, ma anche i temi di icone Antü, Flat Remix, La Capitaine, Newaita, Numix, Papirus e Zafiro. È un'opzione `StartupWMClass` assente nei file di configurazione di *desktop* in KDE e un *bug* di *cache* delle icone in GNOME e KDE.

1. Installa e utilizza [StartupWMClassFixer](https://github.com/bilelmoussaoui/StartupWMClassFixer) per correggere l'opzione assente `StartupWMClass`;
2. Installa e utilizza [Stacer](https://github.com/oguzhaninan/Stacer) per pulire *cache*;
3. Esci dalla scrivania e accedi alla scrivania.

### Supporti distribuzioni non-Ubuntu e non-GNOME?

No, non sopporterò. Se aggiungo qualcos'altra a questo tema di icone, aumenterà i *bug*, la bruttezza in KDE e la dimensione dell'archivio. Non mi piacerebbe lavorare con i *bugs* e avere mal di testa. Devi considerare l'alternativo tema di icone: [Suru++ 25](https://github.com/gusbemacbe/suru-plus) di [@gusbemacbe](https://github.com/gusbemacbe).

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
