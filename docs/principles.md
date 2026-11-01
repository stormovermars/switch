# Build principles

Principles that govern how this repository is built and kept. The rules the skill follows when it reviews a text are in `SKILL.md` and `AGENTS.md`; they are the authority and are not repeated here.

## Licence and editions
1. **Open core, one source.** The public edition is MIT. A paid tier exists, but it is built from the same source and never hand-forked. For switch the free edition is `git archive HEAD`; the paid tier is a separate, private build.
2. **Rules are free; data, and verdicts checked against data, are paid** (paid depth never changes a free result). The etiquette rules, the manipulation checklist, the twelve fairness points, stage separation and the ledger are free. The instrument mapping, national-law data, press codes and the evidence lake are paid.
3. **What was published as MIT stays free.** Nothing already published is moved to the paid tier. New paid wording exists only in private.
4. **The points are free, the instrument mapping is paid.** The twelve fairness points are our own wording; mapping them to international instruments is the paid part.
5. **Third-party texts are not included.** The manifesto and the jurists' statement are sources, credited and linked; their text is not in the repository and is not under our licence (see [sources.md](sources.md)).

## Authorship and operation
6. **Commits are by stormovermars, with no co-author trailer.** Check author and committer before any push.
7. **Push only on the maintainer's word.** Private remotes included.
8. **No history rewrite** unless the maintainer orders one (done once, 2026-11-01); see [release.md](release.md).
9. **No local AI models and no model weights.** Online models through an API are fine.
10. **No local paths in committed files.** Repository files carry no home-directory paths.
11. **Work is tracked on the project board** and in a dated project log; both are updated before a session ends.

## Rules and tests
12. **Rules stay general.** No current-case examples in the rule files; concrete cases live in `skills/switch/tests/`.
13. **AGENTS.md mirrors SKILL.md.** A change goes into both in the same words.
14. **Etiquette is always on.** Every other feature is a lens the author can switch; a lens that is off is not run and not reported.
15. **Symmetry.** The same measure applies to a suspect of any political side; a text with the sides swapped should get the same findings. This is a target checked by the paired cases 09a/09b, not yet a guarantee: single rows can still differ between runs.
16. **Judge the text, not the person.** A technique is a property of the text, judged by observable signs (an undisclosed aim, the effect on the reader), never by intent.
17. **Source, not standard.** A named source is credited and checked like any claim; it is never used as the standard to judge against unless the rules say so.
18. **Test expectations are widened only with a written reason** that still fails a clearly wrong answer. A change to a rule is verified by a fresh blind run, not by reading it.
