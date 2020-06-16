#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    yay -S google-chrome-beta
elif hash apt 2>/dev/null; then
    echo "Debian"

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
fi
