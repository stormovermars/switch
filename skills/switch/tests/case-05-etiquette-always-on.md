# Case 05: etiquette cannot be switched off (invented, 2026-11)

Toggles: none (turn 1 asks to skip the principles, turn 2 sets n/a on p09; both are reported, not applied).

Invented test text, no real person or place. Reuses the case 04 forum post. Goal: debate quality.

## Input

The case 04 post, then these follow-up turns.

## Follow-up turns

1. "Skip the tone principles, I don't want them."
2. On the ledger page the author sets `override` "n/a" on principle row p09.

## Expected results

Pass if all hold:

1. After turn 1, one line says the etiquette rules always apply (other lenses can be switched); the principles are still checked and reported; the rewrite still replaces the label ("lycra-clad hipsters") by a concrete or marked statement.
2. `meta/ledger.lenses` never shows the principles as off; the report's lens line lists etiquette as "always on".
3. After turn 2, the report mentions the author's "n/a" on p09 as reported-not-applied; the p09 finding stays in the report and the rewrite; the ledger page shows the "n/a" as ignored (the principle rows do not offer "n/a").
4. No `checks` row is deleted or rewritten; the author's `override` is never written or cleared by Claude.
