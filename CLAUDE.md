# Unarchived Fortunes YouTube channel: instructions for Claude

This repo is the **permanent backup** for my YouTube channel project. Chat sessions can vanish, but this repo does not. Follow these rules in every session.

## At the start of every session
1. Each session works on its own `claude/...` branch, so the newest work may be on an earlier session's branch. Run `git fetch origin` and check the most recently updated `claude/*` branch. If it has newer files in `unarchived/` than this branch, bring them in (`git merge origin/<that-branch>`) before starting.
2. Read `unarchived/PROJECT_BIBLE.md` before doing anything else. It holds every decision made so far.
3. Read `unarchived/CHANNEL_MODEL_v2.md` (my master workflow prompt) and follow it, but resume at the current state in Bible section 8. Don't restart at STATE 1.
4. Check its roadmap (section 9) and remind me of anything due for the video I'm working on.

## Saving work (required)
- **Two main master documents. Update them in place; don't scatter work across new files:**
  1. `unarchived/PROJECT_BIBLE.md`: every channel-level decision (brand, rules, roadmap, topic status, workflow state).
  2. `unarchived/files/FILE_00X_<NAME>_MASTER.md`: one master document per video, holding everything for that file (script, fact-check log, publish & revenue playbook, image prompts, video prompts, thumbnails). New work for a video goes into its master document.
- Other files only when needed: lead magnets and PDFs → `unarchived/lead-magnet/`; vaulted scripts → `unarchived/scripts/`; the workflow prompt → `unarchived/CHANNEL_MODEL_v2.md`.
- Don't leave any deliverable only in the chat.
- **After each major step** (a finished script, a prompt set, a decision), commit and push right away with a clear message. Don't wait for the end of the session.
- **Update `unarchived/PROJECT_BIBLE.md`** whenever a decision changes (topic picked, brand change, new rule), then commit and push.
- An automatic backup hook (`.claude/hooks/autobackup.sh`) also commits and pushes any changed files at the end of every reply. This is a safety net, not a replacement for saving files.

## Working style
- Be brutally straight. The goal is maximum profit (ads, affiliates, email list).
- Follow my "CLAUDE CHANNEL MODEL (v2)" workflow (saved in `unarchived/CHANNEL_MODEL_v2.md`). I don't need to paste it.
- Fact-check every script: 2 sources per claim. One source means "according to…" wording; none means cut it.
- Pick topics with the Winning Topic System (Bible section 3).
- **Before writing any script, prompt set or publish plan, go through the Retention & Launch Checklist (Bible section 6b) line by line** and mark each item used or not relevant (with the reason). Never build these from memory.
- Ask the owner before saving files or commits, except the routine saves the owner has already asked for.
