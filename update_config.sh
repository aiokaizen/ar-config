#/bin/bash

# Install requirements
source install_requirements.sh

# .zshrc
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak
[ ! -f ~/.zshrc ] && touch ~/.zshrc  # Create .zshrc if it does not exist
cat .zshrc >> ~/.zshrc

sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
sed -i 's/^plugins=(.*)/plugins=(git colorize python)/' ~/.zshrc

# p10k.zsh
[ ! -f ~/.p10k.zsh ] && cp .p10k.zsh ~/.p10k.zsh

# .ripgreprc
[ ! -f ~/.ripgreprc ] && cp .ripgreprc ~/.ripgreprc

# tmux.conf
[ ! -f ~/.tmux.conf ] && cp .tmux.conf ~/.tmux.conf

# Prepate vim nord theme
git clone https://github.com/nordtheme/vim.git /tmp/nordtheme
cp -r /tmp/nordtheme/colors/ ~/.vim/
rm -rf /tmp/nordtheme

# vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
cp .vimrc ~

# Nvim config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf ~/.config/nvim/lua/custom
git clone https://github.com/aiokaizen/archad ~/.config/nvim/lua/custom

