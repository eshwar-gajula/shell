#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED='\[\e[1;31m\]'
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]'
CYAN='\[\e[1;36m\]'
GRAY='\[\e[1;90m\]'
WHITE='\[\e[0m\]'

source $HOME/.ptshell/config/user.conf

# Git branch
git_branch() {
    git rev-parse --abbrev-ref HEAD 2>/dev/null
}

# Prompt
export PS1="
${GREEN}[${RED}$USERNAME${GREEN}]${BLUE}:\w ${CYAN}\$(git_branch)${WHITE}
${RED}➤ ${WHITE}"
