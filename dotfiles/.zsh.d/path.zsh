export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
export GOPATH=$HOME/dev
export PATH="$PATH:$GOP:ATH/bin"
export PGDATA=/usr/local/var/postgres
export PATH="$GOPATH/bin:$PATH"
export GOBIN=$GOPATH/bin

export PATH=$PATH:/usr/local/Cellar/libpq/14.3/bin/:~/bin/

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# rbebv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# node
if [ -d ${HOME}/node_modules/.bin ]; then
  export PATH=${PATH}:${HOME}/node_modules/.bin
fi

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# nvim
export NVM_DIR="/Users/masatomotoyama/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# direnv
eval "$(direnv hook zsh)"

# zoxide
eval "$(zoxide init zsh --hook prompt )"

# font
export TERM=xterm-256color

