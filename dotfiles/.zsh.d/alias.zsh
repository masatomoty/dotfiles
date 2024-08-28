## Directories

# eza
alias et="eza -T -L 2 -a -I 'node_modules|.git|.cache' --icons"

## override
alias vi="nvim"
alias cp="cp -a"
alias df="df -h"
alias ls="eza -a -l -1 -x --color=never"

## 一文字系
alias b="bundle"
alias e="echo"
alias i="ip addr show | grep inet"
alias l=et
alias h="peco_search_history"
alias j='l'
alias n='date +"%T"'
alias o="open"
alias v="vim"

## git
alias got='git'
alias gi='git'
alias gs='git status'
alias gf='git fetch'

alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gbd='git branch -D'
alias gr='git reset'
alias grh='git reset --hard'
alias grsh='git reset --soft HEAD^'
alias gs='git stash'
alias gsp='git stas pop'
alias gf='git fetch'
alias gpl='git pull'
alias gps='git push'
alias gpsuo="git push --set-upstream origin"

alias cl="column -t"
alias now='date +"%T"'
alias today='date +"%y/%m/%d"'
alias epoch='date +%s'


