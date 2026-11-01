# switch – Let's change the tone!

A plugin for contentious texts: comments, replies, articles, posts, letters and speeches. It reviews a text against twelve tone principles, suggests a rewording, and flags manipulation techniques (deflection, DARVO, flooding, astroturfing and more). It checks claims against both sides' sources, builds a term map of the words each camp uses, and applies a rule-of-law standard to texts about criminal proceedings. On request it rewrites a text for a reader from the other camp without changing the author's stance.

Command: `/switch` followed by the text.

- **Lenses by topic:** the twelve principles are always on and are not a lens. The lenses are the manipulation checklist (22 techniques), a rule-of-law standard (twelve fairness points, l01–l12), press ethics and law; each is on, offered or off by topic, and you can switch it on or off.
- **Tiered flags:** note, caution or violation, judged by observable signs and context, never by intent.
- **Claim ledger:** each claim gets a status and a side, each source a side and a trust rating with the reason, and each check a finding. Your overrides are stored next to the skill's own ratings, not in place of them.
- **Term map:** the words each camp uses, backed by a pinned copy of the common-terms index (29 very common political terms, each with both sides).
- **Disclosure lines:** every report ends with a self-check line and an "Author's choices" line; a rewrite also lists what changed and why.

## Install

**Claude Code** (marketplace):

```
/plugin marketplace add stormovermars/switch
/plugin install switch@switch
```

**Other tools:** the repository includes plugin manifests for Codex (`.codex-plugin/`) and Cursor (`.cursor-plugin/`), and an `AGENTS.md` with the full instructions for tools that read it. Add the repository through each tool's plugin settings. Only the Claude Code steps above were tested.

**Manual:** copy the `skills/switch/` folder (SKILL.md with its `references/` and `ledger.html`) into your tool's skills folder.

## Layout

- `skills/switch/SKILL.md` – the skill (principles, procedure, manipulation techniques).
- `skills/switch/ledger.html` – claim ledger page (publish as an artifact; needs the `db` capability).
- `skills/switch/references/` – pinned copy of the common-terms index (`common-terms.tsv`) and its version file.
- `skills/switch/tests/` – regression cases with expected results (`pending/` holds cases that wait for data and are not run).
- `AGENTS.md` – the same instructions for tools that read AGENTS.md, kept in sync with SKILL.md.
- `scripts/` – sync and check scripts for the common-terms copy.
- `docs/` – maintainer docs (start at `docs/README.md`).
- `LICENSE`, `NOTICE` – MIT for our own code and text; third-party sources.
- `CHANGELOG.md` – history of changes.
- `.claude-plugin/`, `.codex-plugin/`, `.cursor-plugin/` – plugin manifests.

## Sources

- Principles 1–10: adapted (reworded) from the manifesto of the "Let's change the tone!" (Váltsunk hangnemet!) movement: https://www.facebook.com/valtsunkhangnemet/posts/pfbid0hBKBhQeFUB5vLgCQ9NPfTJgFXg72jqKoYzBCJTNtextTUEkm4uNGoYotL6h8kpasl. Principles 11–12 are our own additions.
- Rule-of-law standard for criminal proceedings: twelve fairness points of our own, informed by the jurists' statement "A jogállami büntető igazságszolgáltatás tíz pontja" (The ten points of a rule-of-law criminal justice system), Schiffer András and 31 co-signers, 29 October 2026: https://www.facebook.com/schifferandras/posts/pfbid02Doiz6JF2oriePZ8mAaq3nH84qRmPKMymZ574WtRHWqP4gNjqrUf7K3PNteqcKHE8l. Points 11–12 have no counterpart in it, and its authors have not reviewed or endorsed the checklist.
- Licences and the "source, not standard" note: `docs/sources.md` and `NOTICE`.

## Note

The skill looks at the tone and reasoning of a text, not at people. Manipulation detection is not certain: the skill flags its uncertainty, and the final decision is yours.

The skill and its docs are in English; it replies in the author's language. Capture of new terms is opt-in: only when `COMMON_TERMS_DIR` is set does the skill send the new terms, with a short excerpt and the source of the text, to a local script; by default nothing is written.
