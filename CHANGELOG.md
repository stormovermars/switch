# Changelog

The GitHub repository holds one squashed commit; the history of changes is kept here.

## 1.4.0 – 2026-10-18 – audit fixes

- Statuses: one list everywhere (true / partly true / false / unverified / opinion / prediction); "not found yet" is a temporary sub-state, "unapproved" marks the whole ledger; "open" is no longer a status.
- 4.1: ask the 1.3 questions together with the ledger, then stop and wait for the author; if unavailable or asked for everything at once, continue with the ledger marked "unapproved". 4.1 also shows the term map.
- Glossary is required whenever terms were replaced.
- Output format: fixed order (one code block: text, glossary, Sources; then the other side's list, open items, optional shorter version). Fixed labels (Sources, For your text:, the glossary heading) go in the author's language. Principles 11/12 clauses synced into valts (HU now matches EN).
- Check: item 4 split (4: each side's press; 5: mark sources' sides, unfiltered search, "unverified" only after all this); later items shifted up by one (12 in total).
- Rewrite: 5.3 a claim found false is replaced by the accurate fact (with reference) or dropped, never kept as opinion; 5.2 marker is "I think…"; 5.4 an observation stays the author's own account.
- Procedure: when drafting a new text, steps 2–3 on own claims, skip 1.3 and 4.1. 7.1 is now only a pointer to the paragraph after the principles.
- Term map and Claim ledger share one lead-in style; double blank line fixed.
- Manipulation: new "Generalization" (21 → 22); intro: defend against the other side's, rewrite our own; defense paragraph under "When the author is the target:"; neutral loaded-question example.
- Descriptions (SKILL.md, manifests, README): checks both sides' sources, term map, rewrite for the other camp.
- Tests: the skill's labels; case-01 #15 (historical analogy); case-02 #5b, #5c, Follow-up turns section, #10 glossary required.
- Version 1.4.0 in every manifest.

## 1.3.0 – 2026-10-18 – late evening: video and blocked text field-tested

- Videos: title and description are the channel's framing, not evidence; auto captions are machine text, quoted verbatim only after checking; note full recording vs clip, the channel's side, and whether the date matches the event.
- Blocked primary text: never bypass the block; check what was downloaded (a CAPTCHA page can arrive as a successful response); fallback order: legal database/gazette, before promulgation the other official documents, finally a verbatim-quoting article; a paraphrase does not replace the text.
- Minimum depth: an unreachable primary-source page does not count as a search.
- Not yet tested: a paywalled article.

## 1.2.0 – 2026-10-18 – evening: term map, plain words, translation for the other camp

Based on a review of a heated political text and a test on four articles from both camps' press.

Prepare
- If the author is not available (reviewing a published piece), questions go to the open items and the ledger is marked "unapproved".

Term map and claim ledger
- New term map: for each contested thing, which word each camp uses and what it concretely is, in a description both sides can accept.
- New status: "prediction".

Check
- Balanced sources from the first round, searched with each camp's own vocabulary. Sides are defined by the dispute, not by who is in government.
- The ledger marks each source's side, or "mixed/official". One unfiltered search after the filtered ones.
- If the dispute is not between two political sides: the parties' own channels and one independent source.
- Videos: transcript first; without one, the video is cited as the author's observation and a timestamp is requested.
- Blocked primary text (CAPTCHA, paywall): official legal database, gazette or a verbatim-quoting article, named.
- Bans pinned down: what, where, since when, and what not.
- Criminal proceedings: suspicion, custody, arrest, charge and verdict kept apart; presumption of innocence.
- With many claims, check first those the conclusion rests on.

Rewrite
- A prediction stays the author's prediction.
- Numbered references in the text, "Sources" list at the end (outlet, date, URL).
- Historical analogy: name the concrete similarity or mark it as opinion.
- Intent into effect, for groups too.
- Plain words throughout; jargon and softened terms replaced with concrete descriptions, a law's wording kept in quotes. Mandatory glossary before the sources, from the term map, including the other camp's word. Own translations marked.

Output format (new section)
- Ledger and violations as a short list or table; the rewrite as plain text in one code block.

Close
- Side questions get a short, balanced answer ending with "For your text:" and a ready sentence that matches the ledger.
- If the user turns on the model: once, calmly, its actual positions, then back to the task.

8. Separate operation: translation for the other camp (new)
- On request, the same content in the other camp's words; claims, sources and conclusion unchanged; a list of replacements at the end.

Manipulation techniques
- 18 → 21: false analogy, loaded question, attributed motive.
- Rule examples are generic; concrete cases live only in the tests.

Tests
- case-01: +13–14 (source side, code-block output).
- New case-02 (child protection law amendment, 15 expectations).
- Not yet field-tested: video without transcript, blocked primary text.

## 1.1.0 – 2026-10-18 – afternoon: generalized to any opinion

- Goal: the quality of the debate, not changing the author's position; applies to both sides.
- Seven-step procedure: prepare, claim ledger, check, report in two steps, rewrite, prepare for the other side, close.
- Minimum search depth: two searches, at least one aimed at a primary source; "not found" is not "false".
- Rewrite: author's voice kept, no words put in their mouth, correct don't delete, unverified opinion kept and marked.
- First regression case: case-01 (construction exclusion).

## 1.0.0 – 2026-10-18 – morning: first release

- Twelve tone principles and a list of manipulation techniques (deflection, DARVO, flooding, astroturfing, etc.).
- Principles 11 and 12 apply to our own writing by default.
- Check steps: search each name on its own, at least two searches, "not found" is not "false".
- Plugin layout for Claude Code, Codex and Cursor, plus AGENTS.md.
- Hungarian sibling skill: valts.
