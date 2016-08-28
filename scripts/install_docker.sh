#!/usr/bin/env bash

# Install support for https, and CA certificates
sudo apt-get install apt-transport-https ca-certificates

# Installs Docker Engine
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo bash -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -c -s) main" >> /etc/apt/sources.list'
sudo apt-get update
sudo apt-get install docker-engine

# Fixes "Cannot connect to the Docker daemon" error
sudo usermod -aG docker $(whoami)
