# Case 08: common-terms copy absent (invented, 2026-11)

Toggles: none.

Without: skills/switch/references/common-terms.tsv

Invented test text, no real person. Goal: debate quality.

## Input

```
Comment: Our elected prime minister is a diktátor, plain and simple. He won the vote, but that changes nothing: a dictator is a dictator, and everyone who backs him is complicit.
```

## Expected results

Pass if all hold:

1. The common-terms rule is skipped: no common-terms id is cited and no term-map row is presented as an entry of a common-terms index, or pinned dictionary.
2. The term map still has a row for the leader label, built by the general rule: each camp's word and a concrete description both sides can accept.
3. The label is judged by principle 12: no standard is given as written; the rewrite names concrete measures or marks the label as the author's opinion.
4. "diktátor" (Hungarian) is read as the same word as "dictator".
5. Etiquette stays always on; "everyone who backs him is complicit" is flagged as a generalization and a personal attack (principles 2, 9, 11).
6. No line about term entries beyond the shipped copy.
