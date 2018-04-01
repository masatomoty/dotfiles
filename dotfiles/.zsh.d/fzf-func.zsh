# fzf functions

## Development
### cd to dev directory
src() {
  cd $(ghq root)
}

### cd to my repo
srcs () {
  cd $(ghq root)/github.com/$GITHUB_USERNAME
}

### create new project
srcn() {
  local project_name
  local project_path

  if [ ! -n "$1" ]; then
    echo "Please set name"
	  return 1;
  fi

  project_name=$1
  project_path=$(ghq root)/github.com/$GITHUB_USERNAME/$project_name

  if [ -d $project_path ]; then
    echo "Project with the same name exists"
	  cd $project_path
	  return 1;
  fi
    
  mkdir $project_path &&
	  cd $project_path &&
    git init &&
    git remote add origin git@github.com:$GITHUB_USERNAME/$project_name.git &&
    code .
}

### cd to selected src directory
srcd() {
  local dir
  dir=$(ghq list > /dev/null | fzf-tmux --reverse +m) &&
    cd $(ghq root)/$dir
}

### Open slected src directry with VisualStudio Code
srcc() {
  local dir
  dir=$(ghq list > /dev/null | fzf-tmux --reverse +m) &&
    cd $(ghq root)/$dir &&
    code .
}

### Just fuzzy
srcf() {
  print -z $(ghq list > /dev/null | fzf --reverse +m)
}

srcv() {
  dir=$(ghq list > /dev/null | fzf-tmux --reverse +m) &&
    cd $(ghq root)/$dir &&
    vim .
}

srcg() {
  local dir
  dir=$(ghq list > /dev/null | fzf-tmux --reverse +m) &&
  open -a Google\ Chrome https://godoc.org/$dir
}

srch() {
  local dir
  dir=$(ghq list > /dev/null | fzf-tmux --reverse +m) &&
  open -a Google\ Chrome https://$dir
}

### Enhanced ssh
sssh() {
  local servers server
  servers=$(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config | awk "{print \$2}") &&
  server=$(echo "$servers" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$servers") )) +m) &&
  echo "ssh to $server ...\n" && ssh $(echo "$server")
}

sssf() {
  local servers server
  servers=$(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config | awk "{print \$2}") &&
  server=$(echo "$servers" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$servers") )) +m) &&
  print -z $server
}

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}


## Changing Directory
### fda: cd to selected directory
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

### fdp: cd to selected parent directory
fdp() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}

### cdf: cd into the directory of the selected file
cdf() {
  local file
  local dir
  file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

## Git Enhancement
### fshow: git history browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

### fbr: checkout git branch, including remote branches
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

### fco: checkout git branch/tag
fco() {
  local tags branches target
  tags=$(
    git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
    git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
    (echo "$tags"; echo "$branches") |
    fzf-tmux -l30 -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

### fcoc: checkout git commit
fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}
