#!/bin/bash

REV=$(uname -r)

if [[ $REV = *"ARCH"* ]]; then
    echo "ArchLinux"

    yay -S google-chrome-beta
elif hash apt 2>/dev/null; then
    echo "Debian"

    # TODO
fi
