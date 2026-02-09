#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc2"

source "$BASE/config/user.conf"
source "$BASE/core/target.sh"
source "$BASE/core/session.sh"
source "$BASE/core/profiles.sh"

R='\[\e[31m\]'
G='\[\e[32m\]'
B='\[\e[34m\]'
C='\[\e[36m\]'
W='\[\e[0m\]'

export PS1="
${G}[${R}$USERNAME${G}]${B}:\w ${C}P:\$(profile_get) T:\$(get_target)${W}
${R}➤ ${W}"
