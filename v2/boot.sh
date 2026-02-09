#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc2"

source "$BASE/config/user.conf"
source "$BASE/core/session.sh"
source "$BASE/core/target.sh"
source "$BASE/core/profiles.sh"

new_session

clear

echo "Hello $USERNAME"
sleep 0.5

echo "Loading environment..."
sleep 0.5

PROFILE=$(profile_get)

clear

cat << EOF

=========================
 TPC v2 DASHBOARD
=========================

 User    : $USERNAME
 Profile : $PROFILE
 Session : $(get_session)
 Target  : $(get_target)

 Date    : $(date)

 Status  : Secure

-------------------------

EOF
