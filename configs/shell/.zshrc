export PATH="$HOME/.local/bin:/opt/homebrew/bin:$HOME/go/bin:/Applications/MEGAcmd.app/Contents/MacOS:$PATH"
alias python3=/opt/homebrew/bin/python3.14
alias ls='ls -la -G'
alias grep='grep --color=auto'
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
[[ "$TERM_PROGRAM" == "ghostty" ]] && ~/Code/terminal/run.sh
