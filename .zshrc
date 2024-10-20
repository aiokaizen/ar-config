# ARConfig Starts Here
source $ZSH/oh-my-zsh.sh

# AR functions
function ff() { 
    rg --color always --line-number --no-heading --smart-case "$1" "$2" | fzf --border --ansi --delimiter ':' --header "Search for $1 in $2" --height 50% --preview 'bat --color=always --style=numbers {1} --highlight-line {2}' --preview-window 'right,50%,border,+{2}-8' --bind "enter:become(vim {1} +{2})"; 
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases and Paths
export PATH="$PATH:/opt/nvim-linux64/bin"

