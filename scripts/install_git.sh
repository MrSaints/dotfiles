#!/usr/bin/env bash
REV=$(uname -r)

# Installs git
if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"
    sudo pacman -S --needed git
else
    echo "Debian"
    sudo apt-get install git

    # Installs git-extras
    sudo apt-get update
    sudo apt-get install git-extras
fi

# TODO: configure GPG keys
if type git >/dev/null 2>&1
then
    git config --global user.name "Ian Lai"
    git config --global user.email "ian@fyianlai.com"
fi

git config --global core.excludesfile ~/.gitignore_global
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"

git config --global core.editor "nano"
