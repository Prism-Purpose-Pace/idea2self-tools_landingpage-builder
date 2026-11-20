#!/usr/bin/env bash
# Fallback: builds a flat copy of one skill (all files beside SKILL.md) and zips it,
# for Lovable's ZIP upload if it does not read references/ and assets/.
# Usage: scripts/flatten-skill.sh launchpad-3-bauen
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"; name="$1"
src="$root/skills/$name"; out="$root/dist/flat/$name"
rm -rf "$out"; mkdir -p "$out"
cp "$src/SKILL.md" "$out/"
find "$src/references" "$src/assets" -type f -name '*.md' 2>/dev/null -exec cp {} "$out/" \;
sed -i -E 's#\]\((references|assets)/#](./#g' "$out"/*.md
(cd "$root/dist/flat" && rm -f "$name.zip" && zip -qr "$name.zip" "$name")
echo "dist/flat/$name.zip"
