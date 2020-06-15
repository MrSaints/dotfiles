#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    # Mac-specific
    sudo pacman -S --needed xf86-input-synaptics

    # Install yay
    mkdir ~/aur/
    git clone https://aur.archlinux.org/yay.git ~/aur/yay/
    cd ~/aur/yay/
    makepkg -si
elif hash apt 2>/dev/null; then
    echo "Debian"

    sudo apt update -y
    sudo apt upgrade -y
fi

# Create directory for screenshots
mkdir -p "$HOME/Screenshots/"

# Create workspaces
mkdir -p "$HOME/Workspace/golang/"

# Add to shell config:
# eval $(ssh-agent)
