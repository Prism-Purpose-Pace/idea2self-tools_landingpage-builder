#!/usr/bin/env bash
# Copies shared/core-rules.md into every skill. Edit the file in shared/ only.
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
for d in "$root"/skills/*/; do
  mkdir -p "$d/references"
  cp "$root/shared/core-rules.md" "$d/references/core-rules.md"
done
echo "core-rules.md synced into $(ls -d "$root"/skills/*/ | wc -l) skills"
