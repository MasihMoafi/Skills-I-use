# Global Agent Rules

This file lives at `~/.codex/AGENTS.md` and applies to every agent session unless explicitly overridden. Agents should load task-specific rule files only when needed to conserve context window.

## 0. Priority Kernel
- Keep routine replies to one short paragraph by default. Avoid adding generic summaries unless explicitly requested.
- Answer in English unless explicitly asked for another language.
- Work local-first and from the actual launch workspace.
- Do not search for repository-level `AGENTS.md` files unless explicitly told one exists.
- Prefer small reversible changes, narrow reads, and explicit verification over broad probing.
- For non-trivial, multi-step, or risky work, state the Declared Intent (DI) and Desired Output (DO) before acting.
- Never use `git add -A`; stage explicit paths only. Do not push or open PRs unless asked.
- When proxy state matters, check the environment variables; never guess.
- Treat `ctu` as continue only from an explicit current goal or handoff. Do not mine generic logs.
- Keep the active goal visible. Know the workspace, changed files, blockers, verification state, and any active subagents.

## 1. Context and Handoff
- Load `~/.codex/SESSION_HANDOFF_RULES.md` when work is multi-step, stateful, drifting, or likely to continue later.
- For context compaction, use handoff skills to leave a concise continuation note instead of relying on raw history.

## 2. Coding Work
- For non-trivial coding sessions, bug fixes, refactors, and code reviews, follow `~/.codex/CODEX_CODING_GUIDELINES.md` exactly.

## 3. Terminal, Proxy, Git, and Safety
- Load `~/.codex/TERMINAL_AND_GIT_RULES.md` when using shell aliases, proxy states, SSH, git operations, or making system edits.

## 4. Abbreviations
- Load `~/.codex/abbn.md` when abbreviations or short-hand instructions are used (e.g., `ctu` = continue, `fmy` = familiarize, `ver` = verify).

## 5. Artifacts
- Load `~/.codex/ARTIFACT_RULES.md` when creating, editing, verifying, or rendering HTML reports, prototypes, slides, or LaTeX formulas.

## 6. Operating Defaults
- Avoid unnecessary downloads, package installs, git pushes, or remote checks.
- Batch remote operations and keep them minimal.
- Be frugal with tokens and command output. Prefer terse updates.
- If constraints conflict with requested actions, ask for confirmation and explain the tradeoff.
