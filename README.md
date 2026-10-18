# switch – Let's change the tone!

A plugin for contentious texts: comments, replies, articles, posts, letters and speeches. It reviews a text against twelve tone principles, marks where they are violated, suggests a rewording, and flags common manipulation techniques (deflection, DARVO, flooding, astroturfing, etc.). Your own writing should avoid those techniques by default. It builds a term map of which word each camp uses for the same thing, and on request "translates" a text for a reader from the other camp without changing its content. It checks claims against both sides' sources, builds a term map, and on request rewrites for the other camp.

Command: `/switch` followed by the text.

## Install

**Claude Code** (marketplace):

```
/plugin marketplace add stormovermars/switch
/plugin install switch@switch
```

**Other tools:** the repository includes plugin manifests for Codex (`.codex-plugin/`) and Cursor (`.cursor-plugin/`), and an `AGENTS.md` with the full instructions for tools that read it. Add the repository through each tool's plugin settings. Only the Claude Code steps above were tested.

**Manual:** copy `skills/switch/SKILL.md` into your tool's skills folder.

## Layout

- `skills/switch/SKILL.md` – the skill (principles, procedure, manipulation techniques).
- `skills/switch/ledger.html` – claim ledger page (publish as an artifact; needs the `db` capability).
- `AGENTS.md` – the same instructions for tools that read AGENTS.md. Keep it in sync with the SKILL.md.
- `skills/switch/tests/` – regression cases with expected results.
- `CHANGELOG.md` – history of changes.
- `.claude-plugin/`, `.codex-plugin/`, `.cursor-plugin/` – plugin manifests.

## Note

The skill looks at the tone and reasoning of a text, not at people. Manipulation detection is not certain: the skill flags its uncertainty, and the final decision is yours.
