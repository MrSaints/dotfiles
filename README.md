# dotfiles

_A work in progress._

A set of configuration files for my home, and work development environment.

Currently, `scripts` only targets Arch Linux, and Debian systems.


## GPG

```
gpg --decrypt key.asc.gpg
gpg --import key.asc
# trust
gpg --edit-key <key>
git config --global user.signingkey <key>
```
