# Unarchived Fortunes YouTube channel: instructions for Claude

This repo is the **permanent backup** for my YouTube channel project. Chat sessions can vanish, but this repo does not. Follow these rules in every session.

## At the start of every session
1. Each session works on its own `claude/...` branch, so the newest work may be on an earlier session's branch. Run `git fetch origin` and check the most recently updated `claude/*` branch. If it has newer files in `unarchived/` than this branch, bring them in (`git merge origin/<that-branch>`) before starting.
2. Read `unarchived/PROJECT_BIBLE.md` before doing anything else. It holds every decision made so far.
3. Check its roadmap (section 9) and remind me of anything due for the video I'm working on.

## Saving work (required)
- **Save every deliverable as a file in this repo:** scripts, titles, prompts, thumbnails, research, descriptions and plans. Don't leave it only in the chat.
  - Scripts → `unarchived/scripts/FILE_00X_<name>.md`
  - Research and topic checks → `unarchived/research/`
  - Image, video and thumbnail prompts → `unarchived/prompts/FILE_00X_<name>_<type>.md`
  - Lead magnets and PDFs → `unarchived/lead-magnet/`
- **After each major step** (a finished script, a prompt set, a decision), commit and push right away with a clear message. Don't wait for the end of the session.
- **Update `unarchived/PROJECT_BIBLE.md`** whenever a decision changes (topic picked, brand change, new rule), then commit and push.
- An automatic backup hook (`.claude/hooks/autobackup.sh`) also commits and pushes any changed files at the end of every reply. This is a safety net, not a replacement for saving files.

## Working style
- Be brutally straight. The goal is maximum profit (ads, affiliates, email list).
- Follow my "CLAUDE CHANNEL MODEL (v2)" workflow when I paste it.
- Fact-check every script: 2 sources per claim. One source means "according to…" wording; none means cut it.
- Run the topic rule (Bible section 3) before writing any script.
