#!/data/data/com.termux/files/usr/bin/bash

TARGET_FILE="$HOME/.tpc/data/target"

set_target() {
  echo "$1" > "$TARGET_FILE"
  echo "[+] Target set to $1"
}

get_target() {
  [ -f "$TARGET_FILE" ] && cat "$TARGET_FILE" || echo None
}
