#!/data/data/com.termux/files/usr/bin/bash

clear

echo "======================================="
echo "   TERMUX PENTESTER SHELL INSTALLER"
echo "======================================="
echo

# Update system
pkg update -y && pkg upgrade -y

# Install tools
pkg install -y figlet toilet neofetch git

# Create shell folder
mkdir -p $HOME/.ptshell/config

# Ask username
read -p "Enter your name: " USERNAME

# Save username
echo "USERNAME=$USERNAME" > $HOME/.ptshell/config/user.conf

# Backup bashrc
if [ -f $HOME/.bashrc ]; then
    cp $HOME/.bashrc $HOME/.bashrc.backup
fi

# Create new bashrc
cat > $HOME/.bashrc << EOF

# Pentester Shell
source \$HOME/.ptshell/banner.sh
source \$HOME/.ptshell/prompt.sh

EOF

# Copy files
cp banner.sh $HOME/.ptshell/
cp prompt.sh $HOME/.ptshell/

chmod +x $HOME/.ptshell/*.sh

echo
echo "Installation finished."
echo "Restart Termux now."
