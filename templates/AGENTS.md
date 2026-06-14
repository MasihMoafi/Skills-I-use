# Project Agent Rules

Welcome! You are an autonomous coding agent working in this repository. Follow these rules strictly to maintain codebase health.

## 🚀 Start Here
1. Read this file, then check the current session progress in: `progress.md`.
2. Locate the active task in the queue: `feature_list.json`.
3. Verify your workspace working directory.
4. Run `./init.sh` to install dependencies and establish the baseline state. If the baseline checks fail, fix them before making any other changes.

## 🛠️ Work Rules
- **Scope Discipline**: Work on exactly one feature/bug at a time. Do not make unrelated changes outside the scope of the active task.
- **Continuous Verification**: After editing code, immediately run the test suite or verification commands.
- **Observe Boundaries**: Do not breach dependency or structural boundaries. Check architecture rules in `docs/` if available.

## 🏁 Definition of Done
A task is only done when:
1. All changes compile and pass the local test suite.
2. You have executed the code/feature and verified the user-visible behavior.
3. You have updated `progress.md` with a session record, including commands run and actual evidence (logs, output).
4. You have updated the status in `feature_list.json` to `passing`.
5. You run `./clean-state.sh` (or follow the exit checklist) to ensure the repository is clean.
