#!/bin/sh
# Refresh the pinned common-terms copy used by the skill. Idempotent.
# Ships only the free pack (public); never the paid core pack and no pro-index (no upsell in the free report).
# Source: $COMMON_TERMS_DIR (default: ../common-terms next to this repo).
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
SRC=${COMMON_TERMS_DIR:-"$ROOT/../common-terms"}
PACK="$SRC/packs/free"
DIST="$PACK/dist"
REF="$ROOT/skills/switch/references"

if [ ! -f "$SRC/scripts/ct.py" ] || [ ! -f "$PACK/pack.json" ]; then
  echo "error: common-terms free pack not found at $PACK (set COMMON_TERMS_DIR)" >&2
  exit 1
fi
python3 "$SRC/scripts/ct.py" export --pack "$PACK" >/dev/null
[ -f "$DIST/common-terms.tsv" ] || { echo "error: $DIST/common-terms.tsv was not produced" >&2; exit 1; }

rows=$(($(wc -l < "$DIST/common-terms.tsv") - 1))
if [ "$rows" -lt 1 ]; then
  echo "skip: the free pack has no terms yet; nothing synced (the skill skips the rule while the copy is absent)"
  exit 0
fi

if command -v sha256sum >/dev/null 2>&1; then
  hash() { sha256sum "$1" | cut -d' ' -f1; }
else
  hash() { shasum -a 256 "$1" | cut -d' ' -f1; }
fi
commit=$(git -C "$SRC" rev-parse HEAD 2>/dev/null || echo uncommitted)
new_version=$(printf 'pack free\ncommit %s\nsha256 %s\n' "$commit" "$(hash "$DIST/common-terms.tsv")")

same() { [ -f "$2" ] && cmp -s "$1" "$2"; }
if same "$DIST/common-terms.tsv" "$REF/common-terms.tsv" \
  && [ -f "$REF/common-terms.VERSION" ] && [ "$(cat "$REF/common-terms.VERSION")" = "$new_version" ]; then
  echo "ok unchanged ($rows rows)"
  exit 0
fi
mkdir -p "$REF"
cp "$DIST/common-terms.tsv" "$REF/common-terms.tsv"
printf '%s\n' "$new_version" > "$REF/common-terms.VERSION"
echo "ok updated ($rows rows)"
