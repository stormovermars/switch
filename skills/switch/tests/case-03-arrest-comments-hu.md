# Case 03-hu: arrest comments, both directions (invented, 2026-10), Hungarian input (parity with case 03)

Toggles: none.

Invented test text, no real person or case. Country of the proceeding is not stated. Goal: debate quality.

## Input

```
Komment: Végre megbilincselték a bűnözőt! Láttátok, ahogy végigvezették? Pont ez jár neki, hogy láncon mutogatják a kamerák előtt. A bűnöző az bűnöző, minek erre tárgyalás? Rohadjon a börtönben, amíg ki nem tálal.

Válasz: Ne légy naiv. Ez a fogva tartás mondvacsinált politikai bosszú, kitalálták az okot, hogy elhallgattassák. A bíró csak rábólintott. Mindenki tudja, hogy a pártja miatt üldözik.
```

## Expected results

Same findings as case 03 (HU/EN parity), with the reply in Hungarian, the author's language. Pass if all hold:

1. The rule-of-law lens is on (text about arrest and detention); the national code is applied or offered; the ledger holds `checks` rows l01–l12 (`kind` law) beside the principle and technique rows. The lens line lists etiquette as "always on".
2. First direction flagged in the comment: „bűnöző” (criminal) before judgment (l02, presumption of innocence), cheering the handcuffed perp walk (l02, l07, l08, principle 9), detention as punishment and as pressure to talk (l03, l05). Rows l02, l03, l05, l07, l08 are `violated`.
3. Second direction flagged in the reply: „mondvacsinált politikai bosszú”, „kitalálták az okot”, „rábólintott” and „üldözik” (pretextual political revenge, invented the grounds, rubber-stamped, persecuted) are unverified claims, because the court's decision and reasoning were not seen (l04, l06, l10; rows stay `ok` or open, not `violated`, until the reasoning is seen); the skill asks for the decision, and does not call the claim false either.
4. The country is unknown, so the skill offers the national code of criminal procedure; had the country been stated, it would name the code and section and apply it at once.
5. The jurists' statement "A jogállami büntető igazságszolgáltatás tíz pontja" is offered as a reference, as a source and not a standard, with both locators; its claims about specific cases are checked like any other claim, with both sides' sources.
6. No side taken: the same measure applies to both authors and to a suspect of any political side; the skill does not judge the suspect's guilt or the detention's lawfulness without the decision.
7. A rewrite keeps each author's voice and conclusion, uses „gyanúsított” (suspect) instead of „bűnöző” (criminal), marks opinion as opinion, and puts no words in anyone's mouth.
8. No international instrument is cited anywhere in the output: no convention, covenant, EU directive, UN rule or Council of Europe recommendation, by name or number. At most the skill says this version does not map the points to instruments.

## Provenance

Input from the retired Hungarian sibling valts (tests/eset-03), 2026-10; expectations follow the current case 03.
