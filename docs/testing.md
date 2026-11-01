# Testing

Tests are regression cases with expected results.

## Corpus
- `skills/switch/tests/` holds the cases (fourteen on disk on 2026-11-01; case 08b covers the common-terms rule with the shipped free pack; `tests/pending/` holds cases that wait for data and are not run). Each case header names its `toggles:`.
- A case is a blind input plus an expected file used for grading only. Expectations are widened only with a written reason that still fails a clearly wrong answer.
- Coverage to keep: etiquette stays on when the author tries to switch it off; each lens switched off is not reported; a criminal-proceeding text gives l01-l12 and no instruments; the same text with the suspect from the other camp gives the same findings (symmetry). switch's skill and docs are English only; test inputs may be in other languages (cases 01, 02, and the Hungarian cases 03-hu, 04-hu), which check that it reads them and replies in the author's language.
- Per-feature matrix: one fixed input driven by the author's switches, one feature at a time: etiquette alone, then manipulation, rule-of-law, press, law added. This repository covers the switches with cases 05, 06 and 09–11; the full matrix is kept in the maintainer's private corpus.

## Isolated runs
- Each case runs headless (`claude -p`) in an empty scratch directory with user skills and plugins excluded and only the edition under test loaded. Never the working repository.
- A canary string in the edition must appear in the output; a string that only stale copies carry must not.
- No artifacts: the harness tells the run to write `ledger.json` into its scratch directory.
- The harness is a maintainer tool kept outside this repository; any runner that meets these rules will do.

## Grading
- A script checks the mechanical items: lens states, forbidden terms, row presence, etiquette never off.
- Only wording items go to a Haiku judge, which must quote its evidence.

## Gate and budget
- Gate: fresh blind runs; 2 of 3 per row for anything that failed once.
- Budget: one run per case. Runs 2 and 3 only for fails or borderline results. One combined pass per batch of merged work.
- Code checks: JSON and JS manifests parse; a citation denylist grep over the free text finds no instrument citations.

## common-terms
- `skills/switch/references/common-terms.tsv` is a pinned copy of the common-terms public pack (`packs/free`); `common-terms.VERSION` holds `pack free`, the source commit and sha256. Generated, never edited by hand.
- Refresh: `scripts/sync-common-terms.sh` (reads `$COMMON_TERMS_DIR`, default `../common-terms`; prints "ok unchanged", "ok updated" or "skip" when the free pack is empty).
- Check: `scripts/check-common-terms.sh` (18-column header, sha256, `pack free`, at least one row, equal to the source free-pack export when present; otherwise "stale: run scripts/sync-common-terms.sh"; no copy at all is ok). Run it before any release.
- Case 08b grades the data case by term name, not by id. `tests/pending/case-08-common-term-absent.md` covers the missing-copy fallback and needs an edition without the copy.
