---
name: clean-up
description: Procedural guide for auditing and safely reclaiming disk space on the system. Covers package manager caches (uv, pip, npm, conda, pnpm), Docker caches/images, transient agent files (.ES), and temp/backup files. Never deletes without explicit user confirmation.
metadata:
  short-description: Audit and safely clean up disk space
---

# Safe System Clean-up Skill

This skill provides a structured workflow for identifying, auditing, and safely reclaiming disk space across package manager caches, Docker resources, shell backups, and temporary files.

> [!IMPORTANT]
> **Safety First:** Never execute deletion or purge commands without presenting the targeted files/directories and their sizes to the user and obtaining explicit, written permission.

---

## 1. Audit Phase (Detection)

To begin a clean-up, scan the system for space-consuming targets using non-destructive commands. Categorize findings into the following groups:

### A. Package Manager Caches
Check the sizes of common package directories:
* **uv cache:** `du -sh ~/.cache/uv`
* **pip cache:** `du -sh ~/.cache/pip`
* **Conda package cache:** `du -sh ~/miniconda3/pkgs`
* **npm cache:** `du -sh ~/.npm/_cacache`
* **pnpm store:** `du -sh ~/.local/share/pnpm/store` (and check for registered projects via `pnpm store status`)

### B. Docker Storage
Check active/stopped containers, unused images, and builder caches:
* `docker system df`
* `docker ps -a` (to identify any running or stopped containers and their compose project directories)

### C. Transient Agent files & Backups
* **Episodic State files:** `.ES/` folders or `ES.md` logs in repository roots.
* **Shell history/alias backups:** `~/.bash_history-*.tmp` files, `~/.bash_aliases.bak-*` backups.
* **Configuration backups:** Sibling `.bak` files in `~/.openclaw` or `~/.codex`.

---

## 2. Review and Consent Phase (User Approval)

Always present audit findings to the user before deleting anything. 

1. **Summarize findings:** Organize the targets in a table or list detailing:
   * File/Directory path.
   * Total size.
   * Safety level for deletion (e.g., "Highly Safe", "Safe - requires package re-download on next build", "Review needed - active project").
2. **Explicit Consent Prompt:** Ask the user:
   > *"I have found the following deletion candidates. Please review and confirm which ones you would like me to delete."*

---

## 3. Clean-up Phase (Execution)

Only run clean-up commands for categories the user has explicitly approved.

### Package Cache Purging
* **uv:** `uv cache clean` (or delete `~/.cache/uv` if CLI is absent).
* **pip:** `pip cache purge`
* **Conda:** `conda clean --all -y`
* **npm:** `npm cache clean --force`
* **pnpm:** `pnpm store prune` (safely removes unreferenced packages; do not delete the store folder directly as it may break other active projects' hardlinks).

### Docker Pruning
* **Prune unused build cache and stopped containers:** `docker system prune`
* **Deep prune (all unused images + volumes):** `docker system prune -a --volumes -f`

### File System Deletion
Use targeted `rm` commands for approved folders:
* `rm -rf /path/to/.ES`
* `rm -f ~/.bash_history-*.tmp`

---

## 4. Verification Phase

After cleaning, run `df -h /` and `du -sh ~` to verify the total space reclaimed and report the final statistics (e.g., "Reduced disk usage from X GB to Y GB").
