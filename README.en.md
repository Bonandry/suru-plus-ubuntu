<p align="center"> 
<img src="images/logo-nuovo.svg" alt="Logotype">
</p>

<p align="center"> 
<img src="images/Title - English.svg" alt="Title">
</p>

![Screenshot 1](images/screenshot1.png)
![Screenshot 2](images/screenshot2.png)

<h1>Index</h1>

Or you can visit quickly the [WIki](https://github.com/Bonandry/suru-plus-ubuntu/wiki).

- [What is new in the version?](#what-is-new-in-the-version)
  - [v17.1](#v171)
- [Installing with CLI](#installing-with-cli)
  - [ROOT directory (recommended)](#root-directory-recommended)
  - [HOME directory for GTK](#home-directory-for-gtk)
  - [For Lubuntu users](#for-lubuntu-users)
  - [For non-Ubuntu users](#for-non-ubuntu-users)
  - [Uninstall](#uninstall)
- [Changing the alternative icon and the icons colour](#changing-the-alternative-icon-and-the-icons-colour)
  - [Firefox](#firefox)
    - [To change the icon path in the desktop file (recommended)](#to-change-the-icon-path-in-the-desktop-file-recommended)
    - [To create the symlink](#to-create-the-symlink)
  - [Alternative Icon](#alternative-icon)
  - [Alternative Colour](#alternative-colour)
- [Known and unknown bugs](#known-and-unknown-bugs)
  - [Snap-built apps](#snap-built-apps)
  - [AppImage-built apps](#appimage-built-apps)
  - [Hardcoded application icons with ugly name](#hardcoded-application-icons-with-ugly-name)
  - [Unattractive icons of Bluetooth Manager, Gigolo, Network Wifi, etc.](#unattractive-icons-of-bluetooth-manager-gigolo-network-wifi-etc)
  - [Unrecognised and ugly icons (Okular, etc.))](#unrecognised-and-ugly-icons-okular-etc)
  - [Do you support non-GNOME distros?](#do-you-support-non-gnome-distros)
- [Report](#report)
- [Contribution](#contribution)
- [Authors and Contributors](#authors-and-contributors)
  - [Core developers (in order of appearance):](#core-developers-in-order-of-appearance)
  - [Contributors:](#contributors)
- [Changelog](#changelog)
- [Credits and Licences](#credits-and-licences)

## What is new in the version?

### v17.1

Added three alternatives of Firefox that you can choose:

<img src="alternatives/firefox.svg?sanitize=true"          alt="Firefox Traditional" height="65px">
<img src="alternatives/firefox-20.svg?sanitize=true"       alt="Firefox Suru++ 25"   height="65px">
<img src="alternatives/firefox-mozilla.svg?sanitize=true"  alt="Firefox Mozilla"     height="65px">

## Installing with CLI

Use the scripts to install the latest version directly from this repository (independently of your distribution):

**NOTE:** Use the same command to update the icon theme.

### ROOT directory (recommended)

```
wget -qO- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | sh
```

### HOME directory for GTK

```
wget -qO- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | env DESTDIR="$HOME/.icons" sh
```

### For Lubuntu users

As you want 24px and 26px icons to be colourful in the panel, and want the dark theme, please visit:

* [Suru++ Lubuntu](https://github.com/gusbemacbe/suru-plus-lubuntu/)

### For non-Ubuntu users

This repository is designed only for Ubuntu, from 18.04 to 19.04. If you want the support for non-GNOME and non-Ubuntu, please visit [@gusbemacbe](https://github.com/gusbemacbe)’s [Suru++ 25](https://github.com/gusbemacbe/suru-plus).

### Uninstall

```
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus-ubuntu/master/install.sh | env uninstall=true sh
```

## Changing the alternative icon and the icons colour

### Firefox

There are two options you can choose:

#### To change the icon path in the desktop file (recommended)

1. Go to `/usr/share/applications/`;
2. Go to the desktop file `Firefox`;
3. Open the file with your favourite text editor;
4. Find `Icon=...` and modify it with one of three alternatives: `Icon=firefox` or `Icon=firefox-20` or `Icon=firefox-mozilla`. Save it.

#### To create the symlink

Run the command:

```
# It depends on where you have installed Suru++ Ubuntu icons theme
cd ~/.icons/Suru++-Ubuntu/apps/scalable`
cd /usr/share/icons/Suru++-Ubuntu/apps/scalable`

# Choose one of your favourite icon:
ln -sfnr firefox-20.svg firefox.svg
ln -sfnr firefox-mozilla.svg firefox.svg
```

To revert to the original, you need to copy the original `firefox.svg` from the folder `alternatives` at the repository, to the folder `Suru++-Ubuntu/apps/scalable`. 

### Alternative Icon

1. Go to the folder `alternatives`
2. Choose one of your favourite icon and copy it to `Suru++-Ubuntu/apps/scalable`.
3. Run the commands:

```
cd ~/.icons/Suru++-Ubuntu/apps/scalable
# for example, create the alternative symlink to the icon without suffix: ln -sfnr backup-alt1.svg backup.svg
ln -sfnr new.svg old.svg
```

To revert to the original, you need to copy the original icon without suffix from the folder `alternatives` at the repository, to the folder `Suru++-Ubuntu/apps/scalable`. 

### Alternative Colour

1. Go to the folder `alternatives`
2. Choose one of your favourite icon colour and copy it to `Suru++-Ubuntu/apps/scalable`.
3. Run the commands:

```
cd ~/.icons/Suru++-Ubuntu/apps/scalable
# for example, create the alternative symlink to the icon without suffix: ln -sfnr backup-azzuro.svg backup.svg
ln -sfnr new.svg old.svg
```

To revert to the original, you need to copy the original icon without suffix from the folder `alternatives` at the repository, to the folder `Suru++-Ubuntu/apps/scalable`. 

## Known and unknown bugs

Please click to visit at the wiki:

### [Snap-built apps](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Snap-built-apps)
### [AppImage-built apps](https://github.com/Bonandry/suru-plus-ubuntu/wiki/AppImage-built-apps)
### [Hardcoded application icons with ugly name](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Hardcoded-application-icons-with-ugly-name)
### [Unattractive icons of Bluetooth Manager, Gigolo, Network Wifi, etc.](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Unattractive-icons-of-Bluetooth-Manager,### -Gigolo,-Network-Wifi,-etc.)
### [Unrecognised and ugly icons (Okular, etc.)](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Unrecognised-and-ugly-icons-(Okular,-etc.))
### [Do you support non-GNOME distros?](https://github.com/Bonandry/suru-plus-ubuntu/wiki/Do-you-support-non-GNOME-distros%3F)

## Report

Report, but please provide well-detailed information. It is required to write in English or Italian.

Before creating a new issue ensure that:

- The icon request is not a duplicate;
- The title contains application or icon name (for example: `[Icon request] Boostnote`).

**NOTE**

You'll find most of necessary entries for the icon request in a app's desktop file, usually placed in the `/usr/share/applications/` or `~/.local/share/applications` folder (for example: `/usr/share/applications/firefox.desktop`).

- App Name
- Icon Name
- Description
- Webpage (optional)
- Original Icon

Upload (or just drag and drop) the original app icon below.

## Contribution

See the file [CONTRIBUTING.md](CONTRIBUTING.md)

## Authors and Contributors

The FreeDesktop Suru icon set is designed and developed by:

- Sam Hewitt: <sam@snwh.org>

The original Suru icon set and concept was created by:

- Matthieu James
- Canonical Design Team

### Core developers (in order of appearance):

- Andrea Bonanni (original author): <bonandry@gmail.com>
- Gustavo Costa (co-author and collaborator): <gusbemacbe@gmail.com>

### Contributors:

- Chris Escarra: [@ChrisP4](https://github.com/ChrisP4)

## Changelog

Please visit the [release list](https://github.com/Bonandry/suru-plus-ubuntu/releases) to see the changelogs. 

Or see the [full changelog](CHANGELOG.md). 

## Credits and Licences

* CC-BYSA/GPL3 © Suru Icons by Sam Hewitt.
* GPL3 © 2018 Suru++ Ubuntu by Andrea Bonanni and Gustavo Costa. 
