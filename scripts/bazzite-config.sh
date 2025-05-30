echo "Installing zsh"
rpm-ostree install zsh

echo "Updating default shell to zsh"
sudo sed -i 's:/bin/bash:/bin/zsh:g' /etc/passwd

