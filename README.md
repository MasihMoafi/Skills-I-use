# 🛡️ Harnesses I Use: Scaffolding AI Coding Agents

This repository contains the exact, battle-tested Markdown-based context rules, guidelines, and guardrails I use to steer and constrain coding AI agents (such as Claude Code, Codex, or OpenClaw) on my local Linux system.

Instead of building complex, unpredictable multi-agent frameworks, this repository advocates for **context-level Harness Engineering**: using structured local Markdown rules to control the agent's behavior, prevent context window pollution, and ensure reproducibility.

---

## 📂 Repository Contents

Each file represents a critical boundary layer for the agent:

*   **[`AGENTS.md`](AGENTS.md)**: The global router and primary entry point. Every AI agent reads this first to understand the Priority Kernel (reply constraints, English defaults, local-first behavior).
*   **[`CODEX_CODING_GUIDELINES.md`](CODEX_CODING_GUIDELINES.md)**: Surgical coding rules adapted from Andrej Karpathy's coding practices. Enforces minimal changes, style-matching, and goal-driven execution.
*   **[`TERMINAL_AND_GIT_RULES.md`](TERMINAL_AND_GIT_RULES.md)**: Safe terminal navigation, SOCKS/HTTP proxy configuration, explicit git scoping (e.g., *never* using `git add -A`), and change safety (using Ubuntu `pkexec` for root commands instead of raw CLI password prompts).
*   **[`SESSION_HANDOFF_RULES.md`](SESSION_HANDOFF_RULES.md)**: Guidelines for context awareness and continuity. Defines how state should be captured and transferred between sessions.
*   **[`ARTIFACT_RULES.md`](ARTIFACT_RULES.md)**: Rules for generating verified visual and math outputs, including local HTML layout verification, MathML for formula rendering, and PDF inspection.
*   **[`abbn.md`](abbn.md)**: A dictionary of standard abbreviations (e.g., `ctu` = continue, `fmy` = familiarize, `ver` = verify) to save token count and maintain short, high-efficiency communication.

---

## 🧠 Philosophy: Bounded Autonomy

AI agents perform best when constrained. These rules prevent:
1.  **Scope Drift**: Agents refactoring unrelated modules when asked for a simple bug fix.
2.  **Process Theater**: Agents generating excessive placeholder files and fake metrics to "prove" progress.
3.  **Local Environment Corruption**: Agents making destructive system changes or downloads without explicit user authorization.

---

## 🔗 References & Inspiration

*   **Andrej Karpathy's** open-source code templates (like [micrograd](https://github.com/karpathy/micrograd) and [makemore](https://github.com/karpathy/makemore)), focusing on mathematical baselines and minimalist, inspectable scripts.
*   My personal projects, experiments, and research: **[masihmoafi.tech](https://masihmoafi.tech)**

---

## 🤝 Contributing

If you use or adapt these rules for your own local agents, feel free to open a PR or drop your own agent configurations here. Let's build cleaner agent environments.
