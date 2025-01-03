# ARConfig Starts Here

# Add local bin to path
export PATH="$HOME/.local/bin:$PATH"

# Path to .pythonrc.py file
export PYTHONSTARTUP=~/.pythonrc.py

# Export .ripgreprc file path
export RIPGREP_CONFIG_PATH=~/.ripgreprc

source $ZSH/oh-my-zsh.sh

# AR functions
# Find files
# Usage: fr "key_word" path/to/root
function ff() { 
    rg --color always --line-number --no-heading --smart-case $1 $2  2>/dev/null | \
    fzf --border --ansi --delimiter ':' --header "Search for $1 in $2" \
        --height 50% \
        --preview 'bat --color=always --style=numbers {1} --highlight-line {2}' \
        --preview-window 'right,50%,border,+{2}-8' \
        --bind "enter:become(vi {1} +{2})"; 
}

# Find and replace
# Usage: fr "old_string" path/to/root "new_string"
function fr() { 
    rg --color always --line-number --no-heading --smart-case $1 $2  2>/dev/null | \
    fzf --border --ansi --delimiter ':' --header "Search for $1 in $2" \
        --height 50% \
        --preview 'bat --color=always --style=numbers {1} --highlight-line {2}' \
        --preview-window 'right,50%,border,+{2}-8' \
        --bind "enter:execute(sed -i \"s/$1/$3/g\" {1} && echo \"Replaced '$1' with '$3' in {1}\" && sleep 1)"
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases and Paths
export PATH="$PATH:/opt/nvim-linux64/bin"

