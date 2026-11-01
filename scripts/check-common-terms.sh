#!/bin/sh
# Verify the pinned common-terms copy. Exit 0 = ok.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
SRC=${COMMON_TERMS_DIR:-"$ROOT/../common-terms"}
REF="$ROOT/skills/switch/references"
TSV="$REF/common-terms.tsv"
VER="$REF/common-terms.VERSION"
fail() { echo "fail: $1" >&2; exit 1; }

if [ ! -f "$TSV" ]; then
  [ ! -e "$REF" ] || [ -z "$(ls -A "$REF")" ] || fail "references/ has files but no common-terms.tsv"
  echo "ok no common-terms copy (the skill skips the rule)"
  exit 0
fi
[ -f "$VER" ] || fail "missing $VER (run scripts/sync-common-terms.sh)"

want=$(printf 'id\tkind\tterm_en\tterm_hu\tterm_ro\taliases\tin_short\tcriteria\tsides\tgood\tbad\tnumbers\tvalues\tlegal\trelated\tmisuse\tcheck\treferences')
[ "$(head -n 1 "$TSV")" = "$want" ] || fail "header does not match the 18 columns"

if command -v sha256sum >/dev/null 2>&1; then
  have=$(sha256sum "$TSV" | cut -d' ' -f1)
else
  have=$(shasum -a 256 "$TSV" | cut -d' ' -f1)
fi
rec=$(sed -n 's/^sha256 //p' "$VER")
[ "$have" = "$rec" ] || fail "sha256 in VERSION does not match the file"
grep -qx "pack free" "$VER" || fail "VERSION does not name the free pack"

rows=$(($(wc -l < "$TSV") - 1))
MIN_ROWS=${COMMON_TERMS_MIN_ROWS:-1}   # free pack is small
[ "$rows" -ge "$MIN_ROWS" ] || fail "only $rows data rows (need at least $MIN_ROWS)"

[ ! -f "$REF/pro-index.tsv" ] || fail "pro-index.tsv must not ship"

if [ -f "$SRC/packs/free/dist/common-terms.tsv" ]; then
  if ! cmp -s "$SRC/packs/free/dist/common-terms.tsv" "$TSV"; then
    echo "stale: run scripts/sync-common-terms.sh" >&2
    exit 1
  fi
  echo "ok $rows rows, in sync with source"
else
  echo "ok $rows rows (source repo not present, sync not compared)"
fi
