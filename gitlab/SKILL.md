---
name: gitlab
description: GitLab workflow guidelines for agents. Use when working on repositories hosted on GitLab to coordinate branches, commits, MRs, and permissions.
---

# GitLab Workflow - Agent Guidelines

## 🚨 CRITICAL RULES FOR AGENTS

### Branch Protection & Workflow
```
issue_name_branch → dev → test → main (production)
```

### Agent Permissions

#### ✅ ALLOWED:
- Create feature branches from `dev` with naming: `issue_name` or `fix_description`
- Make commits to your feature branch
- Create Pull/Merge Requests (PR/MR) **ONLY to `dev`** branch
- Request reviews on PRs to `dev`

#### ❌ STRICTLY FORBIDDEN (unless explicitly instructed):
- **NEVER** directly commit to `dev`, `test`, or `main`
- **NEVER** create PRs to `test` or `main`
- **NEVER** merge any PR without human approval
- **NEVER** delete or force-push to protected branches
- **NEVER** modify CI/CD configurations without explicit permission

## Workflow Steps

### 1. Starting Work on an Issue
```bash
git checkout dev
git pull origin dev
git checkout -b fix_signup_validation

# ... make changes ...

git add .
git commit -m "fix: improve signup validation"
git push -u origin fix_signup_validation
```

### 2. Creating a Merge Request
```bash
glab mr create --source-branch $(git branch --show-current) --target-branch dev \
  --title "TYPE: Description" --description "Resolves #123"
```
Where TYPE is: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`. Never target `test` or `main`.

### 3. After Human Review & Approval
Humans handle the rest:
- Review your PR to `dev`
- Merge `dev` → `test` (for testing)
- Merge `test` → `main` (for production)

**You do NOT handle these merges.**

## Quick Reference
```bash
git branch --show-current       # check current branch
git branch -a                   # view all branches
glab mr list                    # check open MRs
glab mr view <MR_ID>            # inspect one MR
```

## Wrong Target Branch
```bash
# Not yet created - just recreate with the right target:
glab mr create --target-branch dev

# Already created - close and recreate:
glab mr close <MR_ID>
glab mr create --source-branch your_branch --target-branch dev
```

## Summary for Agents
- Your PRs go to `dev` ONLY
- Humans handle `dev` → `test` → `main`
- When in doubt, ask before merging anything
- Protected branches are protected for a reason
