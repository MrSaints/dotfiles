#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    sudo pacman -S --needed docker
    sudo systemctl enable docker.service
elif hash apt 2>/dev/null; then
    echo "Debian"

    # Installs Docker Engine
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
            "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) \
            stable edge"
    sudo apt update -y
    sudo apt install -y docker-ce docker-ce-cli containerd.io

    # Fixes "Cannot connect to the Docker daemon" error
    sudo usermod -aG docker $(whoami)

    # Installs Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
