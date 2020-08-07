# dotfiles

A set of configuration files for my home, and work development environment.

For my homelab, see [`mypi`](https://github.com/MrSaints/mypi).


## Getting Started

Pull this repository down, e.g. `git clone https://github.com/MrSaints/dotfiles.git`

```
# General
git submodule init && git submodule update

ln -s $HOME/Workspace/dotfiles/curlrc $HOME/.curlrc
ln -s $HOME/Workspace/dotfiles/gitignore_global $HOME/.gitignore_global

# Linux
ln -s $HOME/Workspace/dotfiles/fehbg $HOME/.fehbg
ln -s $HOME/Workspace/dotfiles/config/sublime-text-3/Packages/User $HOME/.config/sublime-text-3/Packages/User
ln -s $HOME/Workspace/dotfiles/config/sublime-text-3/Packages/GoSublime $HOME/.config/sublime-text-3/Packages/GoSublime

# Arch Linux
ln -s $HOME/Workspace/dotfiles/xinitrc $HOME/.xinitrc
ln -s $HOME/Workspace/dotfiles/zprofile $HOME/.zprofile
```


## GPG

### Import

My private key is stored offline, encrypted, and in my Yubikey. To set it up on a new workstation:

#### Raw

```
# Decrypt Key
gpg --decrypt key.asc.gpg > key.asc

# Import Key
gpg --import key.asc
```

#### Yubikey

```
gpg --card-edit

fetch
```

### GoPass

```
# Trust
gpg --edit-key <key>
```

### Git Commit Signing

```
git config --global user.signingkey <key>
```
