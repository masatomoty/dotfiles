export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PGDATA=/usr/local/var/postgres

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# rbebv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

export PATH=$HOME/.nodebrew/current/bin:$PATH


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
