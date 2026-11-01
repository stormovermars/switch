# Case 08b: common term in a comment (invented, 2026-11)

Toggles: none.

Invented test text, no real person. Goal: debate quality. Needs the pinned `references/common-terms.tsv` with a row whose term_en is "dictatorship".

## Input

```
Comment: Our elected prime minister is a diktátor, plain and simple. He won the vote, but that changes nothing: a dictator is a dictator, and everyone who backs him is complicit.
```

## Expected results

Pass if all hold:

1. The term map has a row for the leader label that matches the common-terms row whose term_en is "dictatorship" (found by name, not by id), and cites that row's id.
2. The row states the in_short line and both sides briefly: what those who use the term say, and what those who reject it say.
3. The row cites the defining criteria from the term's check step (not only that the leader is disliked), and says the label has no standard as written; the rewrite names the concrete measures or marks the label as the author's opinion.
4. The legal note appears only if the row's legal column is not "general law only".
5. The term row is not invented: no rows for terms absent from the file; the word is read in its everyday sense, and "diktátor" (Hungarian) is recognised as the same term.
6. Etiquette stays always on; "everyone who backs him is complicit" is flagged as a generalization and a personal attack (principles 2, 9, 11).
