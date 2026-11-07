#!/bin/sh
# Denylist guard for the shipped text. Exit 0 = clean.
# Scans every tracked text file (case-insensitive) for named international
# instruments and article, paragraph or section numbers, except the files in
# EXEMPT below. A maintainer-held file named by DENYLIST (one extended regex
# per line; blank and comment lines ignored) adds private patterns, checked
# only when DENYLIST is set.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
cd "$ROOT"
# Explicit exemption list (one path per line, with the reason).
# - this script holds the patterns themselves
# - common-terms.tsv is pinned, generated data that predates this guard and
#   cites instruments in its references column; open item for the maintainer
# - tests/case-02: a national statute section (a fact the case checks), not an
#   instrument citation
# - tests/case-03 (both), case-07: expectations that say no instrument is cited
#   (they name the instruments only to forbid them)
EXEMPT='scripts/check-free-text.sh
skills/switch/references/common-terms.tsv
skills/switch/tests/case-02-child-protection-law.md
skills/switch/tests/case-03-arrest-comments-hu.md
skills/switch/tests/case-03-arrest-comments.md
skills/switch/tests/case-07-free-criminal-text.md'
PATTERNS='ECHR|ECtHR|ICCPR|UDHR|UNCRC|European Convention|European Court of Human Rights|Universal Declaration|Council of Europe|United Nations|Venice Commission|OSCE|Framework Convention|\bUN (covenant|convention|treaty)|\bArts?\.? ?[0-9]|\bArticles? ?[0-9]|\bPara(graph)?s?\.? ?[0-9]|Protocol No\.? ?[0-9]|§ ?[0-9]|[0-9] ?§|[0-9]+\. ?cikk|\([0-9]+\) ?bekezdés'
if [ -n "${DENYLIST:-}" ] && [ -f "$DENYLIST" ]; then
  EXTRA=$(grep -v '^[[:space:]]*#' "$DENYLIST" | grep -v '^[[:space:]]*$' | paste -sd'|' - || true)
  [ -z "$EXTRA" ] || PATTERNS="$PATTERNS|$EXTRA"
fi
bad=0
for f in $(git ls-files); do
  case "$f" in LICENSE) continue ;; esac
  printf '%s\n' "$EXEMPT" | grep -qxF "$f" && continue
  hits=$(grep -nIiE "$PATTERNS" "$f" || true)
  if [ -n "$hits" ]; then printf '%s\n' "$hits" | sed "s|^|$f:|"; bad=1; fi
done
if [ "$bad" -ne 0 ]; then
  echo "fail: denylisted text found (see lines above)" >&2
  exit 1
fi
for f in skills/switch/references/references.json .claude-plugin/plugin.json .codex-plugin/plugin.json .cursor-plugin/plugin.json; do
  python3 -c 'import json,sys; json.load(open(sys.argv[1]))' "$f" || { echo "fail: $f does not parse" >&2; exit 1; }
done
tail -n +6 skills/switch/SKILL.md | cmp -s - AGENTS.md || { echo "fail: SKILL.md body differs from AGENTS.md" >&2; exit 1; }
echo "ok free text clean, manifests parse, SKILL.md in sync with AGENTS.md"
