#!/usr/bin/env bash

# Create directory for screenshots
mkdir -p "$HOME/screenshots/"

# Create workspaces
mkdir -p "$HOME/workspace/golang/"

# Run scripts
./install_git.sh
./install_zsh.sh
./install_misc.sh
./install_docker.sh
./install_go.sh
./install_node.sh
