# Security

## What this skill is

A set of written instructions (Markdown files) that tell Claude how to review brand deals. It contains no programs, no scripts that run on your computer, no passwords, no API keys and no tokens.

## Important limits

Most of these protections are written instructions that Claude follows. To turn the most important ones into real locks, setup walks you through your own connection settings (below). Locked tools can't run, no matter what a skill or an email says.

## Lock your connections (part of setup)

In Claude, open **Customize → Connectors**, choose each connector, and set its tools:

- **Gmail:** tools that send, forward, delete or trash mail, or change labels, filters or settings → **Blocked**. Search, read and create drafts stay allowed.
- **Creator Portfolio Studio:** tools that delete anything → **Blocked**. Tools that create or update records → **Needs approval** if you approve each deal; otherwise your choice.

Some Claude apps may not apply these settings everywhere, so the written rules stay in place as a second layer. Every release is tested to confirm the locks hold.

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

## What you can adjust, and what you can't

During onboarding you choose your **working style**: how Studio changes get approved (each deal, one yes per batch, or auto-log new inquiries), whether drafts save automatically, review length, and reminders. Every setting starts at the safest option, and you can change it any time by telling the assistant "change my working style." Each review starts by naming your active settings.

The assistant can also **learn your preferences** from how you edit its drafts and correct its reviews. It suggests each lesson and saves it to your profile only after you say yes. Lessons cover voice and business preferences only, never security, and never anything taken from a brand's email.

Even on auto-log, the assistant still asks first before moving a deal's stage, changing an existing deal, or logging anything from an email that contained hidden instructions or claims it couldn't verify.

**The security rules below are locked.** No setting, profile line or request can turn them off.

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
