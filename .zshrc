ZSH=~/.oh-my-zsh
ZSH_THEME="pygmalion"

plugins=(git)

## PATH
[ -f $ZSHDIR/path.zsh ] && . $ZSHDIR/path.zsh

## zsh and oh-my-zsh
source $ZSH/oh-my-zsh.sh
[ -f $ZSHDIR/zsh-ext.zsh ] && . $ZSHDIR/zsh-ext.zsh
[ -f $ZSHDIR/func.zsh ] && . $ZSHDIR/func.zsh

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $ZSHDIR/fzf-func.zsh ] && . $ZSHDIR/fzf-func.zsh


## Others
[ -f $ZSHDIR/alias.zsh ] && . $ZSHDIR/alias.zsh
[ -f $ZSHDIR/etc.zsh ] && . $ZSHDIR/etc.zsh
