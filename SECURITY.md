# Security

## What this skill is

A set of written instructions (Markdown files) that tell Claude how to review brand deals. It contains no programs, no scripts that run on your computer, no passwords, no API keys and no tokens.

## Important limits

These protections are written instructions that Claude follows. Gmail and your Studio connector keep whatever permissions you approved when you connected them. For an extra layer, you can lock risky tools in your own connection settings (below).

## Optional: lock your connections

In Claude, open **Customize → Connectors**, choose a connector, and set any tool to Always allow, Needs approval or Blocked. A blocked tool can't run, whatever a skill or an email says. Recommended settings:

- **Gmail:** block tools that forward, delete or trash mail, or change labels, filters or settings. Blocking **send** is your call (see below).
- **Creator Portfolio Studio:** block tools that delete anything. Set tools that create or update records to **Needs approval** if you approve each deal.

Good to know:

- These settings belong to your connection, not to this skill, so they apply in **every** Claude chat. If you block Gmail sending, Claude can't send email for you anywhere. Leave sending on if you use Claude to send emails; the skill never sends either way.
- You can change or undo them any time in the same place.
- Some Claude apps may not apply these settings everywhere, so the skill's written rules always stay on as well.

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
