if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/git-prompt.sh

#PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '
#PROMPT_COMMAND='__posh_git_ps1 "\u@\h:w " "\\\$ ";'$PROMPT_COMMAND
PROMPT_COMMAND='__posh_git_ps1 "\W " "\\\$ ";'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
