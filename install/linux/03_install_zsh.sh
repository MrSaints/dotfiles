#!/bin/bash

REV=$(uname -r)

# Installs oh-my-zsh, and its dependencies
# Source: https://github.com/robbyrussell/oh-my-zsh
if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    sudo pacman -S --needed zsh
elif hash apt 2>/dev/null; then
    echo "Debian"

    sudo apt install -y zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
