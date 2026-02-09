#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED='\[\e[1;31m\]'
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]'
CYAN='\[\e[1;36m\]'
WHITE='\[\e[0m\]'

# Load user
source $HOME/.ptshell/config/user.conf

# Custom Prompt
export PS1="
${GREEN}┌──(${RED}$USERNAME${GREEN})─[${BLUE}\w${GREEN}]
└─${CYAN}#${WHITE} "
