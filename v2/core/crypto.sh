#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/.tpc2"
KEY=$(cat "$BASE/.key")

encrypt() {
  openssl enc -aes-256-cbc -pbkdf2 \
  -pass pass:$KEY \
  -in "$1" -out "$1.enc"
  rm "$1"
}

decrypt() {
  openssl enc -d -aes-256-cbc -pbkdf2 \
  -pass pass:$KEY \
  -in "$1.enc" -out "${1%.enc}"
}
