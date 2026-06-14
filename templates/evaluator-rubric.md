# Evaluator Rubric

Use this rubric to score the quality of the agent's work. Rate each dimension on a scale of **0 to 2**:
- **0**: Fails to meet the criteria
- **1**: Partially meets the criteria
- **2**: Fully meets the criteria

### 1. Correctness
*Does the implementation exactly match the target user-visible behavior?*
* Score: [0 / 1 / 2]
* Notes:

### 2. Verification
*Were tests run? Is there verifiable evidence (logs, terminal output) attached to the progress sheet?*
* Score: [0 / 1 / 2]
* Notes:

### 3. Scope Discipline
*Did the agent stay strictly within the active feature boundaries? Did it avoid making unrequested refactors?*
* Score: [0 / 1 / 2]
* Notes:

### 4. Reliability
*Does the code survive a system restart? Are there edge cases handled?*
* Score: [0 / 1 / 2]
* Notes:

### 5. Maintainability
*Is the code clean, well-commented, and are the changes documented in the codebase?*
* Score: [0 / 1 / 2]
* Notes:

### 6. Handoff Readiness
*Can a new agent resume work tomorrow using only the updated progress log and files?*
* Score: [0 / 1 / 2]
* Notes:

---

### Total Score: [ / 12]

**Decision:**
- [ ] **Accept**: Ready to merge.
- [ ] **Revise**: Minor changes needed.
- [ ] **Block**: Critical failures in correctness or verification.
