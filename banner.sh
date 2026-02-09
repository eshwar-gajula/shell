#!/data/data/com.termux/files/usr/bin/bash

clear

# Load user
source $HOME/.ptshell/config/user.conf

# Matrix effect
$HOME/.ptshell/matrix.sh &

PID=$!
sleep 4
kill $PID

clear

# Time
TIME=$(date +"%I:%M %p | %d-%m-%Y")

# Welcome banner
figlet "Welcome Back"
toilet -f mono12 "$USERNAME"

echo
echo "Time : $TIME"
echo "Status : Ready for Pentesting"
echo "----------------------------------"
echo
