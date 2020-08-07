export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:$GOPATH/bin"
export PGDATA=/usr/local/var/postgres

# nvm
export NVM_DIR="$HOME/.nvm/bin:$PATH"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source $(brew --prefix nvm)/nvm.sh
export PATH=$PATH:~/.local/bin

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# rbebv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# node
if [ -d ${HOME}/node_modules/.bin ]; then
  export PATH=${PATH}:${HOME}/node_modules/.bin
fi

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# stack
export PATH="$HOME/.stack/bin:$PATH"

export PATH=$HOME/.nodebrew/current/bin:$PATH

# pipenv
export PIPENV_VENV_IN_PROJECT=true
eval "$(pipenv --completion)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# php
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
