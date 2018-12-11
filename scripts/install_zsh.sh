#!/usr/bin/env bash
REV=$(uname -r)

# Installs oh-my-zsh, and its dependencies
# Source: https://github.com/robbyrussell/oh-my-zsh
if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
    sudo pacman -S --needed git zsh
elif hash apt-get 2>/dev/null; then
    echo "Debian"
    sudo apt-get install git
    sudo apt-get install zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
