# Clean State Checklist

Before ending your session and submitting a Pull Request, run through this checklist to ensure the workspace is clean and ready for the next run.

- [ ] **Baseline Still Works**: Run `./init.sh` (or `npm test`/`pytest`) and verify all tests pass.
- [ ] **No Unused Files/Artifacts**: Delete temporary logs, backup files, and dump files (`.bak`, `tmp*`, etc.).
- [ ] **Format and Lint**: Run formatting and linting scripts (`npm run lint`, `black`, `eslint`).
- [ ] **Git Hygiene**: Run `git status`. Ensure only the expected files are staged/modified. Untracked files should either be added or deleted.
- [ ] **Progress Updated**: Fill in the final entry in `progress.md` with your evidence logs.
- [ ] **Handoff Saved**: If ending with unresolved work, save your state to `session-handoff.md`.
