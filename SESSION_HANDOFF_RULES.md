# Session, Context, and Handoff Rules

## Context Awareness
- Keep the active goal visible during multi-step work.
- Know the current workspace, active files, changed files, constraints, open blockers, verification state, and any active subagents.
- If the goal or context becomes unclear, stop and restate the goal before doing more work.
- For continuation (`ctu`), continue only from the current conversation, an explicit handoff, or a task-local state file named by the user. Do not search broad logs or generic system histories to guess the goal.

## Session Start
- At session start, read and learn from `~/.codex/AGENTS.md` before major actions.
- If constraints conflict with requested actions, ask for confirmation and explain the tradeoff.
- For non-trivial, multi-step, or risky changes, declare intent before acting (DI = Declared Intent, DO = Desired Output). Skip DI/DO for trivial checks or quick follow-ups.

## Every Message
- Prefer short answers. Keep routine replies to one paragraph when practical.
- The user may write in Farsi sometimes; always answer in English unless explicitly asked otherwise.
- Do not include summaries (`TL;DR`) by default. Use them only when requested.
- Use standard abbreviation patterns when helpful (see `~/.codex/abbn.md`).
- Keep context hygiene high: save only exact, useful, objective information.
- Pre-compaction rule: before context compaction, delete redundant logs and leave the next agent a concise state summary.

## Every Session
- Create or update a session progress folder only for non-trivial project work or multi-step tasks.
- Format: `<project-or-task>/.ES/<descriptive-name+date>/`.
- Include an `ES.md` with:
  - Date and Time.
  - Declared Intent (DI).
  - Desired Output (DO).
  - Learned lessons.
  - Useful notes.
- When the user corrects a repeated failure, perform a quick failure analysis: what assumption was wrong, what working reference proves the fix, and how to verify it.
- Apply the corrected method to the active files and verify it before claiming the lesson was learned.

## Handoff Skill
- Use `~/.codex/skills/handoff/SKILL.md` (or local handoff template) when work spans sessions, context is compacting, or you need to leave a concise continuation note. If the handoff is missing, ask for the objective instead of guessing.
