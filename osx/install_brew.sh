#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all
brew cask update

# Extras
brew tap caskroom/cask
brew tap homebrew/versions

# Utils
brew install coreutils --with-default-names
brew install ffmpeg
brew install jid
brew install keybase
brew install parallel
brew install the_platinum_searcher
brew install wget
# brew install gpg

# Git
brew install git
brew install git-extras

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
brew cask install sublime-text3
brew cask install vlc

brew cask install amethyst
brew cask install fluor
brew cask install flux
brew cask install smcfancontrol

# Workflow
# brew install heroku-toolbelt
# heroku update

# brew cask install livereload

# Clean up
brew cleanup
