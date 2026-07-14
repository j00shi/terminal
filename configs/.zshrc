export PATH="$HOME/.local/bin:$PATH"
eval "$(direnv hook zsh)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
[[ "$TERM_PROGRAM" == "ghostty" && $- == *i* ]] && ~/Code/terminal/run.sh