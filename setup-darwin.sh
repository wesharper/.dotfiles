if [[ $(uname) = "Darwin" ]]
then
  echo "Setting up Darwin"

  # disable diacritic mark popup when key is held for apps that use Vim motions
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

  # turn off 'Displays have separate Spaces' setting for better compatibility with Aerospace
  defaults write com.apple.spaces spans-displays -bool true && killall SystemUIServer
fi

echo "All done!"
