# Changelog

## 1.0.2 (2026-11-17)

Fixes from an independent review (Codex) of 1.0.1.

- The creator now approves every Studio change before it is written, with the exact fields, journey and automations shown first.
- Deal stages move only on the creator's word or their own sent email, never on a brand's claim.
- Studio account is bound to a confirmed location ID instead of a display name, checked before every read or write.
- The Creator Profile is trusted only from the Brand Deals project or after the creator confirms it, and can never change safety rules.
- Draft recipients taken from forwarded or pasted text need the creator's yes; drafts show To, CC and BCC.
- Removed the contradiction between the billing-field ban and Billing Type.
- Security report rewritten: release now depends on passing the live test plan.

## 1.0.1 (2026-11-17)

- Security: brand emails, contracts, PDFs and web pages are now treated as information only. Hidden instructions inside them are shown to you, never followed.
- Security: Gmail access limited to search, read and drafts. No sending, forwarding, deleting, labeling or settings changes.
- Security: the skill stays inside the one Studio account named in your Creator Profile and confirms it during setup.
- Setup now asks for your Creator Portfolio Studio account name.
- Added a license line to the skill and a scan report in `audits/`.

## 1.0.0 (2026-11-17)

- First release.
- Setup mode builds your `creator-profile.md` from your rates, rules and voice.
- Sorts offers into Pitch UGC, Gifted yes or Polite pass.
- Drafts replies to Gmail Drafts. Never sends.
- Logs contacts and deals in Creator Portfolio Studio's Gifted Journey and UGC Journey pipelines.
