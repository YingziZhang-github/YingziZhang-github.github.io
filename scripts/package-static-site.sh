#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
output_dir="${1:-"$repo_root/dist/static-site"}"

rm -rf "$output_dir"
mkdir -p "$output_dir"

cp "$repo_root/index.html" "$output_dir/"
cp "$repo_root/styles.css" "$output_dir/"
cp "$repo_root/script.js" "$output_dir/"
cp "$repo_root/robots.txt" "$output_dir/"
cp "$repo_root/sitemap.xml" "$output_dir/"
cp -R "$repo_root/assets" "$output_dir/"

printf 'Packaged static site: %s\n' "$output_dir"
find "$output_dir" -type f | sort

