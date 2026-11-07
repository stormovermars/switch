#!/bin/sh
# Denylist guard for the shipped free text. Exit 0 = clean.
# Scans the skill, its reference data and the public docs for named
# international instruments and article or section numbers. A maintainer-held
# file named by DENYLIST (one extended regex per line) adds private patterns.
# The pinned common-terms copy is generated data and is not scanned here.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
cd "$ROOT"
FILES="AGENTS.md skills/switch/SKILL.md skills/switch/references/references.json README.md NOTICE CHANGELOG.md docs"
PATTERNS='ECHR|ICCPR|European Convention|Convention on|Council of Europe|United Nations|\bUN (treaty|covenant|convention)|Art\. [0-9]|Article [0-9]|§ ?[0-9]'
if [ -n "${DENYLIST:-}" ] && [ -f "$DENYLIST" ]; then
  PATTERNS="$PATTERNS|$(grep -v '^#' "$DENYLIST" | grep . | paste -sd'|' -)"
fi
# shellcheck disable=SC2086
if grep -rnIE "$PATTERNS" $FILES; then
  echo "fail: denylisted text found (see lines above)" >&2
  exit 1
fi
for f in skills/switch/references/references.json .claude-plugin/plugin.json .codex-plugin/plugin.json .cursor-plugin/plugin.json; do
  python3 -c 'import json,sys; json.load(open(sys.argv[1]))' "$f" || { echo "fail: $f does not parse" >&2; exit 1; }
done
tail -n +6 skills/switch/SKILL.md | cmp -s - AGENTS.md || { echo "fail: SKILL.md body differs from AGENTS.md" >&2; exit 1; }
echo "ok free text clean, manifests parse, SKILL.md in sync with AGENTS.md"
