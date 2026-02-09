#!/data/data/com.termux/files/usr/bin/bash

# Load config
source $HOME/.ptshell/config/user.conf

clear

# Typing effect
type_text() {
    text="$1"
    delay=0.04

    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep $delay
    done
    echo
}

# Center text
center() {
    cols=$(tput cols)
    printf "%*s\n" $(((${#1}+$cols)/2)) "$1"
}

HELLO="Hello $USERNAME"

center ""
center "$HELLO"

type_text "$HELLO"

sleep 1
clear

# Loading message
echo "Getting device details..."
sleep 0.7

# Get info
DATE=$(date +"%d %b %Y")
TIME=$(date +"%H:%M:%S")

# WiFi
WIFI=$(termux-wifi-connectioninfo 2>/dev/null | grep ssid | cut -d '"' -f4)

if [ -z "$WIFI" ]; then
    WIFI="Not Connected"
fi

# VPN
VPN=$(ip route | grep tun0 | awk '{print $1}')

if [ -z "$VPN" ]; then
    VPN="None"
else
    VPN="Active"
fi

# Area (basic from locale)
AREA=$(getprop persist.sys.country 2>/dev/null)

[ -z "$AREA" ] && AREA="Unknown"

clear

echo "======================================"
echo "   TERMUX OPERATIONAL CONSOLE"
echo "======================================"
echo

printf " User      : %s\n" "$USERNAME"
printf " Date      : %s\n" "$DATE"
printf " Time      : %s\n" "$TIME"
printf " WiFi      : %s\n" "$WIFI"
printf " VPN       : %s\n" "$VPN"
printf " Region    : %s\n" "$AREA"
printf " Arch      : %s\n" "$(uname -m)"

echo
echo " Status    : Ready"
echo "--------------------------------------"
echo

sleep 0.5
