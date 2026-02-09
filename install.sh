#!/data/data/com.termux/files/usr/bin/bash

clear

echo "=================================="
echo " TERMUX CUSTOMIZED SHELL INSTALLER"
echo "=================================="
echo

pkg update -y && pkg upgrade -y

pkg install -y termux-api net-tools wireless-tools git

mkdir -p $HOME/.ptshell/config

read -p "Enter your name: " USERNAME

echo "USERNAME=$USERNAME" > $HOME/.ptshell/config/user.conf

# Backup bashrc
if [ -f $HOME/.bashrc ]; then
    cp $HOME/.bashrc $HOME/.bashrc.backup
fi

# New bashrc
cat > $HOME/.bashrc << EOF

# Pentester Shell Loader
source \$HOME/.ptshell/boot.sh
source \$HOME/.ptshell/prompt.sh

EOF

# Copy files
cp boot.sh $HOME/.ptshell/
cp prompt.sh $HOME/.ptshell/

chmod +x $HOME/.ptshell/*.sh

echo
echo "Installed. Restart Termux."
