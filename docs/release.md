# Release

## Versions
- The version is set in `plugin.json` of `.claude-plugin/`, `.codex-plugin/` and `.cursor-plugin/`, which must match; `.claude-plugin/marketplace.json` carries no version. Current: 1.10.0.
- `CHANGELOG.md` records every release. Old entries are not reworded; the public history is kept honest.
- A change to `SKILL.md` goes into `AGENTS.md` in the same words.

## State
- The public GitHub repository gets one squashed commit per release, placed on top of the previous public commit (a fast-forward); the local history stays local and the CHANGELOG keeps the detail.

## Rules
- **Push only on the maintainer's word.** Switch only; nothing goes to any remote, private ones included, without it.
- **No history rewrite** unless the maintainer orders one. On 2026-11-01 the maintainer ordered one: the public history was replaced by a single 1.10.0 commit. Installers with an older clone reinstall from the marketplace.
- **No local paths** in committed files; commits by stormovermars with no trailer.
- **Edition:** the free edition is `git archive HEAD`. Check that `NOTICE` and `docs/sources.md` agree before a release.

## Parked
- **valts** (former Hungarian sibling) is retired and archived (2026-11-01). switch is English only; it still replies in the author's language. Its Hungarian input cases live on here as `case-03-arrest-comments-hu` and `case-04-lenses-by-topic-hu`. The final valts state is kept as a git bundle outside this repository; public valts still carries the older text until the maintainer pushes its deprecation notice and archives it.
