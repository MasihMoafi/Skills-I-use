---
name: req-engineering
description: Requirements engineering discipline — acceptance-criteria-first workflow, verification trust hierarchy, and importance/difficulty task axes. Load when turning a user request into structured requirements before implementing, or when writing/updating a PRD or vision document.
---

# Requirements Engineering

Capture and verify what "done" means before writing code.

## Acceptance harness

1. Take the user's request.
2. Draft an explicit acceptance-criteria list stating exactly what must be true.
3. For important or difficult tasks, confirm that list with the user before implementing.
4. Implement and run the appropriate automated checks.
5. Give the user a plain test checklist: one bullet per behavior, stating what to do and what must happen.
6. Treat the task as done only after the user verifies it against the confirmed criteria.

## Verification trust

Use this ascending hierarchy:

1. Agent claim — untrusted by default.
2. Automated test or CI — necessary, never sufficient.
3. Real end-to-end run in a production-like environment.
4. User manual acceptance — closes "done."

Name the actual verification level behind any completion claim.

## Importance versus difficulty

Track two independent axes:

- **Importance:** Foundational / Important / Nice-to-have.
- **Difficulty:** Easy / Medium / Hard.

Use importance to express value and difficulty to route implementation. Do not confuse one for the other.

## Vision and requirements documents

- **Thesis:** State what the product is in one line.
- **Purpose:** State what problem it solves and for whom.
- **Value:** List independently useful value propositions.
- **Non-goals:** Put deferred and unsupported behavior next to the goals.
- Keep the stable vision separate from current implementation status, with clear cross-references.
