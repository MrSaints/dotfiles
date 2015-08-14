#!/usr/bin/env bash

# Installed using NVM
# Source: https://github.com/creationix/nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.26.0/install.sh | bash
. ~/.nvm/nvm.sh

nvm install stable
nvm alias default stable

# Ensure the following is in ~/.bash_profile, ~/.zshrc or ~/.profile
# export NVM_DIR="/home/mrsaints/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
