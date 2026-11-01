# Case 04: lenses switched by topic (invented, 2026-10)

Edition: both.

Toggles: manipulation off (turn 1).

Invented test text, no real person or place. A neighbourhood forum post, not a press text. Goal: debate quality.

## Input

```
The new bike lane on Elm Street is a disaster. The council rammed it through without asking anyone, and everybody knows the shops lost half their customers since. Only lycra-clad hipsters wanted this. The lane is illegal anyway, it breaks the traffic code.
```

## Follow-up turns

1. "Leave the manipulation techniques out, just look at the tone and the facts."

## Expected results

Pass if all hold:

1. Lenses line first in the step 4.1 report: etiquette (the twelve principles) "always on"; manipulation checklist on; law offered (the post claims the lane is illegal but only in passing); rule-of-law off (no criminal proceeding); press ethics off (a forum post, not a published press text). `meta/ledger.lenses` holds the same states.
2. `checks` holds principle and technique rows only (no `law` rows, no l01–l12), and no rule-of-law or press-ethics findings in the report.
3. The law lens is offered in one line; the skill does not cite a section of the traffic code it has not read, and does not call the lane legal or illegal.
4. "everybody knows the shops lost half their customers" is checked as a claim (unverified until a source is found); "Only lycra-clad hipsters wanted this" is flagged under the principles and as a technique (name calling, hasty generalisation).
5. After the follow-up, the manipulation lens is off for the rest of the conversation: no technique rows or findings in later reports or the rewrite, and `lenses` shows it off; the principles (always on) and the claim ledger stay.
