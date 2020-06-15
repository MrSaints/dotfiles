#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    sudo pacman -S --needed i3
elif hash apt 2>/dev/null; then
    echo "Debian"

    sudo apt install -y i3
fi
