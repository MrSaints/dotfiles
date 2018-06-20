#!/usr/bin/env bash
REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
    sudo pacman -S --needed rxvt-unicode i3
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
