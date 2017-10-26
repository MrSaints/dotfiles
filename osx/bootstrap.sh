#!/usr/bin/env bash

# General
## Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Trackpad
## Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
## Increase speed
defaults write -g com.apple.trackpad.scaling 2
defaults write -g com.apple.mouse.scaling 2.5

# Keyboard
## Increase speed
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Finder
## Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true
## Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
## Empty the trash securely
defaults write com.apple.finder EmptyTrashSecurely -bool true
## Disable animation
defaults write com.apple.finder DisableAllAnimations -bool true
## Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
## Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Dock
## Auto show/hide the Dock
defaults write com.apple.dock autohide -bool true
## Remove auto show/hide delay
defaults write com.apple.dock autohide-delay -float 0
## Remove auto show/hide animation
defaults write com.apple.dock autohide-time-modifier -float 0
## Use scale for minimize/maximize effect
defaults write com.apple.dock mineffect -string "scale"
## Shrink size of Dock items / icons
defaults write com.apple.dock tilesize -int 32

# Screen
## Prompt for password immediately
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
## Disable dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true

# Photos
## Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
