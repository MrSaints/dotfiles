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
# brew install ffmpeg

brew install bat
brew install diff-so-fancy
brew install jid
brew install jq
brew install ripgrep
brew install xsv
# brew install the_platinum_searcher

brew install gpg
brew install pinentry-mac
brew install mkcert

# Kubernetes
brew install kubernetes-helm
brew install ksonnet/tap/ks
brew install derailed/k9s/k9s
brew install octant

# Git
brew install git
# brew install git-extras

# Languages
# brew cask install java
# brew install ghostscript
# brew install nvm
# brew install sbt
brew install go

# Apps
# brew cask install virtualbx
# brew cask install vivaldi
brew cask install google-chrome-beta
brew cask install iterm2
brew cask install keybase
brew cask install slack
brew cask install spotify
brew cask install sublime-text
brew cask install vlc

brew cask install amethyst
# brew cask install fluor
# brew cask install flux
# brew cask install smcfancontrol

# Workflow
# brew install heroku-toolbelt
# heroku update

# brew cask install livereload

# Upgrade
brew upgrade
brew cask upgrade

# Clean up
brew cleanup
