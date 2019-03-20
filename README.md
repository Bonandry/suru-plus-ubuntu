<p align="center"> 
<img src="Title.svg" alt="Title">
</p>

<h3 align="center">A third-party Suru icons for Ubuntu</h3>
<h3 align="center">Optimized for Ubuntu 18.04, 18.10 and 19.04</h3>
<h3 align="center">An elegant, modern and sweet Suru icons based on <a href="https://snwh.org/suru">Suru Icons</a> by Sam Hewitt</h3>

![Screenshot](screenshot.png)

<h1>Index</h1>

- [What is new in the version 17.1?](#what-is-new-in-the-version-171)
- [Installation](#installation)
  - [For Lubuntu users](#for-lubuntu-users)
  - [For non-Ubuntu users](#for-non-ubuntu-users)
  - [With CLI](#with-cli)
  - [Without CLI](#without-cli)
- [Known bugs](#known-bugs)
  - [Snap-built apps](#snap-built-apps)
  - [AppImage-built apps](#appimage-built-apps)
  - [Hardcoded application icons with ugly name](#hardcoded-application-icons-with-ugly-name)
  - [Unrecognised and ugly icons](#unrecognised-and-ugly-icons)
    - [Okular icon and other icons](#okular-icon-and-other-icons)
- [Report](#report)
- [Contribution](#contribution)
- [Contributors](#contributors)
- [Changelog](#changelog)
- [Credit and Licences](#credit-and-licences)


## What is new in the version 17.1?

- Added three alternatives of Firefox that you can choose:

| <img src="apps/scalable/firefox.svg" alt="Firefox Traditional" height="100px"> | <img src="apps/scalable/firefox-20.svg" alt="Firefox Suru++ 20" height="100px"> | <img src="apps/scalable/firefox-mozilla.svg" alt="Firefox Mozilla" height="100px"> |
| :----------------------------------------------------------------------------: | :-----------------------------------------------------------------------------: | :--------------------------------------------------------------------------------: |
| Traditional                                                                    | Suru++ 25                                                                       | Mozilla Unofficial                                                                 |
| `firefox.svg`                                                                  | `firefox-20.svg`                                                                | `firefox-mozilla.svg`                                                              |

**How to change the alternative of these?**

1. Go to `/usr/share/applications/`;
2. Go to the desktop file `Firefox`;
3. Open the file with your favourite text editor;
4. Find `Icon=...` and modify it with one of three alternatives: `Icon=firefox` or `Icon=firefox-20` or `Icon=firefox-mozilla`. Save it.


## Installation

### For Lubuntu users

As you want 24px and 26px icons to be colourful in the panel, and want the dark theme, please visit:

* [Suru++ Lubuntu](https://github.com/gusbemacbe/suru-plus-lubuntu/)
* [Suru++ Dark Lubuntu](https://github.com/gusbemacbe/suru-plus-dark-lubuntu/)

### For non-Ubuntu users

This repository is designed only for Ubuntu. If you want the support for non-GNOME and non-Ubuntu, please visit [@gusbemacbe](https://github.com/gusbemacbe)’s [Suru++ 25](https://github.com/gusbemacbe/suru-plus).

### With CLI

* [For users of old Ubuntu versions and Ubuntu 16.04](instructions_with_cli1.md)
* [For users of Ubuntu 16.04.4 and above and for Ubuntu 18.04](instructions_with_cli2.md)

### Without CLI

* [For users of old Ubuntu versions and Ubuntu 16.04](instructions_without_cli1.md)
* [For users of Ubuntu 16.04.4 and above and for Ubuntu 18.04](instructions_without_cli2.md)

## Known bugs

### Snap-built apps

Unfortunately the snap-built apps are not supported almost by any icons themes, because the icons are hardcoded and the desktop files are not hosted in the folder `~/.local/share/applications` or `/usr/share/applications`.

To solve it, please follow the instructions:

1. Do:

```bash
# Copy all desktop files of all snap-built apps to "~/.local/share/applications"
sudo cp /var/lib/snapd/desktop/applications/*.desktop ~/.local/share/applications
# To de-sudo the files
sudo chmod -R 777 ~/.local/share/applications
# To remove the duplicates
sudo rm /var/lib/snapd/desktop/applications/*.desktop
```

2. Go to the directory  `~/.local/share/applications`;
3. Open each desktop file of snap app with your favourite text editor and modify the encoded path of `Icon` to the simple path with no extension. For example, if you use Insomnia:

```bash
Icon=snap/icons/icon.png
Icon=insomnia
```

4. Run `update-desktop-database` in the terminal.

### AppImage-built apps

With AppImageLauncher installed, you click an AppImage, it is automatically integrated to `~/Applications`, and desktop files are automatically created into `~/local/share/applications`. But if you modify one of the AppImage-built app desktop file to correct the icon path, AppImageLauncher reverts automatically the desktop file to the original and keeps again the icon path hardcoded. It also removes the option `StartupWMClass`. We recommend you to ban `AppImageLauncher`. 

1. Remove `appimagelauncher` via terminal;
2. Create `~/Applications/AppImages/`, move all AppImages to this folder. Make all AppImages executable and trusted:

```bash
chmod a+x *.AppImage
```

3. Reboot;
4. Create the desktop files manually in the directory `~/.local/share/applications`. Do not forget of adding the option `StartupWNClass` or the icon will be unrecognised or ugly. The desktop file, for example, `ColourPicker.desktop`, should be like:

```
[Desktop Entry]
Categories = Graphics;
Comment = A mininal but complete color picker
Comment[en_GB] = A mininal but complete colour picker
Exec = $HOME/Applications/AppImages/ColorPicker.AppImages
GenericName = Color Picker
GenericName[en_GB] = Colour Picker
Icon = colorpicker
Name = Color Picker
Name[en_GB] = Colour Picker
StartupNotify = true
StartupWMClass = ColorPicker
Terminal = false
Type = Application
Version = 1.0
```

And run `update-desktop-database`.

**Tips**

* To know which `StartupWNClass` name, it is the original same AppImage, for example, see in bold: <b><code>ColorPicker</b>.AppImage</code>. If it does not work, you need to extract the AppImage to figure the `bin` shell name. 
* If you are foreigner and want comment and name in your native language, you can add, for example, `Comment[en_GB]`, `GenericName[en_GB]` and `Name[en_GB]`. If to Spanish, it would  be`[es]`, and to Spanish from Mexico, `[es_MX]`. 
* The AppImage names should remain original, but if you want to rename, you are free, but for the `StartupWNClass` name, you need to put the original name of that AppImage.

### Hardcoded application icons with ugly name

We have already icons, but it is wrong or ugly name, or because the icon is hardcoded. For example, the application GitHub Desktop used `Icon=desktop.png` and other apps, like Insomnia, use `Icon=icon.png`, or worse, `Icon=stupid/path/icon.png`. 

To deal with hardcoded application icons we recommend to install [hardcode-fixer](https://github.com/Foggalong/hardcode-fixer). Suru++ supports most of the applications in the list. If [hardcode-fixer](https://github.com/Foggalong/hardcode-fixer) doesn't support your favourite app yet, please open an [issue here](https://github.com/Foggalong/hardcode-fixer/issues) or edit your .desktop file manually.

### Unrecognised and ugly icons

#### Okular icon and other icons

Not just Suru++ Ubuntu and Suru++ 25, it also affects Antü, Flat Remix, La Capitaine, Numix, Papirus, and Zafiro icons theme. It is a missed `StartupWMClass` option in the desktop files in KDE and an icon cache bug in GNOME. 

1. Install and use [StartupWMClassFixer](https://github.com/bilelmoussaoui/StartupWMClassFixer);
2. Install and use [Stacer](https://github.com/oguzhaninan/Stacer) to clean caches;
3. Log out and log in.

## Report

* Do you find the missed icons?
* Do you find the misused icons?
* Did you find the errors?

Report, but please provide well-detailed informations.

## Contribution

* Would you like to improve our repository?
* Do you want to add and request the icons? Make a pull request and we will analyse and approve or not.

## Contributors

The contributors is on the file [AUTHORS](AUTHORS).

## Changelog

Please visit the [CHANGELOG](CHANGELOG).

## Credit and Licences

CC-BYSA/GPL3 © Suru Icons by Sam Hewitt.
GPL3 © 2018 Suru++ Ubuntu by Andrea Bonanni and Gustavo Costa. 
