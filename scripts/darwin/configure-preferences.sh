#!/bin/zsh

# A helpful list of defaults can be found [here](https://macos-defaults.com)
echo "Setting MacOS defaults"

echo "Enabling 3-finger drag"
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool true

echo "Disabling Apple 'intelligence'"
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool false

echo "Enabling system prompt keyboard navigation"
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

echo "Disabling diacritic mark dialog for VSCode"
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

echo "Disabling diacritic mark dialog for Ghostty"
defaults write com.mitchellh.ghostty ApplePressAndHoldEnabled -bool false

echo "Disabling 'displays have separate spaces' setting for Aerospace compatibility"
defaults write com.apple.spaces spans-displays -bool true

echo "Restarting UI server"
killall SystemUIServer

echo "Setting dock preferences"
defaults write com.apple.dock "orientation" -string "bottom" # move dock to bottom (default)
defaults write com.apple.dock "tilesize" -int 48             # set icon size
defaults write com.apple.dock "autohide" -bool true          # auto-hide dock
defaults write com.apple.dock "show-recents" -bool false     # disable default 'show recent files' behavior
defaults write com.apple.dock "static-only" -bool true       # only shows active applications (no default apps in dock)

echo "Restarting dock"
killall Dock

# Finder
echo "Setting finder preferences"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true # show all file extensions
defaults write com.apple.finder "AppleShowAllFiles" -bool true    # show hidden
defaults write com.apple.finder "ShowPathbar" -bool true
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" # set default view to column view

echo "Restarting Finder"
killall Finder

