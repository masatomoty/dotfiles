ZSH=~/.oh-my-zsh
ZSH_THEME="pygmalion"
plugins=(git)

export GITHUB_TOKEN=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

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
export NVM_DIR="/Users/masatomotoyama/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/masatomo_toyama/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/masatomo_toyama/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/masatomo_toyama/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/masatomo_toyama/google-cloud-sdk/completion.zsh.inc'; fi
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
