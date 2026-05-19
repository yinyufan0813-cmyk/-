#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/public-apis/public-apis.git"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="$ROOT/external/public-apis/repo"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is not installed or not available in PATH." >&2
  exit 1
fi

if [ -d "$TARGET/.git" ]; then
  echo "Updating public-apis in: $TARGET"
  git -C "$TARGET" fetch origin master
  git -C "$TARGET" checkout master
  git -C "$TARGET" pull --ff-only origin master
else
  echo "Cloning public-apis into: $TARGET"
  mkdir -p "$(dirname "$TARGET")"
  git clone --depth 1 --branch master "$REPO_URL" "$TARGET"
fi

echo "public-apis is ready at: $TARGET"
