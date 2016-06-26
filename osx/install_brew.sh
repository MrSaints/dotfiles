#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all

# Extras
brew tap caskroom/cask
brew tap homebrew/versions

# Utils
brew install coreutils
brew install parallel
brew install the_platinum_searcher
brew install wget

# Git
brew install git
brew install git-extras

# Languages
# brew cask install java
# brew install nvm
brew install go

# Apps
# brew cask install virtualbox
# brew cask install vivaldi
brew cask install amethyst
brew cask install flux
brew cask install google-chrome-beta
brew cask install hipchat
brew cask install iterm2
brew cask install sublime-text3

# Workflow
brew cask install heroku-toolbelt
heroku update

brew cask install livereload

# Clean up
brew cleanup