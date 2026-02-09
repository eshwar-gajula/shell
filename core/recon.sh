#!/data/data/com.termux/files/usr/bin/bash

recon() {

  if [ -z "$1" ]; then
    echo "Usage: recon <target>"
    return
  fi

  TARGET="$1"
  DATE=$(date +"%Y%m%d_%H%M")

  DIR="$HOME/.tpc/recon/$TARGET/$DATE"
  mkdir -p "$DIR"

  set_target "$TARGET"

  echo "[*] Recon started..."

  nmap -sC -sV -oA "$DIR/nmap" "$TARGET"

  echo "[+] Results saved to $DIR"
}
