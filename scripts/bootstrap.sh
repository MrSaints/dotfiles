#!/usr/bin/env bash

# Create directory for screenshots
mkdir -p "$HOME/screenshots/"

# Run scripts
./install_git.sh
./install_zsh.sh
./install_misc.sh
./install_docker.sh
./install_go.sh
./install_node.sh
