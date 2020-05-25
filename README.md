# openbox-gnome-flashback [![LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

This is a simple fork of i3-gnome-flashback, which replaces i3 with Openbox.
It allows you to use Openbox in a GNOME-Flashback session. Large parts of this are based on the existing [`i3-gnome-flashback`](https://github.com/deuill/i3-gnome-flashback) project, which itself is largely based on [`i3-gnome`](https://github.com/lvillani/i3-gnome).

This has been tested working on GNOME version **3.36**.

# Installation

For Arch users see the [AUR package](https://aur.archlinux.org/packages/openbox-gnome-flashback/) for a more easy intallation.

For Ubuntu (19.10), ensure prerequisites are installed:
```
sudo apt install openbox gnome-flashback build-essential
```
Then install i3-gnome-flashback:
```
sudo make install
```
And to make shure that gnome-flashback can set a background (so that you can easily change it from gnome's settings):
```
gsettings set org.gnome.gnome-flashback root-background true
```
Further configuration may be done either by using gsettings or by using `dconf-editor` .

For other distributions, clone this repository and run `sudo make install` .
To uninstall, `cd` into the cloned directory (or re-clone it if you deleted it) and type `sudo make uninstall` .

# Notes

To understand how the files in this repo work to initialize an Openbox and GNOME session, refer to this [GNOME wiki](https://wiki.gnome.org/Projects/SessionManagement/RequiredComponents) on session management.
