# Quality Document

This document grades the codebase across product domains and architectural layers. Update it after major features to track codebase health.

## 📦 Product Domains

| Domain | Grade (A-D) | Verification Status | Test Stability | Key Gaps / Debt |
|:---|:---:|:---|:---|:---|
| **User Authentication** | A | Fully automated tests | Stable | Need rate-limiting |
| **Document Search (RAG)**| B | Manual verification | Flaky | High latency on long queries |
| **API Endpoints** | C | Basic smoke tests | Stable | Missing validation schemas |

## 🏗️ Architectural Layers

| Layer | Grade (A-D) | Boundary Enforcement | Agent Legibility | Key Debt |
|:---|:---:|:---|:---|:---|
| **Frontend/UI** | B | Strong separation | Medium | Inline styles need cleanup |
| **Service Layer** | A | Enforced via tests | High | None |
| **Repository/DB** | C | Direct queries leak | Low | Lack of abstraction |

---

## 💡 Harness Simplification Rule
Every rule in `AGENTS.md` is overhead. As the agent's intelligence or codebase quality improves, prune unnecessary rules:
1. Snapshot this document.
2. Remove a rule or check from `AGENTS.md`.
3. Run the task runner/agent.
4. If grades do not drop, keep the rule removed to reduce overhead.
