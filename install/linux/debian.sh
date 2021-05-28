#!/bin/bash

./_setup_directories.sh

sudo add-apt-repository ppa:git-core/ppa

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y \
    alsa-utils \
    apt-transport-https \
    ca-certificates \
    clang \
    curl \
    feh \
    git \
    gnupg-agent \
    gnupg2 \
    jq \
    lib-ssl-dev \
    p7zip \
    scrot \
    software-properties-common \
    wget \
    zsh

sudo apt install -y i3

# TODO: termite
# sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60

# krypt.co
# curl https://krypt.co/kr | sh

# Thunar File Manager
sudo apt install -y thunar
xdg-mime default Thunar.desktop inode/directory

# Google Chrome Beta
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update -y
sudo apt install -y google-chrome-beta sublime-text

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

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update
    sudo apt-get install -y kubectl

KUBECTX_VERSION="v0.9.0"
mkdir ./kubectx/
curl "https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz" | tar -C ./kubectx/ -xz
curl "https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubens_${KUBECTX_VERSION}_linux_x86_64.tar.gz" | tar -C ./kubectx/ -xz
sudo mv ./kubectx/kubectx /usr/local/bin/kubectx
chmod +x /usr/local/bin/kubectx
sudo mv ./kubectx/kubens /usr/local/bin/kubens
chmod +x /usr/local/bin/kubens
rm -rf ./kubectx/

K9S_VERSION="v0.20.5"
mkdir ./k9s/
curl "https://github.com/derailed/k9s/releases/download/${K9S_VERSION}/k9s_Linux_x86_64.tar.gz" | tar -C ./k9s/ -xz
sudo mv ./k9s/k9s /usr/local/bin/k9s
chmod +x /usr/local/bin/k9s
rm -rf ./k9s/

DOCTL_VERSION="1.45.1"
mkdir ./doctl/
curl "https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz" | tar -C ./doctl/ -xz
sudo mv ./doctl/doctl /usr/local/bin/doctl
chmod +x /usr/local/bin/doctl
rm -rf ./doctl/
