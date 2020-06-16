#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
elif hash apt 2>/dev/null; then
    echo "Debian"

    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update
    sudo apt-get install -y kubectl
fi

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
