#!/bin/bash
# Auto-backup: commit and push any changed files at the end of every Claude reply.
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
git add -A >/dev/null 2>&1
git diff --cached --quiet && exit 0
git commit -q -m "Auto-backup $(date -u +%Y-%m-%d\ %H:%M\ UTC)" >/dev/null 2>&1 || exit 0
timeout 60 git push -q -u origin HEAD >/dev/null 2>&1 || true
exit 0
