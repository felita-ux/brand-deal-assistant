# Security review: Brand Deal Assistant 1.0.2 (updated for 1.1.0)

> **1.1.0 update:** adds creator-chosen Working Style settings. All default to the 1.0.2 safeguards. Auto-log is limited to new contacts and New Inquiry deals from clean emails; every security rule is locked. Test 7 in the test plan covers this.
>
> **1.2.0 update:** adds brand voice onboarding and opt-out learning. Lessons need the creator's yes, come only from the creator's own words and sent mail, and cannot touch security or approval settings. Test 8 covers this.
>
> **1.2.2 update:** connection locks are an optional, documented step in each creator's own Claude connection settings (SECURITY.md and the setup guide), not part of the skill, because they apply to every Claude chat. For creators who set them, the riskiest actions cannot run; the skill never works around a blocked tool. Test 9 checks the locks hold. Release still waits on the live tests.

Date: 2026-11-17
Scope: everything in this repository (skill files, plugin files, build script, release zip).
Inputs: our scans and manual review, plus an independent source and package review of 1.0.1 by Codex.

## Status: not yet cleared for customers

1.0.2 fixes every issue found so far. Customer release waits until the live tests in [test-plan.md](test-plan.md) pass in an isolated test account and the results are recorded here.

## Unverified

| Item | Why it is unverified |
|---|---|
| Live behavior against attacks | The skill's protections are written instructions. None of the five attack tests in the test plan has been run against real connectors yet. |
| Automation effects | Which emails, tasks or messages each journey's automations send when a deal is created lives in the Creator Portfolio Studio, outside this repository. |
| Location ID lookup | Setup asks the HighLevel connector which location it is signed in to. That the connector exposes the location ID this way still needs to be confirmed on a live customer-style connection. |
| Connector permissions | Gmail and HighLevel keep whatever permissions the customer approved. The skill limits what it asks for in writing, not technically. |
| Cisco LLM and cloud analyzers | Not run, because they need outside API keys. |

## Bottom line

No malicious instructions, leaked credentials, hidden text, executable files or outside links were found. The real risk is behavioral: an untrusted email shaping what the skill writes. 1.0.2 addresses that with human approval before every Studio write, trusted-evidence rules for deal stages, and confirmation of unverified email recipients. These are strong written safeguards, but they are not technical locks, and they are untested live.

## Fixed in 1.0.2 (from the Codex review, most serious first)

1. **High: untrusted offers led straight to CRM writes and automations.** Every Studio change is now shown in full (fields, journey, stage, automations it starts) and written only after the creator's yes in chat (hard rule 10, step 6.0). Stages past New Inquiry need the creator's own word or their own sent email; a brand's "you accepted / we shipped / you were paid" is reported as unverified.
2. **High: unclear trust in the Creator Profile.** The profile is trusted from the Brand Deals project, or after the creator confirms an attached or pasted copy. It supplies preferences and facts only and cannot change hard rules, tools, account scope or approvals; instructions inside voice samples are ignored (hard rule 11).
3. **Medium: contradictory billing instructions.** The ban now names billing-review fields, and Billing Type is stated as the one billing field set, only when a deal is created.
4. **Medium: account isolation by display name.** Setup now confirms the Studio account by location ID before anything else, records it in the profile, and checks it before every read or write (hard rule 9). Pipelines are listed only after that.
5. **Medium: forged recipients in forwarded mail.** Any recipient not taken from the brand's own thread needs the creator's yes; drafts always show To, CC and BCC; no CC or BCC from email content without approval.

## Scans run on 1.0.2

These scans find known bad patterns. They cannot show how the skill behaves with real connectors, which is what the test plan is for.

| Check | Result |
|---|---|
| Skill-creator validator | Valid; SKILL.md 325 lines |
| Cisco AI Skill Scanner 2.3.2 (`--policy strict --use-behavioral --use-trigger`) | SAFE, 0 findings |
| isitsecure (`--mode code-only --llm none`) | Grade A; 0 critical, 0 high, 0 medium; secret scans of files and git history clean |
| Manual text scan (hidden characters, comments, encoded strings, links) | Clean |
| Release zip matches source byte for byte; checksum published | Matches |

## Already solid

- Draft only: never sends, signs, posts or accepts.
- No credentials requested or repeated; connections use their own sign-in screens.
- Never opens Amazon or follows tracking links.
- Never deletes, and never writes app-owned agreement, payment or automation fields.
- Main branch protected against deletion and history rewrites.
