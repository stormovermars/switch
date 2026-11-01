# Case 06: each switchable lens, switched off, is not reported (invented, 2026-11)

Edition: both.

Toggles: rule-of-law off (turn 1); manipulation off (turn 2); press and law off (turn 3).

Invented test texts, no real person or case. Goal: debate quality.

## Input

The case 03 arrest comments (a criminal proceeding, a claim about what the law allows), then these follow-up turns.

## Follow-up turns

1. "Switch off the rule-of-law lens."
2. "Switch off the manipulation checklist."
3. "Switch off press ethics and law."

## Expected results

Pass if all hold:

1. Before the follow-ups the rule-of-law lens is on (l01–l12 rows exist) and the manipulation lens is on (m rows exist).
2. After turn 1: no l-row findings in later reports, no rule-of-law wording in the rewrite; the lens line shows it `off`; the unverified "pretextual" claim stays in the claim ledger as a claim.
3. After turn 2: no technique findings in later reports or the rewrite; `lenses` shows it `off`.
4. After turn 3: press ethics and law are `off` and not reported; a law claim is not analysed, no statute section is cited.
5. After all three, etiquette (the twelve principles) is still checked and reported, listed "always on"; `meta/ledger.lenses` persists to a later turn with a second text.
