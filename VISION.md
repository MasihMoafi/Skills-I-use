# VISION

## What this is
A public library of `SKILL.md` files — small, procedural markdown docs that SKILL.md-compatible agents (Claude Code, Codex, others) load on demand instead of being re-prompted from scratch. Each skill is one repeatable workflow, not a framework: first-principles engineering discipline, evidence-first doc style, requirements and acceptance-criteria discipline, project orientation, a disk cleanup procedure, chat-history triage, a GitLab MR protocol, harness design, product design, artifact and PDF handling, Persian `.docx` typesetting, NN training pitfalls, an experiment-isolation workflow.

## Core thesis
Prompting doesn't compose across sessions; procedure does. A workflow written once and refined after each real friction point beats re-explaining the same instructions to an agent every time. This repo is that accumulated procedure, made public on the bet that discipline useful in one person's sessions generalizes to anyone running these agents.

## Public vs. excluded
15 general-purpose skills are public: `artifact`, `chat-cleaner`, `clean-system`, `doc-style`, `dumb-down`, `experiment-workflow`, `first-principles`, `gitlab`, `harness-eng`, `pdf`, `product-design`, `req-engineering`, `training-nn`, `vision`, `word-farsi-docx`. Deliberately excluded (`.gitignore`): the author's personal operating kernel and study notes (`dev`, `Learner`), notes that are not skills because they have no `SKILL.md` (`web-dev`, `magic-prompt.md`), and third-party-authored material (`skill-creator`, `skill-installer` from `openai/skills`, Apache-2.0; `best-practices.md`, substantially OpenAI's Codex guide) — used locally, not redistributed under this repo's MIT license.

## Honest state (2026-07-19)
No external adoption observed yet — no reported installs, stars, or issues beyond the author's own use. The skills are real and used daily by the author, which is evidence they work for at least one person, not evidence they generalize. There has been no launch post, no before/after demo, and no comparison against just prompting an agent directly. Until one of those exists, "no traction" is as likely a distribution gap as a quality verdict — treat it as unproven either way, not settled.

## What this file is for
A cold re-entry point: an agent or the author, arriving with no memory of this project's rationale, should be able to read this file and know what the repo is, why it exists, and what's actually proven versus assumed — without re-deriving it from the README and eight SKILL.md files each time.
