# Case 04-hu: lenses switched by topic (invented, 2026-10), Hungarian input (parity with case 04)

Edition: both.

Toggles: manipulation off (turn 1).

Invented test text, no real person or place. A neighbourhood forum post, not a press text. Goal: debate quality.

## Input

```
Az Ihlet utcai új biciklisáv egy katasztrófa. A tanács keresztülverte, senkit nem kérdezett meg, és mindenki tudja, hogy azóta a boltok elvesztették a vevőik felét. Ezt csak a lycrás hipszterek akarták. A sáv amúgy is törvénytelen, sérti a KRESZ-t.
```

## Follow-up turns

1. „A manipulációs technikákat hagyd ki, csak a hangnemet és a tényeket nézd.”

## Expected results

Same findings as case 04 (HU/EN parity), with the reply in Hungarian, the author's language. Pass if all hold:

1. Lenses line first in the step 4.1 report: etiquette (the twelve principles) "always on"; manipulation checklist on; law offered (the post claims the lane is illegal but only in passing); rule-of-law off (no criminal proceeding); press ethics off (a forum post, not a published press text). `meta/ledger.lenses` holds the same states.
2. `checks` holds principle and technique rows only (no `law` rows, no l01–l12), and no rule-of-law or press-ethics findings in the report.
3. The law lens is offered in one line; the skill does not cite a section of the traffic code (KRESZ) it has not read, and does not call the lane legal or illegal.
4. „mindenki tudja, hogy … a boltok elvesztették a vevőik felét” (everybody knows the shops lost half their customers) is checked as a claim (unverified until a source is found); „Ezt csak a lycrás hipszterek akarták” (only lycra-clad hipsters wanted this) is flagged under the principles and as a technique (name calling, hasty generalisation).
5. After the follow-up, the manipulation lens is off for the rest of the conversation: no technique rows or findings in later reports or the rewrite, and `lenses` shows it off; the principles (always on) and the claim ledger stay.

## Provenance

Input from the retired Hungarian sibling valts (tests/eset-04), 2026-10; expectations follow the current case 04.
