echo "Installing minimum startup requirements"

if ! command -v brew &> /dev/null
then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v nvm &> /dev/null
then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

if ! command -v fzf &> /dev/null
then
  echo "Installing fzf"
  brew install fzf
fi

if ! command -v zoxide &> /dev/null
then
  brew install zoxide
  echo "Installing zoxide"
fi

if ! command -v stow &> /dev/null
then
  echo "Installing stow"
  brew install stow
fi

echo "Creating dotfile symlinks"
stow --adopt .

if [ ! -f ~/Library/Fonts/RobotoMonoNerdFont-Bold.ttf ]; then
  echo "Installing RobotoMono Nerd Font"
  brew install --cask font-roboto-mono-nerd-font
fi

echo "Restarting zsh with adopted config..."
sleep 2
reset

cd cli
nvm install
npm install
npm start
cd ..

# # Dock settings
# # Remove all persistent apps
# defaults delete com.apple.dock persistent-apps
# # Set persistent others
# defaults delete com.apple.dock persistent-others
# downloads_folder="<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file://$HOME/Downloads/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>file-label</key><string>Downloads</string><key>file-type</key><integer>2</integer><key>preferreditemsize</key><integer>-1</integer><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
# defaults write com.apple.dock persistent-others -array-add $downloads_folder

# # Set additional config
# defaults write com.apple.dock show-recents -int 0;
# defaults write com.apple.dock tilesize -int 50;
# defaults write com.apple.dock autohide -int 1;

# # Reset to show changes
# killall Dock
