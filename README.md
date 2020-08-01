# dotfiles

A set of configuration files for my home, and work development environment.

For my homelab, see [`mypi`](https://github.com/MrSaints/mypi).


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
