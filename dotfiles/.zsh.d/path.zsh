export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
export GOPATH=$HOME/dev
export PATH="$PATH:$GOP:ATH/bin"
export PGDATA=/usr/local/var/postgres
export PATH="$GOPATH/bin:$PATH"
export GOBIN=$GOPATH/bin

export PATH=$PATH:/usr/local/Cellar/libpq/14.3/bin/:~/bin/

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

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

# php
#export PATH="/usr/local/opt/php@7.2/bin:$PATH"
#export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/Applications/Julia-1.5.app/Contents/Resources/julia/bin:$PATH"

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 11`

