# Case 10: press-ethics lens on for a published article (invented, 2026-11)

Edition: both.

Toggles: none.

Invented test text, no real person, firm or place. This is a published press text (an excerpt from a local news site). Goal: debate quality.

## Input

```
Published press text, "Valley Courier", local news, 3 November:

LANDLORD SCAM EXPOSED IN OAKFIELD

Tenants say Mr. Daniel Rowe, 52, who runs a small flat-letting business from his home at 14 Mill Lane, has been cheating them for years. Three tenants told our reporter that he kept their deposits after they moved out. "He is a greedy, heartless man," said one. Mr. Rowe is known around the neighbourhood as a bully and surely knows exactly what he is doing. His teenage daughter, who goes to Oakfield High, has stopped answering questions about it. Deposit disputes have risen sharply in the town, which proves that landlords like him are out of control. The town council must act now.
```

## Expected results

Pass if all hold:

1. Lenses line first in the step 4.1 report: etiquette "always on"; press ethics on (a published press text); manipulation on; rule-of-law off (no criminal proceeding, only a civil deposit dispute); law off or at most offered. `meta/ledger.lenses` holds the same states.
2. Press finding: the affected party is not heard (no statement from Mr. Rowe, no sign he was asked); the open item asks whether he was contacted.
3. Press finding: fact and opinion are mixed ("greedy, heartless", "bully", "surely knows exactly what he is doing" next to the deposit claims); intent is turned into a checkable question or marked as opinion.
4. Press finding: a private person is exposed (full name, age, home address) and a minor is exposed (his daughter, her school); the rewrite drops the minor and the address.
5. Claims in the ledger: "kept deposits" is unverified (one-sided, three unnamed tenants), "disputes have risen sharply" is unverified, "which proves" is flagged as an unsupported conclusion; no l rows exist.
6. The rewrite keeps the article's topic and conclusion; it neither declares him guilty nor calls the claims false, and it names the source of each claim.
