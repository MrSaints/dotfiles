#!/usr/bin/env bash
REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
    sudo pacman -S --needed docker
else
    echo "Debian"

    # Install support for https, CA certificates, and curl
    sudo apt-get update
    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

    # Installs Docker Engine
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
            "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) \
            stable edge"
    sudo apt-get update
    sudo apt-get install docker-engine

    # Fixes "Cannot connect to the Docker daemon" error
    sudo usermod -aG docker $(whoami)

    # Installs Docker Compose as a container
    sudo curl -L --fail https://github.com/docker/compose/releases/download/1.16.1/run.sh -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# Login to Docker Cloud
docker login
