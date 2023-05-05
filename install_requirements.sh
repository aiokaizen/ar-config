#!/bin/bash


# Download curl
sudo apt install curl

# Download and Install Nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
# If the ./nvim.appimage command fails, try:
# ./nvim.appimage --appimage-extract
# ./squashfs-root/AppRun --version
# # Optional: exposing nvim globally.
# sudo mv squashfs-root /
# sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
# nvim

# Download and Install batcat
curl -LO https://github.com/sharkdp/bat/releases/download/v0.23.0/bat_0.23.0_amd64.deb
sudo dpkg -i bat_0.23.0_amd64.deb  # adapt version number and architecture
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Download and Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

