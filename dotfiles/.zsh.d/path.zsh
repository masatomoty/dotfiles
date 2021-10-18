export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:$GOPATH/bin"
export PGDATA=/usr/local/var/postgres

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

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
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# stack
export PATH="$HOME/.stack/bin:$PATH"

# export PATH=$HOME/.nodebrew/current/bin:$PATH
# pipenv
# export PIPENV_VENV_IN_PROJECT=true
# eval "$(pipenv --completion)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# php
#export PATH="/usr/local/opt/php@7.2/bin:$PATH"
#export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/Applications/Julia-1.5.app/Contents/Resources/julia/bin:$PATH"

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 11`

