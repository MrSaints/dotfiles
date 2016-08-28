#!/usr/bin/env bash

# Installs oh-my-zsh, and its dependencies
# Source: https://github.com/robbyrussell/oh-my-zsh
sudo apt-get install git
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
