# Brand Deal Assistant

The official Brand Deal Assistant skill for Claude, made for **LegaciLink Creator Portfolio Studio** customers.

It reads your collab emails, sorts every offer into **Pitch UGC**, **Gifted yes** or **Polite pass**, drafts your reply in your voice to Gmail Drafts, and logs the brand and the deal in your Creator Portfolio Studio pipelines.

It never sends, signs or accepts anything. You stay in charge.

> **Only install from this page:** `github.com/felita-ux/brand-deal-assistant`. LegaciLink never emails the skill as an attachment and never asks for your passwords or tokens. If someone sends you a copy from anywhere else, do not install it.

## Install

### Claude on the web, desktop or mobile (most people)

1. Download **[brand-deal-assistant.zip](https://github.com/felita-ux/brand-deal-assistant/raw/main/dist/brand-deal-assistant.zip)**. Do not unzip it.
2. In Claude, open **Customize → Skills**, click **+**, and upload the zip.
3. Make sure the **Brand Deal Assistant** toggle is on.
4. Follow the rest of your Setup Guide: turn on file creation, connect Gmail, connect your Creator Portfolio Studio, then create your **Brand Deals** project.

### Claude Code or Cowork

```
/plugin marketplace add felita-ux/brand-deal-assistant
/plugin install brand-deal-assistant@legacilink
```

## Check your download (optional)

The file `dist/brand-deal-assistant.zip.sha256` holds the fingerprint of the official zip. On a Mac, open Terminal in your Downloads folder and run:

```
shasum -a 256 brand-deal-assistant.zip
```

The long code it prints should match the code in that file exactly.

## Updates

When a new version is released, it is listed in [CHANGELOG.md](CHANGELOG.md). To update on Claude.ai, download the new zip and upload it in **Customize → Skills** to replace the old one. Your `creator-profile.md` lives in your Brand Deals project, so your rates and voice carry over.

## What it can access

See [SECURITY.md](SECURITY.md) for exactly what the skill reads and writes, and what it will never do.

## Support

Contact LegaciLink support from inside your Creator Portfolio Studio.

---

© 2026 LegaciLink. Licensed for use by Creator Portfolio Studio customers. See [LICENSE.md](LICENSE.md).
