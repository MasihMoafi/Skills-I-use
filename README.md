# 🛡️ Harness Engineering: Grounding AI Coding Agents

> **"A million lines of code, 1,500 pull requests, and 0 lines written by human hands."**
> How to design constraints, spec intent, and build feedback loops that allow LLM coding agents (like Claude Code, Codex, Devin, or OpenClaw) to do reliable, autonomous work.

---

## 🧐 The Problem: Why Agents Fail

When you drop an AI coding agent into a raw repository, it fails in predictable ways:

1. **Context Window Pollution**: The agent gets lost in its own chat history or reads irrelevant files, losing track of the core task constraints.
2. **Agent Amnesia**: Between runs or CLI sessions, the agent forgets what was previously verified, what failed, and what to do next.
3. **No Verification Loop**: The agent writes code, claims it works, but never runs the test suite or dev server, leading to broken builds.
4. **Task/Scope Drift**: A small bug-fix refactors half the codebase because the agent lacked boundary rules.

---

## 🛠️ The Cure: Harness Engineering

An **Agent Harness** is a thin, structured, repository-local control layer that steers, constraints, and verifies the agent's work. Instead of feeding your agent a 1,000-page instruction manual, you provide a **table of contents and mechanical verification tools**.

This repository contains the exact templates and bootstrap scripts used to engineer reliable agent workflows.

---

## 📂 Repository Contents

```bash
├── README.md               # You are here
├── THE_ESSAY.md            # Lessons from shipping a 1M-LoC codebase with 0 human lines of code
├── setup-harness.sh        # One-click script to install the harness into any project
└── templates/              # Core harness templates
    ├── AGENTS.md           # Root rules and entry point for agents
    ├── init.sh             # Startup and baseline verification script
    ├── progress.md         # Ephemeral session progress log
    ├── feature_list.json   # Machine-readable task queue
    ├── session-handoff.md  # State transfer note for long/risky runs
    ├── clean-state.md      # Exit-criteria checklist for git sanity
    ├── evaluator-rubric.md # AI-powered output quality scorecard
    └── quality-doc.md      # System/layer grades over time
```

---

## 🚀 Quick Start: Bootstrapping a Harness

You can instantly inject this harness into your repository. Clone this repo or run our installer in your target project root:

```bash
curl -sSL https://raw.githubusercontent.com/MasihMoafi/harnesses-I-use/main/setup-harness.sh | bash
```

This will create an `AGENTS.md` and standard templates under `docs/agents/` or your root folder.

---

## 🧠 Harness Component Breakdown

### 1. `AGENTS.md` / `CLAUDE.md`
The entry point. When an agent boots up, it reads this file first. It directs the agent to locate the progress files, follow specific scoping rules, and run the verification command before declaring completion.
*👉 [Template](templates/AGENTS.md)*

### 2. `init.sh`
A self-contained script that installs dependencies, runs tests to verify the baseline, and prints startup hints. If the baseline fails, the agent must fix it before writing new features.
*👉 [Template](templates/init.sh)*

### 3. `progress.md`
The agent's memory. It records the current verified state, active blockers, test logs, and the next best actions.
*👉 [Template](templates/progress.md)*

### 4. `feature_list.json`
A structured queue. Enforces that the agent only works on **one feature at a time**, transitioning statuses dynamically (`not_started` ➔ `in_progress` ➔ `passing`).
*👉 [Template](templates/feature_list.json)*

### 5. `evaluator-rubric.md` & `quality-doc.md`
Mechanical scorecards. The rubric scores individual session outputs (e.g., correctness, scope discipline, test evidence) while the quality document tracks codebase architecture grades over time (A-D).
*👉 [Templates](templates/)*

---

## 📖 Deep Dive: The Experiment

Read **[THE_ESSAY.md](THE_ESSAY.md)** to see the full write-up on how we ran a 5-month experiment: shipping production software daily with 0 lines of human-written code, managing agent legibility, local observability stacks, and layer-enforcing linters.

---

## 🤝 Contributing & Feedback

Harnesses should be minimal. If you find a template that has stale instructions or can be simplified, open a PR!

*Created by [Masih Moafi](https://github.com/MasihMoafi)*
