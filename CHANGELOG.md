# Changelog

## 1.2.2 (2026-11-17)

- Connection locks moved out of the skill. They are now an optional, recommended step in each creator's own Claude connection settings, documented in SECURITY.md and the setup guide, with a clear note that they apply to all of the creator's Claude chats.
- The skill still respects any tool a creator blocks and never works around it.

## 1.2.1 (2026-11-17)

- Security: setup now walks each creator through locking their own connections. Gmail send, forward, delete, label, filter and settings tools are set to Blocked, and Studio delete tools are set to Blocked. Locked tools cannot run, which turns the most important written rules into real locks.
- Security: if a tool is blocked, the assistant stops there and never looks for a workaround.
- Each review shows whether connection locks are confirmed.

## 1.2.0 (2026-11-17)

- Onboarding now asks about brand voice: three words, formality, audience, emoji habits, values, favorite and banned phrases, greeting and sign-off, plus sample emails.
- The assistant learns how each creator works. It notices draft edits, overruled buckets and corrections (and, with permission, compares sent replies to drafts), then suggests up to three lessons per review. Only lessons the creator approves are saved to their profile.
- New Learning setting: Suggest updates (default) or Off.
- Lessons can never come from brand emails and can never loosen security rules or approval settings.

## 1.1.0 (2026-11-17)

- Onboarding now ends with "How we'll work together": each creator picks a working style for Studio approvals (Each deal, Batch, or Auto-log new inquiries), reply drafts, review length and reminders.
- Every setting starts at the safest option. Creators change them any time by saying "change my working style." Each review names the active settings.
- Auto-log still asks first for stage moves, changes to existing deals, and anything from an email with hidden instructions or unverified claims.
- Security rules are locked and cannot be loosened by any setting, profile line or request.

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
