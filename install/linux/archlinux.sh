#!/bin/bash

./_setup_directories.sh

mkdir ~/aur/
git clone https://aur.archlinux.org/yay.git ~/aur/yay/
cd ~/aur/yay/
makepkg -si

# General utils
sudo pacman -S --needed \
    alsa-utils \
    bluez-utils \
    pulseaudio-alsa \
    pulseaudio-bluetooth \
    curl \
    feh \
    git \
    jq \
    openssh \
    p7zip \
    scrot \
    wget \
    zsh

# Thunar file manager with thumbnails, and support for samba
sudo pacman -S --needed \
    thunar \
    tumbler \
    gvfs gvfs-smb sshfs

sudo pacman -S --needed i3

# Yubikey
sudo pacman -S --needed pcsclite ccid

sudo pacman -S --needed go

sudo pacman -S --needed bat fd ripgrep

yay -S \
    alacritty \
    starship \
    atuin \
    kubectl-bin \
    google-chrome-beta \
    git-delta

sudo pacman -S --needed docker kubectx k9s doctl
sudo systemctl enable docker.service
sudo usermod -aG docker $(whoami)
