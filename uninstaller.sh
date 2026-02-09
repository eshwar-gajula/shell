#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc"

echo "[*] Removing TPC Shell..."

rm -rf "$BASE"

if [ -f "$HOME/.bashrc.backup" ]; then
  cp "$HOME/.bashrc.backup" "$HOME/.bashrc"
  echo "[+] bashrc restored"
fi

echo "[+] Uninstalled"
