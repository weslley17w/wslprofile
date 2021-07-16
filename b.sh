sed -i -e 's/robbyrussell/af-magic/g' ~/.zshrc
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
sed -i -e 's/(git)/(git zsh-autosuggestions)/g' ~/.zshrc
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
nvm install --lts
npm install --global yarn
cd ~
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
sudo wget -O /usr/local/bin/dropbox "https://www.dropbox.com/download?dl=packages/dropbox.py"
sudo chmod +x /usr/local/bin/dropbox
sudo wget -c -P /etc/init.d https://gist.githubusercontent.com/mmlion/0e42fc48b640f31e9485ae10d95bcc5d/raw/7ed00d8d698f16595bca1af81f06521e94242391/dropbox
sudo chmod +x /etc/init.d/dropbox
sudo update-rc.d dropbox defaults
dropbox autostart y
ln -s ~/Dropbox/Development ~/Development
echo >> ~/.zshrc
echo 'alias dev="cd ~/Development"' >> ~/.zshrc
source .zshrc #RECARREGAR TERMINAL FINAL
dropbox start
