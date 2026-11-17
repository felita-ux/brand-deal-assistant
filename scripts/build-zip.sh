#!/usr/bin/env bash
# Rebuilds dist/brand-deal-assistant.zip and its checksum from the skill folder.
# Run from the repo root after any change to the skill, then commit both files.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -f dist/brand-deal-assistant.zip dist/brand-deal-assistant.zip.sha256
( cd plugins/brand-deal-assistant/skills && zip -r -X ../../../dist/brand-deal-assistant.zip brand-deal-assistant -x '*.DS_Store' )
( cd dist && sha256sum brand-deal-assistant.zip > brand-deal-assistant.zip.sha256 )
cat dist/brand-deal-assistant.zip.sha256
