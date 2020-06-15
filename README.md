# dotfiles

A set of configuration files for my home, and work development environment.

`scripts` largely targets Arch Linux, and Debian systems. But, some may work on MacOS.

For my homelab, see [`mypi`](https://github.com/MrSaints/mypi).


## GPG

My private key is stored offline, encrypted. To set it up on a new workstation:

```
# Decrypt Key
gpg --decrypt key.asc.gpg > key.asc

# Import Key
gpg --import key.asc

# Trust
gpg --edit-key <key>
git config --global user.signingkey <key>
```
