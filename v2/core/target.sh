TARGET_FILE="$HOME/.tpc2/data/target"

set_target() {
  echo "$1" > "$TARGET_FILE"
}

get_target() {
  cat "$TARGET_FILE" 2>/dev/null || echo None
}
