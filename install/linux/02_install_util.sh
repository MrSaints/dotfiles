#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    sudo pacman -S --needed \
        alsa-utils \
        git \
        openssh \
        p7zip \
        scrot \
        wget
elif hash apt 2>/dev/null; then
    echo "Debian"

    sudo apt install -y \
        alsa-utils \
        apt-transport-https \
        ca-certificates \
        curl \
        git \
        gnupg-agent \
        jq \
        lib-ssl-dev \
        p7zip \
        scrot \
        software-properties-common \
        wget
fi
