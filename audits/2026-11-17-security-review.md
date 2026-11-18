# Security review: Brand Deal Assistant 1.0.1

> **Superseded.** This report's "Safe to ship" conclusion is withdrawn. It rested on scanner results and called prompt injection fixed without a live test. See [2026-11-17-security-review-v1.0.2.md](2026-11-17-security-review-v1.0.2.md).

Date: 2026-11-17
Scope: everything in this repository (skill files, plugin files, build script, release zip).

## Unverified

| Item | Why it is unverified |
|---|---|
| Behavior against a live malicious email | Rule 8 forbids following instructions found in emails, but no end-to-end test has been run with a planted injection email yet. |
| Cisco LLM and cloud analyzers | Not run, because they need outside API keys. The static, behavioral and trigger analyzers ran. |
| Customer account settings | Each customer's own Claude, Gmail and Studio security (passwords, two-factor sign-in) is outside this repository. |

## Bottom line

Safe to ship. No secrets, no code that runs on a customer's computer, no hidden or encoded text, no outside links except this repository. The review found three behavior gaps, and all three are fixed in 1.0.1.

## Scans run

| Scanner | Settings | Result |
|---|---|---|
| Skill-creator validator (`quick_validate.py`) | Default | Valid: one SKILL.md, correct frontmatter, kebab-case name, 290 lines (under the 500-line guide) |
| Cisco AI Skill Scanner 2.3.2 | `--policy strict --use-behavioral --use-trigger` | SAFE, 0 findings |
| isitsecure (Kunal Jaura, open source) | `--mode code-only --llm none` | Grade A, 0 critical, 0 high, 0 medium; working tree and git history secret scans clean |
| Manual text scan | Hidden and zero-width characters, HTML comments, long encoded strings, outside URLs, injection phrases | Clean. Only URL is this repository. |
| Release zip check | Each file in `dist/brand-deal-assistant.zip` compared byte for byte with the source | Matches; checksum published in `dist/brand-deal-assistant.zip.sha256` |

## Fixed in 1.0.1 (most serious first)

1. **Prompt injection through brand emails (high).** The skill reads emails and contracts from strangers, and nothing said that text is information only. Hard rule 8 now makes emails, contracts, PDFs and web pages information only. Any instructions inside them get shown to the creator and never carried out. Gmail use is limited to search, read and drafts.
2. **Reaching another Studio account (medium).** A connector that can reach several accounts could have written to the wrong one. Hard rule 9 keeps the skill in the one account named in the Creator Profile, setup confirms it, and the logging step checks it first.
3. **Missing data notes (low).** SECURITY.md now lists what the skill never collects and how a customer removes access and deletes their data.

## Already solid

- Draft only: never sends, signs, posts or accepts.
- No credentials ever requested or repeated (hard rule 6). Both connections use their own sign-in screens.
- Never opens Amazon or follows tracking links.
- Protected automation fields in the Studio are off limits, and nothing is ever deleted.
- Main branch protected against deletion and history rewrites.

## Next review

Run these scans again before every release, and add an end-to-end test with a planted injection email.
