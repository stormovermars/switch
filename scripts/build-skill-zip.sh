#!/bin/bash
# Build switch-skill.zip for the chat apps (Claude, ChatGPT, Gemini): the skills/switch folder at the zip root, without tests.
# Usage: scripts/build-skill-zip.sh [OUT_DIR]   (default: dist/, which git ignores)
set -eu
cd "$(dirname "$0")/.."
out=${1:-dist}; mkdir -p "$out"; out=$(cd "$out" && pwd); z="$out/switch-skill.zip"; rm -f "$z"
(cd skills && zip -qrX "$z.tmp" switch -x 'switch/tests/*' '*.DS_Store') && mv "$z.tmp" "$z"
unzip -l "$z" | grep -q 'switch/SKILL.md' && echo "ok $z" || { echo "fail $z: no switch/SKILL.md"; exit 1; }
