<p align="center"> 
<img src="Title.svg" alt="Title">
</p>

<h3 align="center">A third-party Suru icons for Ubuntu 18.04</h3>
<h3 align="center">Optimized for Ubuntu 18.04</h3>
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
  - [This icon theme do not apply correctly the apps icons](#this-icon-theme-do-not-apply-correctly-the-apps-icons)
  - [Some icons are not applied correctly and look bad in KDE.](#some-icons-are-not-applied-correctly-and-look-bad-in-kde)
  - [Do you support for other distributions, as Arch Linux, Linux Mint, etc.?](#do-you-support-for-other-distributions-as-arch-linux-linux-mint-etc)
- [Report](#report)
- [Contribution](#contribution)
- [Contributors](#contributors)
- [Changelog](#changelog)
- [Credit and Licences](#credit-and-licences)

## What is new in the version 17.1?

- Added three alternatives of Firefox that you can choose:

| <img src="apps/scalable/firefox.svg" alt="Firefox Traditional" height="100px"> | <img src="apps/scalable/firefox-20.svg" alt="Firefox Suru++ 20" height="100px"> | <img src="apps/scalable/firefox-mozilla.svg" alt="Firefox Mozilla" height="100px"> |
| :----------------------------------------------------------------------------: | :-----------------------------------------------------------------------------: | :--------------------------------------------------------------------------------: |
| Traditional                                                                    | Suru++ 20                                                                       | Mozilla Unofficial                                                                 |
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

This repository is designed only for Ubuntu. If you want the support for non-GNOME and non-Ubuntu, please visit [@gusbemacbe](https://github.com/gusbemacbe)’s [Suru++ 20](https://github.com/gusbemacbe/suru-plus).

### With CLI

* [For users of old Ubuntu versions and Ubuntu 16.04](instructions_with_cli1.md)
* [For users of Ubuntu 16.04.4 and above and for Ubuntu 18.04](instructions_with_cli2.md)

### Without CLI

* [For users of old Ubuntu versions and Ubuntu 16.04](instructions_without_cli1.md)
* [For users of Ubuntu 16.04.4 and above and for Ubuntu 18.04](instructions_without_cli2.md)

## Known bugs

### This icon theme do not apply correctly the apps icons

Some apps, as AppImage-built, Snap-built and dpkg-installed apps do not use relative path or relative icon. They use absolute path. Other apps use misleading icon name, for example, GitHub Desktop uses the `Icon=desktop`.  

Therefore, you must modify name of icon in the desktop configuration files at `/usr/share/applications`. We recommend you to back the modified desktop files to `your_name/.local/share/applications` because with the new updates, the system will revert to the original file. 

### Some icons are not applied correctly and look bad in KDE.

Because of this, I will no longer offer support for KDE due to these bugs. The KDE environment itself does not apply correctly the icons. 

### Do you support for other distributions, as Arch Linux, Linux Mint, etc.?

No, because if I will add everything, it will cause a lot of bugs and increase the file size. I would not like to work with bugs and to have headache. I prefer focusing only on Ubuntu distributions. 

Therefore, you must consider my collaborator's alternative icon theme if you ant this support: [Suru++ 20](https://github.com/gusbemacbe/suru-plus).

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