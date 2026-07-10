# Skills-I-use

Battle-tested markdown rules, constraints, and guidelines for steering agentic AI coding models (such as Claude Code, Codex, and Google Antigravity).

This repository serves as a guide and configuration hub to programmatically steer coding agents, preventing context bloat and ensuring deterministic, safe, and precise code modifications.

## Core Tenets

### 1. Context Hygiene & Efficiency
* **Local-First Search**: Always inspect and search local files first rather than relying on LLM assumptions or massive internet fetches.
* **Frugal Token Consumption**: Limit terminal command outputs and read narrow line ranges to conserve context window budget.
* **Structured Inputs**: Provide exact file links and target boundaries rather than vague descriptions.

### 2. OS-level & Change Safety
* **Targeted Staging**: Stage explicit file paths only. Never use blanket commands like `git add -A` or `git add .` on entire workspace directories unless carefully reviewable.
* **Surgical Edits**: Prefer small, contiguous modifications that are easily reversible.
* **Pre-Verification**: Proactively run project test suites and compilation checks to verify the codebase's health before committing.

### 3. Front-End Best Practices
When building web applications:
* **Custom Styling Systems**: Emphasize bespoke design systems with curated custom CSS tokens over browser defaults or generic styles.
* **SEO Invariants**: Automatically include descriptive title tags, meta tags, structured heading hierarchies, and semantic HTML elements on every page.
* **Dynamic Aesthetics**: Use hover interactions, smooth animations, and tailored color systems to make the UI responsive and premium.

## Usage
To steer an agent:
1. Place a `.md` rules config in your agent's workspace directory.
2. Instruct the agent to read and follow the constraints in the file before taking any action.
