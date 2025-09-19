#!/bin/bash

set -e

REPO="$HOME/Desktop/dev1/dotfiles"
cd "$REPO"

if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
    git add -A
    git commit -m "commit $(date '+%d/%m/%y %H:%M')"
fi

git push || echo "push failed"
