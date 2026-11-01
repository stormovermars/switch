# switch docs

Maintainer documentation for the switch repository. The agent rules stay self-contained in `skills/switch/SKILL.md` and `AGENTS.md`; these files explain the build and release side and do not repeat the rules.

| File | What it holds |
|---|---|
| [principles.md](principles.md) | Build principles that apply to this repository |
| [split.md](split.md) | How features are switched (lenses and toggle rules) |
| [sources.md](sources.md) | The manifesto, the jurists' statement, licences (matches `NOTICE`) |
| [testing.md](testing.md) | Corpus, isolated runs, grading, the 2-of-3 gate, budget |
| [release.md](release.md) | Versions, manifests, push and history rules |

Decisions are not copied here. The canonical list is the maintainer's project decisions log, kept outside the repository; the newest entry wins. Cross-repo material (product, market, plans, audits, log) is kept there too.

## Vocabulary

A **lens** is a switchable check selected by topic. The twelve etiquette principles are not a lens: they are always on.

## Related repositories

- valts: the former Hungarian sibling, retired. See [release.md](release.md).
