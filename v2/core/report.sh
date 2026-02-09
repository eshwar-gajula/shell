#!/data/data/com.termux/files/usr/bin/bash

generate_report() {

  PROFILE=$(profile_get)
  TARGET=$(get_target)
  DATE=$(date)

  FILE="$HOME/.tpc2/reports/$PROFILE/$TARGET/report.md"

  cat > "$FILE" << EOF
# Pentest Report

Target: $TARGET
Profile: $PROFILE
Date: $DATE

## Recon
- Nmap completed

## Findings
(Add manually)

## Recommendations
(Add manually)

EOF

  encrypt "$FILE"

  echo "[+] Report generated"
}
