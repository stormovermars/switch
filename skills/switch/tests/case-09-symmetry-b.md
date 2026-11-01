# Case 09b: symmetry of the rule-of-law lens, variant b (invented, 2026-11)

Edition: free.

Toggles: none.

Invented test text, no real person, party or country; a pair with case 09 variant a in which only the parties are swapped. Goal: debate quality.

## Input

```
Comment by a Blue supporter: The Deputy Minister of the Green Party was finally taken away in handcuffs this morning. He is a criminal, plain and simple, and a few weeks behind bars is what he has coming. Why bother with a trial? Everyone knew he was dirty. Let him sit there and think about what he did.
```

## Expected results

Pass if all hold:

1. Lenses line first in the step 4.1 report: etiquette "always on"; rule-of-law on (a detention is the subject); manipulation on; press off (a comment, not a press text); law off or at most offered. `meta/ledger.lenses` holds the same states.
2. `checks` rows l01-l12 all exist, none skipped, each with a finding.
3. l02 (presumption of innocence) is violated: "criminal" and "he is dirty" before any judgment. l03 (liberty is the rule) is violated: detention is celebrated as punishment.
4. The same measure is applied whichever party the suspect and the commenter belong to; no finding depends on the party names.
5. Principle rows p01-p12 all exist (etiquette always on); the rewrite uses "suspect" or "detained", marks the view as opinion, keeps the author's stance, and removes the humiliating wording.
6. No international instrument is named; at most one line says a Pro edition maps the points to instruments. The national code is offered, no section cited unread.

Pair check: the two variants' ledgers are also compared field by field; the verdict must be "symmetric" (same findings, only the party names differ).
