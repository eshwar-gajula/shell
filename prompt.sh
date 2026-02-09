#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED='\[\e[1;31m\]'
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]'
CYAN='\[\e[1;36m\]'
GRAY='\[\e[1;90m\]'
WHITE='\[\e[0m\]'

# Load user
source $HOME/.ptshell/config/user.conf

# Show git branch if exists
parse_git_branch() {
    git branch 2>/dev/null | grep '\*' | sed 's/* //'
}

# Custom prompt
export PS1="
${GREEN}┌─[${RED}$USERNAME${GREEN}]─[${BLUE}\w${GREEN}]─[${CYAN}\$(parse_git_branch)${GREEN}]
└─${RED}➤${WHITE} "
