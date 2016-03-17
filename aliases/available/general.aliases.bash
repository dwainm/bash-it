cite about-alias
about-alias 'general aliases'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=auto"
fi
which gshuf &> /dev/null
if [ $? -eq 0 ]
then
  alias shuf=gshuf
fi

alias c='clear'
alias k='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias irc="$IRC_CLIENT"

# Language aliases
alias rb='ruby'
alias py='python'
alias ipy='ipython'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias md='mkdir -p'
alias rd='rmdir'

cpdir() {
  echo "${PWD##*/}" | pbcopy
  echo "${PWD##*/} copied"
}

# Display whatever file is regular file or folder
catt() {
  for i in "$@"; do
    if [ -d "$i" ]; then
      ls "$i"
    else
      cat "$i"
    fi
  done
}

###
# Sourcing other scripts
##
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.composer/vendor/bin" #add composer script to global bin

###
# Git
##
alias gap="git add -p"

function gbdel(){
  git branch | grep $1 | xargs git branch -D
}

function gco(){
  git branch | grep $1 | xargs git checkout
}

function gpo(){
  git rev-parse --abbrev-ref HEAD | xargs git push -u origin
}

###
#navigation
##
alias cdplug="cd /Users/dwain/vagrant/senseim/www/wordpress-trunk/wp-content/plugins"
alias cdbook="cd /Users/dwain/vagrant/senseim/www/wordpress-trunk/wp-content/plugins/woocommerce-bookings/"

export CLICOLOR=1


function handkerchief {
  # change this path to the location of handkerchief.py
  hand=~/bin/handkerchief/handkerchief.py
  if [[ $1 != "" ]] ; then
    python $hand $1
    else
    repo=$(git remote -v | head -n1 | awk '{print $2}' | sed -e 's,.*:\(.*/\)\?,,' -e 's/\.git$//')
    if [[ $repo == *https://* ]] ; then
      python $hand ${repo#https://github.com/}
    elif [[ $repo == *git@github.com* ]] ; then
      python $hand ${repo#git@github.com:}
    else
      echo "Provide parameter"
    fi
  fi
}
