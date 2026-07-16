# Global Agent Rules

This file lives at `/home/masih/.codex/AGENTS.md` and applies to every Codex session. 

- User favors brevity, precision, and transparency.

## Kernel

These rules are always on. Load task-specific files only when needed.

# Engineering Protocol

## Defaults

- Prefer small, reversible changes.
- Read the existing code before deciding.
- Use structured APIs/parsers where available.
- Avoid placeholders and untested claims.
- Keep replies to one short paragraph by default. Add `TL;DR` if needed.
- Keep your responses factual. e.g. when proxy state matters, run `source ~/.bash_aliases; check` instead of guessing.
- If constraints conflict with requested actions, ask for clarification and explain the tradeoff.
- Don't lose sight of the forest chasing a tree. iow, keep the main objective in mind. 
- chase low-hanging fruits first. 

## OS Defaults

- Avoid unnecessary downloads, uploads, package installs, pushes, PR creation, and repeated remote checks.
- Batch remote operations and keep them minimal.
- You have a limited context window; so, ge frugal with tokens and command output. Prefer terse updates, targeted reads, and small command output limits.
- Do not repeat questions, full solutions, or equations in the chat response when generating visual documents (like PDFs, HTML, or LaTeX files) that the user can open and view directly. Keep the chat response strictly focused on a high-level summary of changed files, verification state, and next actions.
- Do not run broad probes or repeated access attempts when one precise check can answer the question.

## Code

For non-trivial coding sessions, bug fixes, refactors, and code reviews, follow `/home/masih/.codex/CODEX_CODING_GUIDELINES.md` exactly as the coding behavior guide.
- Test the desired behavior when code is changed before presenting it to the user.

## Lengthy, Complicated Tasks

- Keep the active goal visible. Know the workspace, changed files, blockers, verification state, and any active subagents.
- For multi-step work, context risk, compaction, subagents, or handoff, use `/home/masih/.codex/skills/handoff/SKILL.md`.
- Do not let subagents obscure the main goal: delegate bounded side tasks, track their status, and evaluate whether their output was useful.
- use `/home/masih/.codex/CODEX_CODING_GUIDELINES.md` success criteria: clear goal, focused check, smallest useful verification. 
- Load `/home/masih/.codex/SESSION_HANDOFF_RULES.md` when work is multi-step, stateful, drifting, compacting, corrected by Masih, or likely to continue later.

## Bash, Git, SSH
Prefer using gh (github-cli) which is connected to the user's machine by default. 
Load `/home/masih/.codex/TERMINAL_AND_GIT_RULES.md` when using aliases, proxy state, SSH, git, commits, shell shortcut changes, risky edits, sudo/pkexec, or persistent system changes.

## Abbreviations or abbn

Load `/home/masih/.codex/abbn.md` when Masih uses abbreviations or when wording is ambiguous. Common cues: `fmy`, `ctu`, `ver`, `wr`, `summ`, `term`, `eff`, `nec`, `unnec`, `abbn`.

## Artifacts

Load `/home/masih/.codex/ARTIFACT_RULES.md` when creating, editing, verifying, or opening PDFs, docx, latex, HTML reports, prototypes, dashboards, slides, formulas, visual research artifacts, or demos. 

## Map

📂 Workspace Dir

The prj directory. 

```
/home/masih/Desktop/p (alias: p)
├── A-Modular-Kingdom/        -> MCP foundation server (RAG + Scoped Memory)
├── Voice-commander/          -> Whisper.cpp Voice transcription + Gemini refinement
├── harnesses-I-use/          -> Agent steering rules & markdown harnesses
├── eyes-wide-shut/           -> GPT-OSS-20B LLM security red-teaming research
├── devto-cli/                -> Dev.to markdown publication tool
└── sites/
    └── rubic/
    └── masih-vibe-replicator/ -> Main website project (masihmoafi.com)
```

