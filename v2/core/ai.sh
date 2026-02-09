#!/data/data/com.termux/files/usr/bin/bash

ai() {

  if [ -z "$1" ]; then
    echo "Usage: ai <question>"
    return
  fi

  PROMPT="$*"

  python << EOF
import openai
import os

openai.api_key = os.getenv("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")

resp = openai.ChatCompletion.create(
 model="gpt-4",
 messages=[{"role":"user","content":"$PROMPT"}]
)

print(resp["choices"][0]["message"]["content"])
EOF
}
