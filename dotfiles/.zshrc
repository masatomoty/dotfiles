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

export NVM_DIR="/Users/masatomo_toyama/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/masatomo_toyama/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/masatomo_toyama/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/masatomo_toyama/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/masatomo_toyama/google-cloud-sdk/completion.zsh.inc'; fi[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
