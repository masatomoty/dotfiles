peco_search_history() {
    BUFFER=$(history -n 1 | tac | awk '!a[$0]++' | peco)
    if [ -n "$BUFFER" ]; then
        zle accept-line
    else
        zle reset-prompt
    fi
}

zle -N peco_search_history
bindkey '^R' peco_search_history
