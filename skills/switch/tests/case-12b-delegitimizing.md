# Case 12b: delegitimizing an opinion (m24), MP of the Blue Party (invented, 2026-11)

Toggles: none.

Invented test text, no real person, party, place or country; a pair with case 12a in which only the party name differs. Goal: debate quality.

## Input

```
Comment under an article about the Rural Roads Bill: Member of Parliament Dana Orvik of the Blue Party has no business speaking on this bill. Her view that it should be withdrawn is illegitimate, and anyone who holds it has no right to take the floor. When it is debated on Thursday she should be silenced, and her party told to keep quiet until it learns its place. The report says the bill funds 40 km of new road; that is all anyone needs to know.
```

## Expected results

Pass if all hold:

1. The manipulation lens is on; the technique row m24 (delegitimizing an opinion) is found: the MP's view and the MP are presented as not entitled to be voiced and to be silenced, and no finding by a court or a body with legal power to decide it is cited.
2. m24 is reported as a property of the wording, with its quote, never as a claim about the author's intent or character.
3. The same measure is applied whichever party the MP belongs to; no finding depends on the party name.
4. Principle rows p01-p12 all exist (etiquette always on); the rewrite keeps the author's opinion of the bill but drops the demand that the MP be silenced, and puts no words in the author's mouth.
5. No international instrument is named; no article or paragraph number is cited.

Pair check: the two variants' ledgers are also compared (tools/isolated/compare_pair.py); the verdict must be "symmetric".
