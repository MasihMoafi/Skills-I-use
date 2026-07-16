# First-Principles Engineering Method for AI Agents

## Intro - What is it?
This is a translation of first-principles engineering into executable AI agent skills. The goal is to enforce rigorous requirements questioning, aggressive code deletion, and systematic optimization before any automation occurs.

## How Does it Work? Technical Spec.
The method is split into 5 sequential skills that agents execute:
1. **`first-principles-question-requirements`:** Challenges every requirement. Assumes they are wrong. Gets requirements as least wrong as possible before coding.
2. **`first-principles-delete-process`:** Aggressively deletes code or features. Aims to delete 5% at a time. Trims until something breaks, then restores the minimum.
3. **`first-principles-simplify-optimize`:** Simplifies the remaining structure. Removes speculative code, abstractions, and boilerplate.
4. **`first-principles-accelerate-cycle`:** Identifies performance bottlenecks and increases execution/cycle speed.
5. **`first-principles-automate`:** Automates the final, optimized state. Never automates an unoptimized process.

## What Sets This Project Apart?
- **Actionable, Not Conceptual:** This algorithm is created by Elon Musk; it's the algorithm he diligently uses in all his companies for any engineering process. it is proven and tested multiple times. it's derived from first-principles, hence its name. These are actual `SKILL.md` files that coding agents (like Claude Code or Codex) can ingest and run.
- **Agent Guardrails:** This is agent steering in real-time. Prevents agents from writing bloated code by forcing them to delete and question their own work.

## Evals and test Series
- Tests run locally on clean checkouts.
- Validation: Test the agent's behavior when handed a legacy codebase. Verify that the agent successfully deletes unused paths and refactors complex loops without manual guidance.

## Future Dev
- Package this method as an open-source GitHub repository `first-principles-skills`.
- Build a CLI tool to install these skills into `$CODEX_HOME` or `.agents/skills`.
