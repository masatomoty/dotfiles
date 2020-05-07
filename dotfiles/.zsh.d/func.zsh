# show pwd and ls -lah
function chpwd() { pwd && l }

function swap()
{
  if [[ -e "$1" && -e "$2" ]]      # if files exist
  then
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
  else
    echo "Error: Make sure the files exist."
  fi
}

google() {
  local str opt
  if [ $# != 0 ]; then
    for i in $*; do
	  str="$str${str:++}$i"
	done
	opt='search?num=100'
    opt="${opt}&q=${str}"
  fi
  open -a Google\ Chrome http://www.google.co.jp/$opt
}

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^T' peco-history-selection
