#/bin/bash

# Install requirements
source install_requirements.sh

# .zshrc
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak
[ ! -f ~/.zshrc ] && touch ~/.zshrc  # Create .zshrc if it does not exist
cat .zshrc >> ~/.zshrc

sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
sed -i 's/^plugins=(.*)/plugins=(git colorize python)/' ~/.zshrc

# .vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
cp .vimrc ~

# Nvim config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf ~/.config/nvim/lua/custom
git clone git@github.com:aiokaizen/archad.git ~/.config/nvim/lua/custom

