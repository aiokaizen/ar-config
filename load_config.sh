#/bin/bash

# Aliases and shell commands
cp ~/.bashrc .
cp ~/.zshrc .
cp ~/.vimrc .

# Nvim config
mkdir -p .config/
cp -r ~/.config/nvim .config 

