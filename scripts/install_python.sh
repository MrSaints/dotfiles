#!/usr/bin/env bash

# Installed using pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Ensure `pyenv init` is in ~/.bash_profile, ~/.zshrc or ~/.profile
# e.g. echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

pyenv install 3.7.5
pyenv global 3.7.5

pip install --upgrade pip
