#!/usr/bin/env bash

# General
## Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Trackpad
## Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Finder
## Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true
## Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
## Empty the trash securely
defaults write com.apple.finder EmptyTrashSecurely -bool true
