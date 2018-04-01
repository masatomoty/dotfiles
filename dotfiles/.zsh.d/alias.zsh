## Directories

## override
alias vi="vim"
alias cp="cp -a"
alias df="df -h"

## enable abbreviate lang
alias -s py='python'
alias -s php='php'
alias -s rb='ruby'

## 一文字系
alias b="bundle"
alias c="clear"
alias e="echo"
alias i="ip addr show | grep inet"
alias h="history"
alias j='l'
alias n='date +"%T"'
alias o="open"
alias p="ping"
alias s="sssh"
alias t="telnet"
alias v="vim"

alias l1='ls -1'

## lとかkとか適当に打ってもそれっぽくls -lahになる
alias l='ls -lah'
alias ll='l'
alias lll='l'
alias llll='l'

alias k='l'
alias kk='l'
alias kkk='l'
alias kkkk='l'

alias lk='l'
alias kl='l'

alias llk='l'
alias lkl='l'
alias kll='l'

alias lkk='l'
alias kkl='l'
alias klk='l'


## editors
alias at="open -g -a Atom.app $1"
alias st="open -g -a Sublime\ Text.app $1"
alias mo="open -g -a mou.app $1"
alias ct="open -g -a CotEditor.app $1"
alias ty="open -g -a Typora.app"
alias vs="open -g -a Visual\ Studio\ Code.app"

alias rb="ruby"
alias py="python"

## sudoが打てない
alias udo='sudo'
alias sdo='sudo'
alias usdo='sudo'
alias suod='sudo'
alias sudu='sudo'
alias sido='sudo'

## git
alias got='git'
alias gi='git'
alias gs='git status'
alias gf='git fetch'
alias gfp='git fetch -p'

alias ga='git add'
alias gcm='git commit -m'
alias gc='git checkout'

alias gf="git flow"
alias gff="git flow feature"
alias gfh="git flow hotfix"
alias gfr="git flow release"

alias gall="git checkout master;git pull;git checkout develop;git pull;git submodule foreach 'git checkout master;git pull;'"

alias glo="git log --oneline"
alias gl="git log"
alias gclear="git branch | egrep -v 'develop|master' | xargs git branch -d"
alias Gclear="git branch | egrep -v 'develop|master' | xargs git branch -D"

alias gup="git submodule update"
alias gft="git flow feature track $1"
alias gg="git log --oneline --graph --decorate --all --date-order -C -M --color --abbrev-commit"
alias gg2="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all --date-order"

alias cl="column -t"
alias now='date +"%T"'
alias today='date +"%y/%m/%d"'
alias epoch='date +%s'


