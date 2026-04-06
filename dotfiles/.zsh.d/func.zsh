fzf_search_history() {
    BUFFER=$(fc -ln 1 | fzf --tac --no-sort --query "$LBUFFER")
    if [ -n "$BUFFER" ]; then
        zle accept-line
    else
        zle reset-prompt
    fi
}

zle -N fzf_search_history
bindkey '^R' fzf_search_history
