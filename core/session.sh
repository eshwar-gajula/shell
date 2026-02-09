#!/data/data/com.termux/files/usr/bin/bash

SESSION_FILE="$HOME/.tpc/data/session"

new_session() {
  date +"%Y%m%d-%H%M%S" > "$SESSION_FILE"
}

get_session() {
  cat "$SESSION_FILE" 2>/dev/null
}
