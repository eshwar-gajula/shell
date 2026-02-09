#!/data/data/com.termux/files/usr/bin/bash

set -e

clear

echo "======================================"
echo "   TPC-SHELL INSTALLER v1.0"
echo "======================================"
echo

# Update
pkg update -y
pkg upgrade -y

# Dependencies
pkg install -y \
git \
nmap \
termux-api \
openssh \
net-tools

# Main dirs
BASE="$HOME/.tpc"

mkdir -p "$BASE"/{core,config,data,recon,logs}

# Ask name
read -p "Enter your name: " USERNAME

# Save config
cat > "$BASE/config/user.conf" << EOF
USERNAME="$USERNAME"
EOF

# Backup bashrc
if [ -f "$HOME/.bashrc" ]; then
  cp "$HOME/.bashrc" "$HOME/.bashrc.backup"
fi

# Install shell loader
cat > "$HOME/.bashrc" << EOF

# === TPC SHELL ===
source $BASE/core/utils.sh
source $BASE/core/target.sh
source $BASE/core/session.sh
source $BASE/core/recon.sh

source $BASE/boot.sh
source $BASE/prompt.sh

EOF

# Copy files
cp boot.sh prompt.sh "$BASE/"
cp -r core "$BASE/"

chmod +x "$BASE"/*.sh
chmod +x "$BASE"/core/*.sh

echo
echo "[+] Installation complete."
echo "[+] Restart Termux."
