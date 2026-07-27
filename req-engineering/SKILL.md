---
name: req-engineering
description: Requirements engineering discipline — acceptance-criteria-first workflow, verification trust hierarchy, and importance/difficulty task axes. Load when turning a user request into structured requirements before implementing, or when writing/updating a PRD or vision document.
---

# Requirements Engineering

A discipline for capturing and verifying what "done" actually means before writing code.

## The acceptance-harness method

1. Take the user's request.
2. Draft an itemized, explicit acceptance-criteria list — exactly what must be true.
3. For important or difficult tasks, confirm that list with the user BEFORE implementing.
4. Implement; run automated checks (compilation, tests, build).
5. Hand the user a plain test checklist: one bullet per behavior — what to do, what must happen.
6. The task is "done" only when the user verifies it against the confirmed criteria. Never claim functional verification yourself.

## Verification-trust hierarchy (ascending)

1. Agent claim — untrusted by default.
2. Automated test/CI passing — necessary, never sufficient.
3. A real end-to-end run in a production-like environment.
4. The user's own manual acceptance — the only rung that closes "done."

Any "done" claim should name which rung it's actually standing on.

## Importance vs. difficulty

Keep these as two independent axes when tracking tasks:

- **Importance** (why it matters): Foundational / Important / Nice-to-have.
- **Difficulty** (how to route it): Easy / Medium / Hard — used for worker/model selection, not urgency.

Don't let a Hard task borrow Foundational urgency, or a Foundational task get treated as low-effort because it happens to be Easy.

## Stating a vision/PRD

When writing or updating a vision or product requirements document:

- **Thesis**: state what the thing IS in one line — the identity that survives changes in implementation or provider.
- **Purpose**: state what it's FOR — the problem it solves and for whom.
- **Value**: numbered value props, each independently worth building — not one blob of "makes things better."
- **Non-goals**: list what's explicitly deferred or out of scope for the current release, next to the goals, not left implicit.
- Keep the vision doc and the current-state/implementation doc separate and cross-referencing — the vision doesn't claim what's built, the state doc doesn't restate why. Drift between the two is a rot signal.
