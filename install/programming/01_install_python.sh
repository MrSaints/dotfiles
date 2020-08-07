f#!/bin/bash

# Installed using pyenv
# Source: https://github.com/pyenv/pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# NOTE: the following is already in `custom/100_init.zsh`
# Ensure `pyenv init` is in ~/.bash_profile, ~/.zshrc or ~/.profile
# e.g. echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

pyenv install 3.7.7
pyenv global 3.7.7

eval "$(pyenv init -)"

pip install --upgrade pip
