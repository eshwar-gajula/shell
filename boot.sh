#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc"

source "$BASE/config/user.conf"
source "$BASE/core/session.sh"
source "$BASE/core/target.sh"

# New session
new_session
SESSION=$(get_session)

clear

# Typing effect
type() {
  for ((i=0;i<${#1};i++)); do
    printf "%s" "${1:$i:1}"
    sleep 0.03
  done
  echo
}

type "Hello $USERNAME"
sleep 0.5

clear
echo "Getting system info..."
sleep 0.5

# Info
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

WIFI=$(termux-wifi-connectioninfo 2>/dev/null \
| grep ssid | cut -d '"' -f4)

[ -z "$WIFI" ] && WIFI="Disconnected"

VPN=$(ip route | grep tun0 >/dev/null && echo Active || echo None)

clear

cat << EOF

==============================
 TPC OPERATIONAL DASHBOARD
==============================

 User     : $USERNAME
 Session  : $SESSION
 Target   : $(get_target)

 Date     : $DATE
 Time     : $TIME

 WiFi     : $WIFI
 VPN      : $VPN
 Arch     : $(uname -m)

 Status   : Online
------------------------------

EOF
