#!/usr/bin/env bash
REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
    sudo pacman -S --needed rxvt-unicode i3 feh scrot pcmanfm p7zip wget alsa-utils openssh wget

    # Mac-specific
    sudo pacman -S --needed xf86-input-synaptics

    mkdir ~/aur/
    git clone https://aur.archlinux.org/yay.git ~/aur/yay/
    cd ~/aur/yay/
    makepkg -si
else
    echo "Debian"
    # Installs urxvt terminal (with support for 256 colours)
    sudo apt-get install rxvt-unicode-256color

    # Installs i3wm (stable)
    sudo bash -c 'echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list'
    sudo apt-get --allow-unauthenticated install sur5r-keyring
    sudo apt-get update
    sudo apt-get install i3
fi
