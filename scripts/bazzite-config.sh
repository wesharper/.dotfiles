echo "installing zsh"
rpm-ostree install zsh

echo "updating default shell to zsh"
sudo sed -i 's:/bin/bash:/bin/zsh:g' /etc/passwd


