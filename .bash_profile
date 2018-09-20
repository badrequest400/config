# TAB-COMPLETION ON ssh COMMAND, BASED ON ~/.ssh/config FILE
complete -W "$(echo `cat ~/.ssh/config | awk '$1 == "Host" {print $2}'`)" ssh
complete -W "$(echo `cat package.json | sed -n '/scripts/, /}/ p' | grep -Eo "\"(.*)\":" | sed 's/"\(.*\)":/\1/'`)" npm run


# ALIAS FOR DETAILED ls OUTPUT
alias la="ls -lah"
alias drm="docker ps -aq | xargs docker rm"
alias dc="docker-compose"
alias drmi="docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi"
alias kc="kubectl"
alias updog="echo v3.4.2"
alias openg="git remote get-url origin | sed -e 's/git@github.com:/http:\/\/github.com\//g' | xargs open -a 'Google Chrome'"
alias cleani="npm upgrade && rm package-lock.json && rm -rf node_modules/@paybase && npm run vendor"
alias fyd="killall Docker && open /Applications/Docker.app"
alias sl="slack-cli -d"
alias diff="git diff -- . ':!*package-lock.json' ':!*package.json'"
alias gst="git status"
function dc() {
  open -g 'https://www.youtube.com/watch\?v\=dQw4w9WgXcQ' && docker-compose "$@"
}

export PS1="\W  ☠️  "

function gitf() {
  afplay ~/Downloads/Fart-Common-Everyday-Fart_Mike-Koenig.mp3 && /usr/bin/git "$@"
}

# DO GIT COMMAND AND BRANCH TAB COMPLETION IF THE BELOW SHELL SCRIPT EXISTS
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

. /usr/local/etc/profile.d/z.sh

export PATH="$HOME/.fastlane/bin:$PATH"
source $HOME/paybase-dotfiles/sourceme.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/balazscseh/google-cloud-sdk/path.bash.inc' ]; then source '/Users/balazscseh/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/balazscseh/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/balazscseh/google-cloud-sdk/completion.bash.inc'; fi

mkdir () {
  /bin/mkdir $@ && cd $_
}

export PATH="$HOME/.cargo/bin:$PATH"
