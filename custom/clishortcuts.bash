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
alias cdbook="cd /Users/dwain/vagrant/wcvagrant/www/wordpress-default/wp-content/plugins/woocommerce-bookings/"

##Defults
export CLICOLOR=1

###
# Git
##
alias gap="git add -p"

function gbdel(){
  git branch | grep $1 | xargs git branch -D
}

function gcol(){
  #git checkout like %branch%
  git branch | grep $1 | xargs git checkout
}
function vimrc(){
vi ~/.vim/vimrc
}
function gcob(){
    git checkout -b $1
}

function gpoc(){
  git rev-parse --abbrev-ref HEAD | xargs git push --set-upstream origin
}
function download() {
	if [ `which curl` ]; then
		curl -s "$1" > "$2";
	elif [ `which wget` ]; then
		wget -nv -O "$2" "$1"
	fi
}

function gpof(){
  git rev-parse --abbrev-ref HEAD | xargs git push -fu origin
}

function gcd() {
	REPONAME=$(node -e "console.log(process.argv[1].match(/.*?\/([a-zA-Z0-9\-]+).git/)[1]);" $1)
	git clone $1 && cd "${REPONAME}"
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
function cdplugin(){
	cd /Users/dwain/vagrant/wcvagrant/www/wordpress-default/wp-content/plugins/$1
}

function cdgosrc(){
  cd /Users/dwain/Go/workspace/src/github.com
}

alias cdbook="cd /Users/dwain/vagrant/wcvagrant/www/wordpress-trunk/wp-content/plugins/woocommerce-bookings/"
