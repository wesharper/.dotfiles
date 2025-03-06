  # A helpful list of defaults can be found [here](https://macos-defaults.com)

  # enable 3-finger drag
  defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool true

  # disable Apple Intelligence
  defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool false

  # allow keyboard to navigate system dialog prompts
  defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

  # disable diacritic mark popup when key is held for apps that use Vim motions
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

  # turn off 'Displays have separate Spaces' setting for better compatibility with Aerospace
  defaults write com.apple.spaces spans-displays -bool true
  killall SystemUIServer

  # Dock
  defaults write com.apple.dock "orientation" -string "bottom" # move dock to bottom (default)
  defaults write com.apple.dock "tilesize" -int 48 # set icon size
  defaults write com.apple.dock "autohide" -bool true # auto-hide dock
  defaults write com.apple.dock "show-recents" -bool false # disable default 'show recent files' behavior
  defaults write com.apple.dock "static-only" -bool true # only shows active applications (no default apps in dock)
  killall Dock

  # Finder
  defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true # show all file extensions
  defaults write com.apple.finder "AppleShowAllFiles" -bool true # show hidden
  defaults write com.apple.finder "ShowPathbar" -bool true
  defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" # set default view to column view
  killall Finder
