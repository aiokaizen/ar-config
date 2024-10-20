#!/bin/bash
#
# Make sure you are using zsh as a default terminal shell in your system,
# many tools depend on it.
#

# Download curl
sudo apt install curl

# Download git
sudo apt install git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install nerd font
mkdir -p ~/.local/share/fonts
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip
wget -O /tmp/RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip && unzip /tmp/RobotoMono.zip -d ~/.local/share/fonts
fc-cache -fv  # Update fonts cash

# Install the powerlevel10k theme for zsh:
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Download tmux
sudo apt install tmux
# Download tpm (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Download and Install Nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"

# Download and Install batcat
curl -LO https://github.com/sharkdp/bat/releases/download/v0.23.0/bat_0.23.0_amd64.deb
sudo dpkg -i bat_0.23.0_amd64.deb  # adapt version number and architecture
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Download and Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Download and install npm through nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# Set the env variables for this session only, it will be automatically added to your .zshrc file.
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install npm latest version
nvm install node  # run `nvm install <VERSION>` to install a specific version (e.g. 18 for the latest patch of node18)
nvm use node  # run `nvm use <VERSION>` to use a specific version of node
