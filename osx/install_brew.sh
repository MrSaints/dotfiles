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

brew install jid
brew install ripgrep
brew install bat
brew install diff-so-fancy
# brew install the_platinum_searcher

brew install keybase
brew install gpg
brew install pinentry-mac

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
# brew cask install slack
# brew cask install virtualbox
# brew cask install vivaldi
brew cask install google-chrome-beta
brew cask install iterm2
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
brew upgrade --all
brew cask upgrade

# Clean up
brew cleanup
