#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all

# Extras
brew tap homebrew/versions
brew tap caskroom/cask

# Utils
brew install coreutils
brew install wget
brew install parallel
brew install the_platinum_searcher

# Git
brew install git
brew install git-extras

# Languages
brew install go
# brew install nvm
# brew cask install java

# Apps
brew cask install google-chrome-beta
brew cask install sublime-text3
brew cask install iterm2
brew cask install amethyst
brew cask install flux
brew cask install virtualbox
brew cask install hipchat
# brew cask install vivaldi

# Workflow
brew cask install heroku-toolbelt
heroku update

brew cask install livereload

# Clean up
brew cleanup