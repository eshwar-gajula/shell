#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc"

source "$BASE/config/user.conf"
source "$BASE/core/target.sh"
source "$BASE/core/session.sh"

R='\[\e[31m\]'
G='\[\e[32m\]'
B='\[\e[34m\]'
C='\[\e[36m\]'
W='\[\e[0m\]'

git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

export PS1="
${G}[${R}$USERNAME${G}]${B}:\w ${C}T:\$(get_target) S:\$(get_session) \$(git_branch)${W}
${R}➤ ${W}"
