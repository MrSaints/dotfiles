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

    sudo add-apt-repository ppa:git-core/ppa

    sudo apt update -y

    sudo apt install -y \
        alsa-utils \
        apt-transport-https \
        ca-certificates \
        clang \
        curl \
        git \
        gnupg-agent \
        gnupg2 \
        jq \
        lib-ssl-dev \
        p7zip \
        scrot \
        software-properties-common \
        wget
fi
