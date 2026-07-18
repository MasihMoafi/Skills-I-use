---
name: first-principles
description: Executable first-principles engineering method for AI agents. Run this on every task to question requirements, delete components, simplify/optimize, accelerate cycle time, and automate.
---

# First-Principles Engineering Method

## Intro - What is it?
This skill translates first-principles engineering into a structured, 5-step agent execution protocol. It forces the agent to verify the correctness of the problem trajectory, aggressively trim code, minimize abstractions, and benchmark speed before writing any automation.

## Core Stance
- **Correct Trajectory First:** The most rigorous phase is requirement checking. Finding the right problem to solve prevents wasting cycles on things that shouldn't exist.
- **Strict Ordering:** Question -> Delete -> Simplify/Optimize -> Accelerate -> Automate. Never skip a step or optimize a process that should be deleted.
- **Sovereign Execution:** Human steers, agent executes. State assumptions and halt at critical design junctions.

---

## The 5-Step Protocol

### 1. Question the Requirements (Finding the Trajectory)
- **Goal:** Get the requirements as least wrong as possible. Do not solve a problem that shouldn't exist.
- **Procedure:**
  - Assume every requirement in the issue or prompt is wrong or sub-optimal.
  - State all assumptions before proposing changes.
  - If the request has multiple plausible meanings, surface the interpretations instead of silently choosing one.
  - Ask when ambiguity makes the change risky or likely wrong.
  - Push back if a simpler or safer approach better serves the core objective.
  - Stop and name confusion immediately when code, runtime behavior, or requirements disagree.

### 2. Delete the Process (Aggressive Trimming)
- **Goal:** Delete parts or processes until forced to add back at least 5% later.
- **Procedure:**
  - Review the code or features implemented for the task.
  - Identify parts, configs, or dependencies that can be removed without breaking core functionality.
  - Trim at least 5% of the codebase/features.
  - Run regression tests to verify functionality remains intact.
  - Keep deleting until the boundary of failure is reached, then restore the minimum required to pass.

### 3. Simplify and Optimize (Surgical Coding)
- **Goal:** Keep the remaining codebase lean, boring, and readable.
- **Procedure:**
  - Write the absolute minimum code that solves the verified problem.
  - Do not add speculative features, configurations, abstractions, or shared helpers for single-use logic.
  - Avoid error handling for impossible states unless surrounding code explicitly does it.
  - Touch only the lines needed for the request. Do not perform drive-by formatting or adjacent refactors.
  - Match the local repository style exactly.

### 4. Accelerate Cycle Time (Performance & Speed)
- **Goal:** Accelerate execution speed and cycle time without sacrificing performance.
- **Procedure:**
  - Instrument and measure execution speed.
  - Locate the slowest paths (bottlenecks).
  - Restructure loops, cache computations, or parallelize tasks.
  - Maintain a short plan with a verification check attached to each acceleration step.
  - Run the cheapest relevant regression checks to ensure speed-ups do not introduce flakes.

### 5. Automate the Process (CI & Scripting)
- **Goal:** Automate the final, optimized state. Never automate a process that has not been optimized.
- **Procedure:**
  - Take the simplified, optimized, fast process.
  - Write automation scripts (Bash) or CI configurations (GitHub Actions, GitLab CI/CD) to run the pipeline.
  - Verify that the automation runs end-to-end cleanly without human intervention.

---

## Verification Checklist
1. Were the requirements questioned and the trajectory approved before writing code?
2. Was at least 5% of the unnecessary process/code deleted?
3. Is the code surgical, matching local style, with no speculative abstractions?
4. Was execution speed measured and optimized?
5. Does the automation (CI/Bash) run cleanly without human intervention?
