# Session, Context, and Handoff Rules

## Context Awareness

- Keep the active goal visible during multi-step work.
- Know the current workspace, active files, changed files, constraints, open blockers, verification state, and any active subagents.
- If the goal or context becomes unclear, stop and restate the goal before doing more work.
- For `ctu`, continue only from the current conversation, an explicit handoff, or a task-local state file named by the user/current workspace. Do not search broad session logs, home directories, or "latest" transcripts to guess the goal.
- Treat `/compact` as useful for context compression, but do not rely on it to preserve intent; use the handoff skill when continuity matters.

## Session Start

- At session start, read and learn from `/home/masih/.codex/AGENTS.md` before major actions.
- If constraints conflict with requested actions, ask for confirmation and explain the tradeoff.
- For non-trivial, multi-step, risky, or persistent changes, declare intent before acting. Skip DI/DO for trivial checks, direct answers, and tiny follow-ups:
  - `DI` = Declared Intent.
  - `DO` = Desired Output.

## Every Message

- Prefer short answers. Keep routine replies to one paragraph when practical.
- Masih may write in Farsi sometimes; always answer him in English unless he explicitly asks for another language.
- Do not include `TL;DR` by default. Use it only when Masih asks or when the reply is long enough that one tiny summary line clearly helps. Keep it under 8 words.
- Use the user's abbreviation patterns when helpful. See `/home/masih/.codex/abbn.md`.
- Keep context hygiene high: save only exact, useful, objective information.
- Make decisions proportional to available context size.
- Treat each session as independent; avoid pushing work across sessions when it can be completed now.
- Pre-compact rule: before context compaction, delete useless redundancies and leave the next agent a concise, exact state summary.

## Every Session

- Create or update a session directory only for non-trivial project work, multi-step tasks, or work where state should persist across turns/sessions.
- Skip ES for trivial checks, direct answers, one-command tasks, quick edits, and transient chat.
- Review the existing ES first; do not create a new ES unless the task is different or new.
- Format: `<project-or-task>/.ES/<descriptive-project-or-task-name+date>/`.
- Include an `ES.md` with:
  - Date and Time.
  - Declared Intent (DI).
  - Desired Output (DO).
  - Learned lessons.
  - Useful notes.
- The DO should be inferred from the user; run it by them only if ambiguous, complex, or high-risk.
- When Masih corrects a repeated failure, do a short failure analysis before moving on: what assumption was wrong, what working reference proves the fix, what verification would have caught it, and whether a reusable harness/rail belongs in AGENTS or a skill.
- Do not only add instructions after a correction; apply the corrected method to the active artifact and verify it before claiming the lesson was learned.

## Handoff Skill

Use `/home/masih/.codex/skills/handoff/SKILL.md` when work may span sessions, context may compact, subagents are used, the user says `ctu`/continue, the main goal is getting blurry, or an agent needs to leave a concise continuation note. If the handoff is missing, ask for the objective instead of reconstructing it from unrelated logs.
