#!/data/data/com.termux/files/usr/bin/bash

set -e

BASE="$HOME/.tpc2"

clear
echo "=============================="
echo "   TPC SHELL v2 INSTALLER"
echo "=============================="

pkg update -y
pkg upgrade -y

pkg install -y \
git nmap openssl \
openssh termux-api \
python rsync

mkdir -p "$BASE"/{core,config,data,reports,logs,cloud,profiles}

read -p "Enter your name: " USERNAME
read -sp "Set Master Password: " PASS
echo

cat > "$BASE/config/user.conf" << EOF
USERNAME="$USERNAME"
EOF

echo "$PASS" > "$BASE/.key"
chmod 600 "$BASE/.key"

[ -f ~/.bashrc ] && cp ~/.bashrc ~/.bashrc.backup

cat > ~/.bashrc << EOF

# === TPC v2 ===
source $BASE/core/*.sh
source $BASE/boot.sh
source $BASE/prompt.sh

EOF

cp boot.sh prompt.sh "$BASE/"
cp -r core "$BASE/"

chmod +x "$BASE"/**/*.sh

echo "[+] Installed. Restart Termux."
