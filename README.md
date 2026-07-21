# 🛠️ Skills

## Intro - What is it?
A curated collection of structured, executable AI agent skills for coding assistants (Claude Code, Codex, and other SKILL.md-compatible agents). Each skill replaces passive prompting with a versioned, procedural markdown file the agent loads on demand.

## How Does it Work? Technical Spec.
Each skill is a standalone folder containing a `SKILL.md` file with YAML frontmatter (`name` and `description`). Agents match the `description` against the current task and load the skill only when relevant:

- **`clean-up`**: Safe, consent-gated workflow for auditing and reclaiming disk space (package caches, Docker, temp files).
- **`doc-style`**: Brutalist, evidence-first documentation and launch-writing standard — no unproven claims, no marketing fluff.
- **`experiment-workflow`**: Variable-isolated testing workflow with structured hypothesis, source material, and query-based stress-testing.
- **`first-principles`**: A 5-step engineering method (question → delete → simplify → accelerate → automate), adapted from Elon Musk's "algorithm."
- **`gitlab`**: Branch-protection and MR workflow guidelines for agents working on GitLab-hosted repos.
- **`harness-eng`**: Guidance for designing an agent project harness (AGENTS.md/CLAUDE.md rules, progress logs, feature trackers, evaluator rubrics). Adapted in part from [Walking Labs' Learn Harness Engineering](https://walkinglabs.github.io/learn-harness-engineering/en/skills/).
- **`pdf`**: Visual-first workflow for reading, creating, and validating PDFs (Poppler rendering + reportlab/pdfplumber/pypdf).
- **`training-nn`**: A neural-net training recipe and common-pitfalls checklist, adapted from Andrej Karpathy's ["A Recipe for Training Neural Networks"](https://karpathy.github.io/2019/04/25/recipe/).

Not every skill in this repo is public — personal, machine-specific config and third-party-authored skills are kept out via `.gitignore` (see below).

To install a skill locally:
```bash
npx skills add MasihMoafi/skills --skill <skill-name>
```

## What Sets This Project Apart?
- **Executable Guidelines:** Structured, procedural instructions an agent actively follows, not passive documentation.
- **Scoped:** Each skill covers one job, triggers on its own description, and stays out of context until relevant.

## Evals and test Series
- Each `SKILL.md`'s YAML frontmatter (name matches its folder, required `name`/`description` fields, description length) is checked with a local schema validator before anything is committed.

## Future Dev
- Add automated checks for skill compatibility across multiple agent runtimes.
- Expand with domain-specific skills for ML training and CUDA optimizations.
