# Case 03: arrest comments, both directions (invented, 2026-10)

Toggles: none.

Invented test text, no real person or case. Country of the proceeding is not stated. Goal: debate quality.

## Input

```
Comment: Finally they put the crook in handcuffs! Did you see the perp walk? Parading him in front of the cameras in chains is exactly what he deserves. A criminal is a criminal, why wait for a trial? Let him rot in jail until he talks.

Reply: Don't be naive. This detention is pretextual political revenge, they invented the grounds to silence him. The judge just rubber-stamped it. Everyone knows he is being persecuted because of his party.
```

## Expected results

Pass if all hold:

1. The rule-of-law lens is on (text about arrest and detention); the national code is applied or offered; the ledger holds `checks` rows l01–l12 (`kind` law) beside the principle and technique rows. The lens line lists etiquette as "always on".
2. First direction flagged in the comment: "criminal" before judgment (l02, presumption of innocence), cheering the handcuffed perp walk (l02, l07, l08, principle 9), detention as punishment and as pressure to talk (l03, l05). Rows l02, l03, l05, l07, l08 are `violated`.
3. Second direction flagged in the reply: "pretextual political revenge", "invented the grounds", "rubber-stamped" and "persecuted" are unverified claims, because the court's decision and reasoning were not seen (l04, l06, l10; rows stay `ok` or open, not `violated`, until the reasoning is seen); the skill asks for the decision, and does not call the claim false either.
4. The country is unknown, so the skill offers the national code of criminal procedure; had the country been stated, it would name the code and section and apply it at once.
5. The jurists' statement "A jogállami büntető igazságszolgáltatás tíz pontja" is offered as a reference, as a source and not a standard, with both locators; its claims about specific cases are checked like any other claim, with both sides' sources.
6. No side taken: the same measure applies to both authors and to a suspect of any political side; the skill does not judge the suspect's guilt or the detention's lawfulness without the decision.
7. A rewrite keeps each author's voice and conclusion, uses "suspect" instead of "criminal", marks opinion as opinion, and puts no words in anyone's mouth.
8. No international instrument is cited anywhere in the output: no convention, covenant, EU directive, UN rule or Council of Europe recommendation, by name or number. At most the skill says this version does not map the points to instruments.
