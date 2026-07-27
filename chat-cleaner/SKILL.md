---
name: chat-cleaner
description: Map, name, and triage agent chat/conversation history. Finds sessions to delete, renames unnamed ones, and produces a clean inventory. Especially useful in Claude Code and similar tools where chat history accumulates silently.
---

# Chat Cleaner

Agent conversation history accumulates fast. Unnamed sessions, abandoned experiments, and duplicate threads create noise and make it hard to find what matters. This skill maps and cleans it.

## Step 1 — Locate chat storage

Common locations by tool (check which apply):

| Tool | Default chat location |
|---|---|
| Claude Code | `~/.claude/` or project-local `.claude/` |
| Antigravity / AGY | `~/.gemini/antigravity-cli/brain/` |
| Codex | `~/.codex/` or per-project `.codex/` |
| Generic | `~/.config/<tool>/history/`, `~/.local/share/<tool>/` |

Run a targeted find first — do not scan the whole filesystem:

```bash
find ~/.claude ~/.gemini ~/.codex -maxdepth 3 \( -name "*.json" -o -name "*.jsonl" \) 2>/dev/null | head -40
```

## Step 2 — Map sessions

For each session file found, extract:

- **ID** (filename or internal ID)
- **First user message** — best proxy for what the session was about
- **Last activity timestamp**
- **Message count** — rough proxy for depth
- **Named?** — does it have a human-readable title or is it a raw UUID?

Output a table:

| ID (short) | Name / First message | Last active | Messages | Keep? |
|---|---|---|---|---|

## Step 3 — Flag deletion candidates

Mark a session for deletion if:

- Zero or one user message (abandoned before anything happened)
- Last activity > 90 days ago with < 5 messages
- Exact duplicate first message as another session (likely re-runs)
- Name is a raw UUID and content is trivial (single greeting, test message)

Do NOT auto-delete. Present the list to the user and wait for confirmation.

## Step 4 — Name unnamed sessions

For sessions worth keeping but without a human name:

- Derive a short name (3–6 words) from the first meaningful user message.
- Propose the name; apply only after user confirms or says "go ahead."

## Step 5 — Delete confirmed sessions

Only after explicit user approval per session or per batch:

```bash
rm <path-to-session-file>
```

Report what was deleted. Never delete without confirmation.

## Output format

Produce a clean markdown summary:

- **Kept**: N sessions (list with proposed names if renamed)
- **Deleted**: N sessions (list with reason)
- **Skipped / needs review**: any ambiguous cases

## Caution

- Never delete the current active session.
- If session files are in a format you can't parse, report the path and format — don't guess.
- Chat history may contain keys, tokens, or personal data. Keep all operations local.
