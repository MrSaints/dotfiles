#!/usr/bin/env bash

# Installs git
sudo apt-get install git

if type git >/dev/null 2>&1
then
    git config --global user.name "Ian Lai"
    git config --global user.email "MrSaints@users.noreply.github.com"
fi

# Installs git-extras
sudo apt-get update
sudo apt-get install git-extras

git config --global core.excludesfile ~/.gitignore_global
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
