#/bin/bash

# Aliases and shell commands
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp .bashrc ~

[ -f ~/.profile ] && mv ~/.profile ~/.profile.bak
cp .profile ~

[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.bak
cp .zshrc ~

[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
cp .vimrc ~

# Nvim config
[ -f ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
cp .config/nvim ~/.config 

