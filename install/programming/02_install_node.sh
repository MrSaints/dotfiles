#!/bin/bash

# Installed using NVM
# Source: https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
. ~/.nvm/nvm.sh

nvm install stable
nvm alias default stable

# NOTE: the following is already in `custom/100_init.zsh`
# Ensure the following is in ~/.bash_profile, ~/.zshrc or ~/.profile
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm