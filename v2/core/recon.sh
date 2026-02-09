#!/data/data/com.termux/files/usr/bin/bash

recon() {

  TARGET="$1"
  [ -z "$TARGET" ] && echo "Usage: recon <target>" && return

  PROFILE=$(profile_get)
  DATE=$(date +"%Y%m%d_%H%M")

  DIR="$HOME/.tpc2/reports/$PROFILE/$TARGET/$DATE"

  mkdir -p "$DIR"

  set_target "$TARGET"

  echo "[*] Recon running..."

  nmap -sC -sV -oA "$DIR/nmap" "$TARGET"

  encrypt "$DIR/nmap.nmap"

  echo "[+] Recon saved"
}
