# 🛡️ Harnesses I Use: Scaffolding AI Coding Agents

This repository contains the exact, battle-tested Markdown-based context rules, guidelines, and guardrails I use to steer and constrain coding AI agents (such as Claude Code, Codex, or OpenClaw) on my local Linux system.

Instead of building complex, unpredictable multi-agent frameworks, this repository advocates for **context-level Harness Engineering**: using structured local Markdown rules to control the agent's behavior, prevent context window pollution, and ensure reproducibility.

---

## 📂 Repository Contents & Core Rules

Each file represents a critical boundary layer for the agent. Here is the gist of what they enforce:

### 1. [`AGENTS.md`](AGENTS.md) (Global router & session start kernel)
*   **Routine Brevity**: Keep routine replies to one short paragraph. No default `TL;DR` spam.
*   **Scoped Actions**: Work local-first. State Declared Intent (DI) and Desired Output (DO) before performing non-trivial tasks.
*   **Explicit Commits**: Never use `git add -A`. Stage explicit file paths only.

### 2. [`CODEX_CODING_GUIDELINES.md`](CODEX_CODING_GUIDELINES.md) (Surgical coding behavior)
*   **Karpathy-Style Simplicity**: Write the absolute minimum code to solve the problem. Avoid speculative features.
*   **Surgical Edits**: Touch only the exact lines requested. Do not improve adjacent code as a drive-by edit.
*   **Test-First**: Use a failing test or direct CLI command to verify bugs before writing fixes.

### 3. [`TERMINAL_AND_GIT_RULES.md`](TERMINAL_AND_GIT_RULES.md) (Terminal safety & proxy configs)
*   **Non-Destructive Sudo**: For root-level tasks, use `pkexec` to prompt a GUI-based password window rather than typing credentials in shell logs.
*   **Proxy Budgeting**: Explicitly route proxy traffic through local port tunnels (SOCKS5/HTTP) and verify states dynamically instead of guessing.

### 4. [`SESSION_HANDOFF_RULES.md`](SESSION_HANDOFF_RULES.md) (Continuity & memory)
*   **Goal Visibility**: Keep active goals visible during multi-step work.
*   **Explicit Handoffs**: Transfer state between session runs using a short local log instead of forcing the model to reconstruct context from raw shell history.

### 5. [`ARTIFACT_RULES.md`](ARTIFACT_RULES.md) (Verifiable UI & formula rendering)
*   **Native MathML**: Use native HTML5 MathML for formulas so they render locally in browsers without slow, network-dependent JS CDNs.
*   **Visual QA**: Verify generated UI layouts by rendering pages locally and spot-checking layouts before declaring task completion.

---

## 🧠 Philosophy: Bounded Autonomy

AI agents perform best when constrained. These rules prevent:
1.  **Scope Drift**: Agents refactoring unrelated modules when asked for a simple bug fix.
2.  **Process Theater**: Agents generating excessive placeholder files and fake metrics to "prove" progress.
3.  **Local Environment Corruption**: Agents making destructive system changes or downloads without explicit user authorization.

---

## 🔗 References & Inspiration

*   **Andrej Karpathy's** open-source autonomous agentic research repository, **[autoresearch](https://github.com/karpathy/autoresearch)**.
*   My personal projects, experiments, and research: **[masihmoafi.tech](https://masihmoafi.tech)**

---

## 🤝 Contributing

If you use or adapt these rules for your own local agents, feel free to open a PR or drop your own agent configurations here. Let's build cleaner agent environments.
