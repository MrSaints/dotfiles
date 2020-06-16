#!/bin/bash

curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Optional if already installed using `brew`
hash bat 2>/dev/null || cargo install --locked bat
hash delta 2>/dev/null || cargo install --locked git-delta
hash exa 2>/dev/null || cargo install --locked exa
hash ripgrep 2>/dev/null || cargo install --locked ripgrep
