#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Extras
brew tap caskroom/cask
brew tap homebrew/cask-versions

# Utils
brew install coreutils --with-default-names
brew install parallel
brew install wget
brew install ffmpeg

brew install bat
brew install diff-so-fancy
brew install jid
brew install jq
brew install ripgrep
brew install xsv

brew install kryptco/tap/kr
brew install gpg
brew install pinentry-mac
brew install mkcert

# Kubernetes
brew install kubernetes-cli
brew install kubernetes-helm
brew install ksonnet/tap/ks
brew install derailed/k9s/k9s
brew install kubectx
brew install octant

# Git
brew install git

# Languages
brew install go
brew cask install java

# Apps
brew cask install iterm2
brew cask install sublime-text
brew cask install dbeaver-community
brew cask install google-chrome-beta
brew cask install keybase
brew cask install slack
brew cask install spotify
brew cask install vlc

brew cask install amethyst

# No touch bar support
# brew cask install fluor

# Upgrade
brew upgrade
brew cask upgrade

# Clean up
brew cleanup
