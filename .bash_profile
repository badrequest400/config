
# DEPRECATED IN FAVOUR OF ZSH

# TAB-COMPLETION ON ssh COMMAND, BASED ON ~/.ssh/config FILE
complete -W "$(echo `cat ~/.ssh/config | awk '$1 == "Host" {print $2}'`)" ssh
complete -W "$(echo `cat package.json | sed -n '/scripts/, /}/ p' | grep -Eo "\"(.*)\":" | sed 's/"\(.*\)":/\1/'`)" npm run


# ALIAS FOR DETAILED ls OUTPUT
alias drm="docker ps -aq | xargs docker rm"
alias dc="docker-compose"
alias drmi="docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi"
alias updog="echo v3.4.2"
alias openg="git remote get-url origin | sed -e 's/git@github.com:/http:\/\/github.com\//g' | xargs open -a 'Firefox'"
alias fyd="killall Docker && open /Applications/Docker.app"
alias sl="slack-cli -d"
alias diff="git diff -- . ':!*package-lock.json' ':!*package.json' ':!*yarn.lock'"
alias gst="git status"
alias gbr="git branch"
alias gdf="git diff"
alias gcur="git rev-parse --abbrev-ref HEAD"
alias rn="react-nativ"
alias python=/usr/local/bin/python3 
alias pip=/usr/local/bin/pip3
alias oni=oni2

export PS1="\W "
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# DO GIT COMMAND AND BRANCH TAB COMPLETION IF THE BELOW SHELL SCRIPT EXISTS
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

. ~/z.sh

mkdir () {
  /bin/mkdir $@ && cd $_
}

listening () {
  lsof -nP -i:$1 | grep LISTEN
}


source "$HOME/.cargo/env"
