# Changelog

The GitHub repository holds one squashed commit; the history of changes is kept here.

## 1.10.0 – 2026-11-01 – persuasion through judgement, tiered flags, disclosure lines

- Review fixes: tiers cover every flag (violation includes human-rights breaches); note-tier flags are not counted on the page; our own text may use a technique only as a note; drafting mode skips 5.1/5.10 and ends with 7.6; closing lines once per reply, principles only while the manipulation lens is off; author-added rows reported apart from overrides.
- README: back to the 1.7.0 layout, with the new features listed under the command and the opt-in term capture disclosed.
- Check rules 3.13–3.15: truth is not trust, support graded per claim and trust by track record, balance with limits.
- Principle 5 reworded: persuade through the reader's judgement, not around it. Manipulation flags use a disclosure test, the context (stakes, power, vulnerability) and three tiers (note, caution, violation); judged by observable signs, never intent. Techniques named but not counted are listed with the reason.
- Reports and rewrites end with a "Self-check" line and an "Author's choices" line (ignored claims, n/a rows, overrides, trust and side overrides per camp, approval); the rewrite adds a "What changed and why" list and offers an optional note for readers.
- Ledger: claims get `side_override`; author-added claims keep the author's status in `override`. Drafts get the same checks rows and report.
- Known limitation (symmetry, case 09a/09b, 3 runs per variant, 46 check rows each): 1, 1 and 3 rows differed between the variants per run; which rows differed and which variant was flagged changed from run to run (p08 3 of 3 runs, flagged twice in a and once in b; l06 2 of 3, once each way; p07 and m18 once each, in b). This is run variance on borderline wording ("Why bother with a trial?"), not one side flagged consistently; every graded expectation passed in all six runs.
- Common terms: both sides with the same structure and length under neutral labels; the Pro upgrade line and pro-index are removed from the free edition.
- English only (skill and docs); Hungarian test inputs stay (03-hu, 04-hu); valts is archived.
- common-terms: the term map cites a pinned copy of the common-terms free pack (`skills/switch/references/`, 29 terms); `scripts/sync-common-terms.sh` ships only the free pack (no pro-index), `scripts/check-common-terms.sh` verifies it; capture of new terms is opt-in (`COMMON_TERMS_DIR`); case 08b (data case); the absent-copy case is pending.
- Rule-of-law lens: a passing mention makes it offered with no rows; each l-row judges the text's own stance, not the proceeding; findings violated / ok / unclear / not_addressed everywhere (page included).
- Ledger values stored as keys (partly_true, camp_a…); fixed `lenses` string with etiquette always on; several authors share one row per check with the source named in the note; rows of a lens switched off stay but are not reported.
- Etiquette defined as the twelve principles plus the self-check; the self-check uses the technique list even with the manipulation lens off; no instrument citations from memory.

## 1.9.0 – 2026-11-01 – twelve public fairness points, lens toggles

- Law lens: on when the argument rests on what a law requires, offered for a legal claim made in passing. A fully-on rule-of-law lens writes a row for every point l01–l12.
- Rule-of-law lens: twelve public points (l01–l12) without instrument citations; informed by the jurists' statement (both locators, access date), 11–12 our additions; the statement stays a source, not a standard. `checks` rows l01–l12 (`kind` law) while the lens is on; ledger page shows them again. The instrument mapping moved to the Pro edition.
- Toggles: etiquette (the twelve principles) always on, not switchable as a lens or per row (an author's "n/a" on a principle row is reported, not applied; the ledger page ignores it); the manipulation checklist is its own switchable lens (default on for contentious texts); rule-of-law, press ethics and law stay switchable. The lens line lists etiquette as "always on".
- Press-ethics lens: "the presumption binds the authority, accuracy binds the press".
- Principles 1–10: "adapted (reworded) from" the manifesto, with its URL in SKILL.md / AGENTS.md.
- LICENSE (MIT) and NOTICE (third-party texts) added.
- Tests: case 03 re-keyed to l01–l12, case 04 updated, new cases 05 (etiquette always on), 06 (lens off by author), 07 (free run, no instrument citations); each case marked free, pro or both.
- Version: 1.9.0 in every manifest.
- Wording pass: the twelve points use our own wording without case-specific examples; they are "informed by" the jurists' statement (not adapted or condensed from it); NOTICE states that our wording is MIT and that the manifesto and the statement texts are not included and not MIT.

## 1.8.0 – 2026-10-31 – lenses switched by topic

- SKILL.md / AGENTS.md: new step 1.4 "Pick the lenses by topic". Each standard is a lens with its own topic: the twelve principles and the manipulation techniques (contentious texts), the rule-of-law lens (criminal proceedings), press ethics (published press texts) and law (claims about what a law requires). A lens is on, offered or off by topic; the author may switch any lens on or off for the rest of the conversation; a lens that is off is not checked, reported or used in the rewrite. The step 4.1 report opens with the lens states; the ledger keeps them in `meta/ledger.lenses`.
- Tests: case 04 (a forum post where only some lenses apply, and the author switches one off).
- Version: 1.8.0 in every manifest.

## 1.7.0 – 2026-10-31 – rule-of-law lens for criminal proceedings, source of the principles

- SKILL.md / AGENTS.md: new rule-of-law lens for texts about criminal proceedings. For a text about a criminal proceeding: the country's code of criminal procedure is applied at once if the country is known, otherwise offered; the jurists' statement "The ten points of a rule-of-law criminal justice system" is always offered as a source (not a standard); both directions are flagged (guilty before judgment / detention celebrated as punishment / humiliation approved, and persecution or "pretextual" grounds claimed without the court's reasoning), with the same standard for suspects of every political side.
- SKILL.md / AGENTS.md: a sentence under the principles says that principles 1–10 come from the manifesto of the "Let's change the tone!" (Váltsunk hangnemet!) movement; 11–12 are our own.
- Claim ledger page: the checklist shows and counts a third group, the rule-of-law points (`checks` rows, `kind` law), created only for criminal proceedings.
- README: new "Sources" section.
- Tests: case 03 (arrest comment and a reply claiming pretextual detention).
- Version: 1.7.0 in every manifest.
- Test-run fixes: the `checks` row fields and value sets are spelled out; the rule-of-law lens applies in full only when a criminal proceeding is a subject, a passing mention triggers only the points touched; a code section is cited only after reading it in the law's text; the jurists' statement carries its author and URL; a conclusion that calls for breaking a point stays the author's marked opinion (humiliating wording removed, stance not reversed); texts by several authors are reviewed and rewritten each in its own block; a rewrite adds no sentence the author did not write and never reverses the stance; an intent attribution becomes a question even when marked as opinion.

## 1.6.0 – 2026-10-20 – sources with trust ratings, checklist

- Claim ledger page: new "Sources" section (`sources` collection, one row per domain, the document id is the domain). Claude records its own trust rating, the side and a one-line reason; the author's `override` (trust) and `side_override` (side) fields are stored separately, shown as "manual", with a "back to Claude's value" option. The tiles show the trusted / untrusted counts as Claude's / effective, and each source shows how many claims use it.
- Claim ledger page: links to an effectively untrusted source get a warning mark in the claims table.
- Claim ledger page: new "Checklist" section (`checks` collection: p01–p12 principles, m01–m22 manipulation techniques) with Claude's finding and note, the author's `override` ("n/a" switches a check off), and violated / found tiles.
- SKILL.md: rules for keeping `sources` and `checks`; the report flags claims resting only on untrusted sources; switched-off checks are left out of the report and the rewrite.
- Version: 1.6.0 in every manifest.

## 1.5.3 – 2026-10-20 – mobile form fix

- Claim ledger page: add-form text fields no longer stick out past the dropdowns at phone width.
- Version: 1.5.3 in every manifest.

## 1.5.2 – 2026-10-20 – Claude's count / your count

- Claim ledger page: each status tile shows Claude's count and the count with the author's overrides, e.g. "unverified 3/1".
- Version: 1.5.2 in every manifest.

## 1.5.1 – 2026-10-20 – ledger rows are ignored, not deleted

- Claim ledger page: the row Delete (and its confirm click) is replaced by Ignore / Restore, which sets the boolean `ignored` field. Ignored rows are dimmed with the claim struck through, left out of the status counts and the open items, shown under a new "ignored" count tile and filter ("all" shows everything). The page never deletes rows.
- SKILL.md: `ignored` added to the ledger fields; ignored rows stay out of the report and the rewrite, the flag is never cleared by Claude, and rows are never deleted.
- Version: 1.5.1 in every manifest.

## 1.5.0 – 2026-10-20 – ledger by default, lawful exception, valts parity

- Claim ledger page: published by default, without being asked, as soon as the first check is done and before the step 4.1 report; its link goes at the top of that report; the same page (URL) is kept for the whole conversation so it stays listed in the session's artifacts.
- Manipulation techniques: a technique that is lawful, respects human dignity and human rights, and harms no one (including the person it is aimed at) may appear in our own writing and is named but not counted as a violation when flagged; human rights always count.
- valts brought to full parity with switch: same rules, numbering, ledger page (Hungarian UI, identical data fields and collections), tests and AGENTS.md; the ledger page title is "Állításnapló" and SKILL.md refers to it by that name.
- Claim ledger page: new `override` field for the author's manual status choice (Claude's `status` is never overwritten; the page shows both, marks overridden rows, and counts/filters use the effective status); `source` may hold several URLs, shown as link1, link2…
- Version: 1.5.0 in every manifest.

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
