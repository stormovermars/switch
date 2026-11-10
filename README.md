# switch – Let's change the tone!

A plugin for contentious texts: comments, replies, articles, posts, letters and speeches. It reviews a text against twelve tone principles, suggests a rewording, and flags manipulation techniques (deflection, DARVO, flooding, astroturfing and more). It checks claims against both sides' sources, builds a term map of the words each camp uses, and applies a rule-of-law standard to texts about criminal proceedings. On request it rewrites a text for a reader from the other camp without changing the author's stance.

Command: `/switch` followed by the text.

- **Lenses by topic:** the twelve principles are always on and are not a lens. The lenses are the manipulation checklist (24 techniques, including rights-term misuse and delegitimizing an opinion), a rule-of-law standard (twelve fairness points, l01–l12), press ethics and law; each is on, offered or off by topic, and you can switch it on or off. A "rights" switch adds a glossary of 24 rights and principles (`skills/switch/references/references.json`), read only when the text argues from a right.
- **Tiered flags:** note, caution or violation, judged by observable signs and context, never by intent.
- **Claim ledger:** each claim gets a status and a side, each source a side and a trust rating with the reason, and each check a finding. Your overrides are stored next to the skill's own ratings, not in place of them.
- **Term map:** the words each camp uses, backed by a pinned copy of the common-terms index (29 very common political terms, each with both sides).
- **Disclosure lines:** every report ends with a self-check line and an "Author's choices" line; a rewrite also lists what changed and why.

## Install and use

| You use | Install | Then |
|---|---|---|
| Claude (claude.ai, desktop, mobile) | Upload [`switch-skill.zip`](https://github.com/stormovermars/switch/releases/latest/download/switch-skill.zip) under Settings → Capabilities → Skills | Paste a text and say "check this with switch" |
| Claude Code | `/plugin marketplace add stormovermars/switch`, then `/plugin install switch@switch` | `/switch` followed by the text |
| ChatGPT | Upload [`switch-skill.zip`](https://github.com/stormovermars/switch/releases/latest/download/switch-skill.zip) under Skills | "Check this with switch: …" |
| Gemini | Upload [`switch-skill.zip`](https://github.com/stormovermars/switch/releases/latest/download/switch-skill.zip) under Settings → Skills | "Check this with switch: …" |
| GitHub Copilot (VS Code, CLI) | Copy the skill folder (command below) | In agent mode: "Check this with switch: …" |
| Codex, Cursor | Add this repository in the tool's plugin settings | `/switch` or "check this with switch" |

### Claude (claude.ai web, desktop and mobile apps)

1. Download [`switch-skill.zip`](https://github.com/stormovermars/switch/releases/latest/download/switch-skill.zip). Don't unzip it.
2. In Claude, open **Settings → Capabilities** and turn on **Code execution and file creation**.
3. Under **Skills**, choose **Upload skill**, pick the zip, and make sure the **switch** toggle is on.

On Team and Enterprise plans an owner can add it once for the whole organization in the organization settings.

### Claude Code

```
/plugin marketplace add stormovermars/switch
/plugin install switch@switch
```

To update later: `/plugin marketplace update switch`, then `/plugin update switch@switch`.

### ChatGPT and Gemini

Both read skills in the same format, so the same zip works.

- **ChatGPT:** open **Skills**, choose to add or upload a skill, and pick [`switch-skill.zip`](https://github.com/stormovermars/switch/releases/latest/download/switch-skill.zip). Skills depend on your plan.
- **Gemini:** **Settings → Skills → Upload**, then pick the zip. Skills don't run in Canvas or Deep Research yet; use a normal chat.

### GitHub Copilot (VS Code agent mode, Copilot CLI)

macOS or Linux:

```bash
rm -rf /tmp/switch-src && git clone --depth 1 https://github.com/stormovermars/switch /tmp/switch-src && mkdir -p ~/.copilot/skills && cp -R /tmp/switch-src/skills/switch ~/.copilot/skills/
```

Windows (PowerShell):

```powershell
Remove-Item -Recurse -Force $env:TEMP\switch-src -ErrorAction SilentlyContinue; git clone --depth 1 https://github.com/stormovermars/switch $env:TEMP\switch-src; New-Item -ItemType Directory -Force $HOME\.copilot\skills | Out-Null; Copy-Item -Recurse $env:TEMP\switch-src\skills\switch $HOME\.copilot\skills\
```

Run the same command again to update. For one project only, copy the folder into that repository's `.github/skills/` instead. Microsoft 365 Copilot chat does not load skills.

### Codex, Cursor and other tools

The repository includes plugin manifests for Codex (`.codex-plugin/`) and Cursor (`.cursor-plugin/`), and an `AGENTS.md` with the full instructions for tools that read it. For any other tool that reads skills, copy the `skills/switch/` folder into its skills folder.

### Using it

Give it the text and say what you want: a review ("check this with switch"), a rewrite ("rewrite it with switch"), or a version for the other camp ("rewrite it for the other side with switch"). It asks what your key claims rest on, then reports; answer its questions or say "go on" to get the rest. It replies in the language of your text.

The claim ledger opens as a separate page only where the tool can publish a page with storage (Claude with artifacts); elsewhere it is part of the reply.

Tested: Claude Code. The other tools follow their published skill support and have not been tested yet.

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

The skill and its docs are in English; it replies in the author's language.
