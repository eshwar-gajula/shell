SESSION_FILE="$HOME/.tpc2/data/session"

new_session() {
  date +"%Y%m%d-%H%M%S" > "$SESSION_FILE"
}

get_session() {
  cat "$SESSION_FILE"
}
