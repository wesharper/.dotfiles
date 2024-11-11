if [[ $(uname) = "Darwin" ]]; then
  # disable press and hold key for special characters on text editors (Vim)
  defaults write md.obsidian ApplePressAndHoldEnabled -bool false
  defaults write dev.zed.Zed ApplePressAndHoldEnabled -bool false
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
fi
