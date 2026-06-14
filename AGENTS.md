# Global Agent Rules

This file lives at `/home/masih/.codex/AGENTS.md` and applies to every Codex session unless the user explicitly overrides it. Masih does not use project/repo-level `AGENTS.md` files by default; an agent must not spend time looking for one unless Masih explicitly says a local agent file exists.

## 0. Priority Kernel

These rules are always on. Load task-specific files only when needed.

- Keep routine replies to one short paragraph by default. An agent must not add `TL;DR` unless requested or truly needed.
- Always answer Masih in English unless he explicitly asks for another language.
- Work local-first, low-internet, and from the actual launch workspace/control surface.
- Do not look for repo-local `AGENTS.md` files unless Masih explicitly says one exists.
- Prefer small reversible changes, narrow reads, and explicit verification over broad probing.
- For non-trivial, multi-step, risky, or persistent work, state `DI` and inferred `DO` before acting.
- Never use `git add -A`; stage explicit paths only; do not push or open PRs unless asked.
- When proxy state matters, run `source ~/.bash_aliases; check`; never guess.
- Treat `ctu` as continue only from an explicit current goal or handoff; do not mine generic session logs to guess. Treat `fmy` as project familiarization.
- Keep the active goal visible. Know the workspace, changed files, blockers, verification state, and any active subagents.
- For multi-step work, context risk, compaction, subagents, or handoff, use `/home/masih/.codex/skills/handoff/SKILL.md`.
- Do not let subagents obscure the main goal: delegate bounded side tasks, track their status, and evaluate whether their output was useful.
- Treat this file as a router, not an encyclopedia.

## 1. Context And Handoff

Load `/home/masih/.codex/SESSION_HANDOFF_RULES.md` when work is multi-step, stateful, drifting, compacting, corrected by Masih, or likely to continue later.

- `ctu` means continue the current task only when the current goal or handoff is explicit. If no handoff/current goal is available, say so briefly and ask for the missing objective. Do not infer it from the newest unrelated session log.
- `/compact` helps compress context, but it does not replace an explicit goal/handoff capsule when continuity matters.
- Do not create new eval skill/harness files by default. First use `/home/masih/.codex/CODEX_CODING_GUIDELINES.md` success criteria: clear goal, focused check, smallest useful verification. When Masih explicitly asks for agent-rule evals, use `/home/masih/.codex/skills/eval-harness/SKILL.md`.

## 2. Coding Work

For non-trivial coding sessions, bug fixes, refactors, and code reviews, follow `/home/masih/.codex/CODEX_CODING_GUIDELINES.md` exactly as the coding behavior guide. Keep it unadulterated unless Masih explicitly asks to edit that file.

## 3. Terminal, Proxy, Git, And Safety

Load `/home/masih/.codex/TERMINAL_AND_GIT_RULES.md` when using aliases, proxy state, SSH, git, commits, shell shortcut changes, risky edits, sudo/pkexec, or persistent system changes.

## 4. Abbreviations

Load `/home/masih/.codex/abbn.md` when Masih uses abbreviations or when wording is ambiguous. Common cues: `fmy`, `ctu`, `ver`, `wr`, `summ`, `term`, `eff`, `nec`, `unnec`, `abbn`.

## 5. User Profile

Load `/home/masih/.codex/USER_PROFILE.md` only when personal/course identity matters.

## 6. Artifacts

Load `/home/masih/.codex/ARTIFACT_RULES.md` when creating, editing, verifying, or opening PDFs, HTML reports, prototypes, dashboards, slides, formulas, visual research artifacts, or demos.

## 7. Juliette

Load `/home/masih/.codex/JULIETTE_RULES.md` only when Masih types `july` or explicitly asks for Juliette behavior.

## 8. Operating Defaults

- Avoid unnecessary downloads, uploads, package installs, pushes, PR creation, and repeated remote checks.
- Batch remote operations and keep them minimal.
- Be frugal with tokens and command output. Prefer terse updates, narrow reads, and small command output limits.
- Do not run broad probes or repeated access attempts when one precise check can answer the question.
- Preserve existing API/runtime behavior unless explicitly asked to change it.
- If constraints conflict with requested actions, ask for confirmation and explain the tradeoff.
- If an agent finds a reusable harness/workflow, ask Masih before adding it to global rules or skills.
