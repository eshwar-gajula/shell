#!/data/data/com.termux/files/usr/bin/bash

clear

echo "======================================="
echo "   TERMUX SHELL INSTALLER"
echo "======================================="
echo

# Update system
pkg update -y && pkg upgrade -y

# Install required packages
pkg install -y figlet toilet neofetch cmatrix

# Create config folder
mkdir -p $HOME/.ptshell/config

# Ask user name
read -p "Enter your name: " USERNAME

# Save name
echo "USERNAME=$USERNAME" > $HOME/.ptshell/config/user.conf

# Backup old bashrc
if [ -f $HOME/.bashrc ]; then
    cp $HOME/.bashrc $HOME/.bashrc.backup
fi

# Create new bashrc
cat > $HOME/.bashrc << EOF

# PENTESTER SHELL LOADER
source \$HOME/.ptshell/banner.sh
source \$HOME/.ptshell/prompt.sh

EOF

# Copy files
cp matrix.sh $HOME/.ptshell/
cp banner.sh $HOME/.ptshell/
cp prompt.sh $HOME/.ptshell/

chmod +x $HOME/.ptshell/*.sh

echo
echo "Installation Complete."
echo "Restart Termux."
