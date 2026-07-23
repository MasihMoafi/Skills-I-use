---
name: skills
type: reusable AI-agent workflows for developers using SKILL.md-compatible assistants
---

# Skills

**Do not re-explain the same working method to an agent every session.**

This repository contains reusable `SKILL.md` workflows for coding assistants such as Codex, Claude Code, and other skill-compatible agents. Each skill is a small, versioned procedure with its own trigger description, constraints, and execution rules.

## Quick start

Install one skill:

```bash
npx skills add MasihMoafi/skills --skill doc-style
```

Or replace `doc-style` with another folder name from the list below.

Inspect what you are installing before using it:

```bash
cat doc-style/SKILL.md
```

Expected result: the selected skill is available to the compatible agent/runtime you install it into, and its `name`/`description` frontmatter tells that runtime when the workflow is relevant.

## The problem

Prompts for recurring engineering work tend to drift: the same repository-cleanup rules, experiment discipline, documentation standard, or product-design process gets rewritten differently each time.

A skill turns that repeated instruction into a repository-owned procedure that can be reviewed, versioned, and reused.

## Available skills

- **[`clean-up`](clean-up/SKILL.md)** — consent-gated disk-space audit and cleanup workflow.
- **[`doc-style`](doc-style/SKILL.md)** — evidence-first README, specification, and launch-writing standard.
- **[`experiment-workflow`](experiment-workflow/SKILL.md)** — variable-isolated experiment workflow with explicit hypotheses and stress tests.
- **[`first-principles`](first-principles/SKILL.md)** — engineering simplification workflow: question → delete → simplify → accelerate → automate.
- **[`gitlab`](gitlab/SKILL.md)** — branch-protection and merge-request workflow guidance for GitLab repositories.
- **[`harness-eng`](harness-eng/SKILL.md)** — agent-project harness design: rules, progress state, feature tracking, and evaluator contracts.
- **[`pdf`](pdf/SKILL.md)** — visual-first workflow for reading, creating, and validating PDFs.
- **[`product-design`](product-design/SKILL.md)** — product architecture, user-flow design, stack selection, and frontend-first execution planning.
- **[`training-nn`](training-nn/SKILL.md)** — neural-network training recipe and common failure-mode checklist.

Personal machine configuration and third-party-authored skills are intentionally excluded from the public repository.

## How it works

Each public skill lives in its own folder:

```text
skill-name/
└── SKILL.md
```

The file begins with YAML frontmatter:

```yaml
---
name: skill-name
description: when the agent should use this workflow
---
```

The rest of the file defines the procedure, output contract, and guardrails. The repository is deliberately plain Markdown so every instruction is inspectable before it is installed.

## Current state

### Implemented and available

The skills listed above are present as standalone `SKILL.md` workflows and can be installed individually through the `skills` CLI.

### Implemented but still under acceptance

Cross-runtime behavior is not yet continuously verified. A skill that parses correctly is not automatically proven to behave identically in every agent runtime.

### Planned

- Automated structural validation for every public `SKILL.md`.
- Compatibility checks across multiple supported agent runtimes.
- More domain-specific engineering workflows when there is a repeated real use case.

### Intentionally unsupported

- Personal machine-specific configuration.
- Private skills.
- Third-party skills copied into this repository without a clear reason to redistribute them.

## What sets this repository apart

These are design choices rather than novelty claims:

- **Procedures instead of prompt snippets.** Each skill describes a repeatable workflow, not a one-off answer style.
- **One job per skill.** A skill is scoped tightly enough to stay out of unrelated tasks.
- **Inspectable source.** The behavior contract is plain Markdown in the repository.
- **Versionable working methods.** Changes to how an agent should work can be reviewed like code.

## Evals and test series

There is currently no repository-level CI proving cross-runtime compatibility.

The smallest useful verification is:

1. install one skill into a supported runtime;
2. give the agent a task that clearly matches the skill description;
3. verify that the runtime discovers the skill;
4. check the agent's output against the procedure and guardrails in that `SKILL.md`.

Automating this check is planned work.

## Future development

The next useful step is not adding many more skills. It is making the existing set easier to discover, install, and verify across runtimes.
