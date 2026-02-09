#!/data/data/com.termux/files/usr/bin/bash

clear

# Load user config
source $HOME/.ptshell/config/user.conf

# Get time
TIME=$(date +"%I:%M %p")
DATE=$(date +"%d %B %Y")

# Title
figlet "Pentester"

echo
toilet -f mono12 "Welcome Back $USERNAME"
echo

echo "Date   : $DATE"
echo "Time   : $TIME"
echo "System : Termux $(uname -m)"
echo "Mode   : Offensive Security"
echo "----------------------------------------"
echo

# Show system info (light)
neofetch --off --disable gpu
