#!/usr/bin/env bash

# Installed using NVM
# Source: https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.nvm/nvm.sh

nvm install stable
nvm alias default stable

# Ensure the following is in ~/.bash_profile, ~/.zshrc or ~/.profile
# export NVM_DIR="/home/mrsaints/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Sets npm init defaults if nvm is properly installed
if type npm >/dev/null 2>&1
then
    npm config set init.author.name "Ian Lai"
    npm config set init.author.email "os@fyianlai.com"
    npm config set init.author.url "https://www.fyianlai.com/"
    npm config set init.license MIT

    # Verify npm account
    npm adduser

    # Install useful npm globals
    npm install -g yarn
    yarn global add diff-so-fancy
fi
