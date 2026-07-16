# 🛠️ Skills I Use

## Intro - What is it?
This repository is a curated collection of structured, executable AI agent skills designed for coding assistants (such as Claude Code, Codex, and Google Antigravity). It replaces passive prompting with versioned, procedural markdown configurations to enforce safety, context hygiene, and engineering discipline.

## How Does it Work? Technical Spec.
Each skill in the `skills/` directory is structured as a standalone folder containing a `SKILL.md` file with standardized YAML frontmatter (`name` and `description`). Coding agents auto-discover these files to extend their capabilities dynamically:
- **`first-principles`**: Evaluates problem trajectory, questions requirements, deletes bloated code, refactors, benchmarks speed, and automates pipelines sequentially.
- **`harness-eng`**: Configures project-specific boundaries, progress logs, and feature lists.
- **`doc-harness`**: Enforces brutalist, facts-only documentation structures without marketing fluff.
- **`experiment-workflow`**: Standardizes variable-isolated testing and 3x10 query stress-testing.
- **`word-farsi-docx`**: Rebuilds correct RTL alignment and B Nazanin font formatting for Persian Word documents.
- **`gitlab-workflow`**: Ingests branch protection rules, commit formatting, and MR guidelines.

To install a skill locally:
```bash
npx skills add MasihMoafi/Skills-I-use --skill <skill-name>
```

## What Sets This Project Apart?
- **Executable Guidelines:** Moves away from passive documentation into structured prompt-injection rules that AI agents actively read and enforce.
- **Context-Size Aware:** Engineered with a three-level progressive disclosure design to minimize token consumption and protect the context window.

## Evals and test Series
- Validated locally on Ubuntu using the `quick_validate.py` script to ensure YAML metadata, schema names, and resource structures are agent-legible before deployment.

## Future Dev
- Add further automated checks for checking skill compatibility across multiple agent runtimes.
- Expand the repository with domain-specific skills for ML training and CUDA optimizations.
