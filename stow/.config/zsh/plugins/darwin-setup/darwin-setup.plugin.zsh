if [[ $(uname) = "Darwin" ]]
then
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
fi
