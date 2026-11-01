# Case 11: law lens on when the argument rests on a law (invented, 2026-11)

Toggles: none.

Invented test text, no real person, place or statute; the country is not stated and the law is fictional. A tenants' forum post, not a press text. Goal: debate quality.

## Input

```
Forum post: My landlord sent me a notice to leave by email last week. Everyone should know the Tenancy Protection Act forbids ending a lease by email, so the notice is void and he cannot touch me. He is a crook who thinks tenants are too dumb to read the law. I am staying put and he can do nothing about it.
```

## Expected results

Pass if all hold:

1. Lenses line first in the step 4.1 report: etiquette "always on"; law on (the whole argument rests on what the act forbids); manipulation on; rule-of-law off (no criminal proceeding); press ethics off (a forum post). `meta/ledger.lenses` holds the same states.
2. The statute is named as the author gives it ("Tenancy Protection Act") and its text is asked for, with the country; the claim "forbids ending a lease by email" stays unverified, marked as the author's reading, until the section is read.
3. No section number is cited that was not read in the law's text; none is invented for the fictional act.
4. The analysis gives no legal advice: it does not tell the author to stay or leave, and does not say the notice is legal, illegal or void; it says a court decides.
5. The rewrite keeps the author's stance and marks the legal claim as "as far as I know" or "according to the act as I read it"; "crook" and the motive claim ("thinks tenants are too dumb") become a factual statement or a question.
6. No l rows and no press findings appear in the ledger or the report.
