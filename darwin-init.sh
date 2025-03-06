if [[ $(uname) = "Darwin" ]]
then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "Installing stow"
  brew install stow

  echo "Stowing dotfiles"
  cd $(dirname $0) && stow .

  echo "Installing software via global Brewfile"
  brew bundle --global

  sh $(dirname $0)/scripts/darwin-config.sh
fi

echo "All done!"
