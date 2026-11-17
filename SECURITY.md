# Security

## What this skill is

A set of written instructions (Markdown files) that tell Claude how to review brand deals. It contains no programs, no scripts that run on your computer, no passwords, no API keys and no tokens.

## What it can access

Only what you connect in your own Claude account:

| Connection | What the skill does with it |
|---|---|
| **Gmail** | Reads your collab emails and saves reply drafts. It never sends. |
| **Creator Portfolio Studio** (HighLevel connector) | Creates and updates brand contacts and deals in your Gifted Journey and UGC Journey pipelines. It never marks deals won, never touches payments or agreements, and never edits automations. |
| **Your Brand Deals project** | Reads your `creator-profile.md` for your rates, rules and voice. |

Both connections sign in through their own approval screens. You can disconnect either one at any time in Claude under **Connectors**.

## What it will never do

- Send, sign, post or accept anything on your behalf
- Ask for a password, API key or Private Integration Token
- Open Amazon pages or click brand tracking links
- Delete contacts, deals or emails

## Staying safe

- Install only from `github.com/felita-ux/brand-deal-assistant`.
- Check your download against `dist/brand-deal-assistant.zip.sha256` (steps in the README).
- Never paste a token or password into a Claude chat. If you do by accident, delete the message and revoke the token in that account's settings.
- Changes to this repository are made only by LegaciLink. Every change is visible in the commit history.

## Report a problem

If you think something is wrong with the skill or you received a copy from somewhere else, contact LegaciLink support from inside your Creator Portfolio Studio.
