---
name: Harness Engineering
type: AI Constraints -> System Layer
---

# 1. Introduction

This repository provides exact, battle-tested Markdown context rules to steer and constrain coding AI agents locally. It rejects complex multi-agent frameworks in favor of structured harnesses that enforce strict boundaries, prevent context pollution, and guarantee deterministic execution.

# 2. Mechanics & Technical Spec

The system operates through localized Markdown boundary layers injected into the agent's runtime loop:

- `AGENTS.md`: Global router demanding routine brevity, scoped actions, and explicit git paths.
- `CODEX_CODING_GUIDELINES.md`: Imposes surgical edits, minimum-code solutions, and test-first verification.
- `TERMINAL_AND_GIT_RULES.md`: Restricts permissions via `pkexec` and mandates explicit proxy routing.
- `SESSION_HANDOFF_RULES.md`: Enforces explicit state transfers via local logs instead of context window reconstruction.
- `ARTIFACT_RULES.md`: Requires native MathML rendering and visual QA prior to task completion.
  These constraints hijack the agent's default operational loop, forcing it to drop speculative behaviors and adopt a rigidly controlled structure.

# 3. The Paradigm Shift

This isn't another unpredictable agent framework, wrapper, or bloated UI. It is pure context-level Harness Engineering. By imposing absolute order via flat, localized Markdown rules, it strips the agent of scope drift, eliminates process theater, and completely prevents local environment corruption.

# 4. Evaluation & Test Series

Proof of concept is verified by enforced runtime constraints:

- Destructive system changes are blocked by mandatory GUI `pkexec` prompts.
- Scope drift is neutralized by strictly enforcing single-purpose, surgical edits.
- Speculative feature generation is halted by strict minimum-code mandates.
  Deterministic outputs prove the agent reliably assimilates into the structure, strictly obeying local-first principles and explicit session handoffs without breaking constraints.

# 5. Future Evolution

- [ ] Expand boundary layers for multi-agent local orchestration.
