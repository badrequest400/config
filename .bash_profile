# TAB-COMPLETION ON ssh COMMAND, BASED ON ~/.ssh/config FILE
complete -W "$(echo `cat ~/.ssh/config | awk '$1 == "Host" {print $2}'`)" ssh

# ALIAS FOR DETAILED ls OUTPUT
alias la="ls -lah"

# DO GIT COMMAND AND BRANCH TAB COMPLETION IF THE BELOW SHELL SCRIPT EXISTS
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
