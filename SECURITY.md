# Security

## What this skill is

A set of written instructions (Markdown files) that tell Claude how to review brand deals. It contains no programs, no scripts that run on your computer, no passwords, no API keys and no tokens.

## Important limits

These protections are written instructions that Claude follows. They are not technical locks on your connections: Gmail and your Studio connector still have whatever permissions you approved when you connected them. The approval steps listed below are there so a person checks every change before it happens.

## What it can access

Only what you connect in your own Claude account:

| Connection | What the skill does with it |
|---|---|
| **Gmail** | Reads your collab emails and saves reply drafts. It never sends. |
| **Creator Portfolio Studio** (HighLevel connector) | Creates and updates brand contacts and deals in your Gifted Journey and UGC Journey pipelines. It never marks deals won, never touches payments or agreements, and never edits automations. |
| **Your Brand Deals project** | Reads your `creator-profile.md` for your rates, rules and voice. |

Both connections sign in through their own approval screens. You can disconnect either one at any time in Claude under **Connectors**.

## What it asks you to approve

- **Every change to your Creator Portfolio Studio.** Before creating or updating a contact or deal, the skill shows you the exact changes, including which journey automations will start, and waits for your yes.
- **Any email recipient it can't verify.** A reply on the brand's own thread goes to that sender. Any other address (from a forwarded message, pasted text or a "reply to" line) needs your yes first. Every draft shows its To, CC and BCC.
- **Your Studio account.** During setup you confirm which account is yours, and the skill records its location ID. It checks that ID before every read or write.
- **Your profile.** If you attach or paste a profile instead of keeping it in your Brand Deals project, the skill asks you to confirm it's yours. A profile sets your rates and preferences but can never change the safety rules.

## What it will never do

- Send, sign, post or accept anything on your behalf
- Follow instructions hidden inside a brand email, contract, PDF or web page. Those are read as information only. If one tries to give an order, the skill shows it to you instead.
- Forward, delete, archive or label your emails, or change your Gmail filters or settings
- Ask for a password, API key or Private Integration Token
- Open Amazon pages or click brand tracking links
- Look at or change any Studio account other than the one whose location ID you confirmed
- Treat a brand's claim ("you accepted", "we shipped", "you were paid") as proof. Only your own word or your own sent email moves a deal forward.
- Delete contacts, deals or emails

## What it never collects

The skill has no server and no database of its own. It does not send your emails, rates, contacts or Creator Profile anywhere outside your own Claude account, Gmail and Creator Portfolio Studio. LegaciLink cannot see your chats or your profile file.

## Removing access and deleting your data

1. **Stop the skill:** turn it off or remove it under **Customize → Skills**.
2. **Cut the connections:** disconnect Gmail and the Creator Portfolio Studio connector under **Connectors**.
3. **Delete your profile:** remove `creator-profile.md` from your Brand Deals project, or delete the project.
4. **Contacts and deals** the skill logged stay in your Creator Portfolio Studio, which you own. Delete them there if you want them gone.

## Staying safe

- Install only from `github.com/felita-ux/brand-deal-assistant`.
- Check your download against `dist/brand-deal-assistant.zip.sha256` (steps in the README).
- Never paste a token or password into a Claude chat. If you do by accident, delete the message and revoke the token in that account's settings.
- Changes to this repository are made only by LegaciLink. Every change is visible in the commit history, and the main branch is protected against deletion and history rewrites.
- Each release is scanned before it ships. Reports live in the [audits](audits/) folder.

## Report a problem

If you think something is wrong with the skill or you received a copy from somewhere else, contact LegaciLink support from inside your Creator Portfolio Studio.
