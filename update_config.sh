#/bin/bash

# Install requirements
. install_requirements.sh

# .zshrc
touch ~/.zshrc  # Create .zshrc if it does not exist
cat .zshrc >> ~/.zshrc

# .vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
cp .vimrc ~

# Nvim config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf ~/.config/nvim/lua/custom
git clone git@github.com:aiokaizen/archad.git ~/.config/nvim/lua/custom

