#!/data/data/com.termux/files/usr/bin/bash

sync_cloud() {

  BASE="$HOME/.tpc2"

  if [ ! -d "$BASE/cloud/repo" ]; then
    echo "Clone your cloud repo first:"
    echo "git clone <repo> $BASE/cloud/repo"
    return
  fi

  rsync -av \
  "$BASE/reports/" \
  "$BASE/cloud/repo/reports/"

  cd "$BASE/cloud/repo"

  git add .
  git commit -m "Auto sync $(date)"
  git push

  echo "[+] Synced"
}
