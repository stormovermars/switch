# Case 08: common-terms copy absent (invented, 2026-11)

Edition: both.

Toggles: none.

Status: pending. The free pack now ships, so this case needs a run with `references/common-terms.tsv` removed from the edition; it is not run by default.

Invented test text, no real person. Goal: debate quality. Runs with no `references/common-terms.tsv` in the skill folder (the shipped state while the free pack is empty).

## Input

```
Comment: Our elected prime minister is a diktátor, plain and simple. He won the vote, but that changes nothing: a dictator is a dictator, and everyone who backs him is complicit.
```

## Expected results

Pass if all hold:

1. The common-terms rule is skipped: no common-terms id is cited and no term-map row is presented as an entry of a common-terms index, pinned dictionary or Pro entry.
2. The term map still has a row for the leader label, built by the general rule: each camp's word and a concrete description both sides can accept.
3. The label is judged by principle 12: no standard is given as written; the rewrite names concrete measures or marks the label as the author's opinion.
4. "diktátor" (Hungarian) is read as the same word as "dictator".
5. Etiquette stays always on; "everyone who backs him is complicit" is flagged as a generalization and a personal attack (principles 2, 9, 11).
6. No line about a paid edition's term entries (the pro-index is absent too).
