---
name: vision
description: Project orientation skill — locate or create the project's vision/identity file on arrival. The agent reads this file first to know what the project is, where things live, and what direction to go before touching anything else.
---

# Vision

The first thing an agent does when joining a project is find its vision file — the document that says what the project is, why it exists, and where things live. Without this, the agent is navigating blind.

## Step 1 — Find the vision file

Search the project root for `.md` files first, then look for known names (case-insensitive, both upper and lower):

```
Priority order (scan for .md files, then match by name):
1. VISION.md / vision.md
2. AGENTS.md / agents.md
3. CLAUDE.md / claude.md
4. AGENT.md / agent.md
5. README.md / readme.md  (last resort — often too broad)
```

**How to scan:**
```bash
# List all .md files in project root first
ls *.md 2>/dev/null || find . -maxdepth 1 -name "*.md" -o -name "*.MD"
```

Read the first match in priority order. If multiple candidates exist, read the most specific one (VISION.md > AGENTS.md > README.md).

## Step 2 — Extract orientation facts

From whichever file is found, extract and hold in mind:

- **What is this project?** (one-line identity)
- **Directory map** — what the top-level folders are and what lives in them
- **Current state** — what's built vs. what's aspirational
- **Key constraints or non-goals** — what's explicitly out of scope

## Step 3 — Write one if absent

If no orientation file exists at all:

1. Run `ls` or `find . -maxdepth 2` to survey the actual structure.
2. Draft a `VISION.md` at the project root with: identity, purpose, directory map, honest current state, and non-goals.
3. Show it to the user before saving. A wrong vision is worse than none.

## Step 4 — Check for drift

If a vision file exists but the actual directory structure or README contradicts it, flag the drift immediately — don't silently reconcile it. The user decides which is authoritative.

## When to load this skill

- First message on any unfamiliar project
- When the user says "fmy" (familiarize yourself) or "orient yourself"
- Before starting any large task on a project you haven't touched before
