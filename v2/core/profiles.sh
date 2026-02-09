#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc2"

profile_create() {
  mkdir -p "$BASE/profiles/$1"
  echo "$1" > "$BASE/data/current_profile"
  echo "[+] Profile $1 created"
}

profile_use() {
  echo "$1" > "$BASE/data/current_profile"
  echo "[+] Switched to $1"
}

profile_get() {
  cat "$BASE/data/current_profile" 2>/dev/null || echo default
}
