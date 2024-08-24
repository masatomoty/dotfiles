ZSH=~/.oh-my-zsh
ZSH_THEME="pygmalion"
plugins=(git)

export GITHUB_TOKEN=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

## PATH
[ -f $ZSHDIR/path.zsh ] && . $ZSHDIR/path.zsh

## zsh and oh-my-zsh
source $ZSH/oh-my-zsh.sh
[ -f $ZSHDIR/zsh-ext.zsh ] && . $ZSHDIR/zsh-ext.zsh

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $ZSHDIR/fzf-func.zsh ] && . $ZSHDIR/fzf-func.zsh

## Others
[ -f $ZSHDIR/alias.zsh ] && . $ZSHDIR/alias.zsh

