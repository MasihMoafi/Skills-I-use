---
name: doc-harness
description: Use when writing project documentation such as a README.md, SKILL.md, specifications, or launch material.
---

# Documentation Harness

## Naming structure

```yaml
---
name: a name that captures the project
type: the actual audience or use case
---
```

## Tone

- Maintain my original voice.
- Drop marketing fluff. Use facts, brevity, and direct language.
- Never claim a feature, result, benchmark, release, user, or level of stability that the repository cannot prove.
- Say "planned", "under acceptance", or "experimental" when that is the truthful state.

## First-screen rule

The first screen must answer four questions without scrolling far:

1. What is it?
2. Who is it for?
3. What painful problem does it remove?
4. What proof can the reader inspect now?

Use one sharp sentence, one short explanation, and the strongest available proof: a demo, screenshot, passing workflow, benchmark, release, or reproducible command. Do not begin with history, philosophy, or a large feature list.

## Content structure

### Intro — what is it?

A brutalist two- or three-sentence breakdown of what the project is, who it serves, and why it exists.

### The problem

Describe the concrete failure in the existing workflow. Prefer an observable problem over an abstract ambition.

### How does it work? Technical specification

Explain the mechanics and boundaries briefly, like a one-page manual. Include a small architecture diagram when it clarifies the system.

### Current state

Separate these explicitly:

- implemented and verified;
- implemented but still under acceptance;
- planned;
- intentionally unsupported.

Link to the source of truth for status.

### What sets this project apart?

Verify the distinction against the repository and competing approaches. Do not invent novelty. Prefer design choices and tradeoffs over adjectives.

### Evals and test series

If the repository contains tests, workflows, benchmarks, or evidence, summarize what was tested and link to it. Explain what a passing badge proves and what it does not prove.

Otherwise state that verification evidence is not yet available and advise the user on the smallest useful test.

### Quick start

Provide the shortest reproducible path to a meaningful result. Avoid making installation appear easier than it is.

### Future development

List only near-term work that is supported by the task tracker or current development direction.

## Attention without dishonesty

Attention comes from compressing the truth, not inflating it.

- Lead with the painful workflow problem.
- Show the result before explaining every mechanism.
- Use a concrete contrast: "without this" versus "with this".
- Give the reader one memorable idea, not ten equal features.
- Put evidence beside the claim it supports.
- Make the first action obvious: run, watch, read, install, or inspect.

A useful hook is a falsifiable claim about the problem or design, for example:

> A coding agent should not forget why it is changing your code.

The following sentence must explain exactly how the project addresses that claim.

## Distribution output

For a project intended for public release, derive these from the README rather than rewriting the story independently:

1. **GitHub description:** one factual sentence, no slogans.
2. **Launch post:** problem, result, proof, link.
3. **Technical post:** one design decision, its tradeoff, and evidence.
4. **Community post:** ask for feedback on a specific unresolved problem; do not drop a bare link.
5. **Demo script:** show the failure state, the project in use, and the observable improvement.

Every channel must point back to the same truthful source of record. Adapt the opening to the audience, but do not change the facts.

## Final check

- Does the opening state the real product and current maturity?
- Can every major claim be verified in the repository?
- Is the strongest proof visible early?
- Is the reader told what to do next?
- Is planned work clearly separated from working behavior?
- Could one sentence from the page be reused as the project's public description?
