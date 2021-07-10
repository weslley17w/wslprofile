sudo apt update -y
sudo apt upgrade -y
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i -e 's/robbyrussell/af-magic/g' ~/.zshrc
source .zshrc #RECARREGAR TERMINAL FINAL
