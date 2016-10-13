#sourcing scripts
export PATH="$PATH:$HOME/.composer/vendor/bin" #add composer script to global bin

###
# Sourcing other scripts
##
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#nodejs
#SOURCE_STR="\nexport NVM_DIR=\"$NVM_DIR\"\n[ -s \"\$NVM_DIR/nvm.sh\" ] && . \"\$NVM_DIR/nvm.sh\"  # This loads nvm"
export NVM_DIR="$PATH:$HOME/.nvm" 
[ "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"  # This loads nvm

###
#navigation
##
alias cdbook="cd /Users/dwain/vagrant/wcvagrant/www/wordpress-trunk/wp-content/plugins/woocommerce-bookings/"

##Defults
export CLICOLOR=1

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
function gcob(){
    git checkout -b $1
}

function gpo(){
  git rev-parse --abbrev-ref HEAD | xargs git push -u origin
}

function gpof(){
  git rev-parse --abbrev-ref HEAD | xargs git push -fu origin
}

#CLI
cpdir() {
  echo "${PWD##*/}" | pbcopy
  echo "${PWD##*/} copied"
}


cdlike(){
  ls -a | grep $1 | xargs cd
}

dater(){
	 TZ=GMT date -r $1
}

###
#navigation
##
function cdplug(){
	cd /Users/dwain/vagrant/wcvagrant/www/wordpress-trunk/wp-content/plugins/$1
}

alias cdbook="cd /Users/dwain/vagrant/wcvagrant/www/wordpress-trunk/wp-content/plugins/woocommerce-bookings/"