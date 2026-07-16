---
name: gitlab-workflow
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
# Always start from latest dev
git checkout dev
git pull origin dev

# Create feature branch
git checkout -b fix_signup_validation

# Work on your changes
# ... make changes ...

# Commit
git add .
git commit -m "fix: improve signup validation"

# Push to your feature branch
git push -u origin fix_signup_validation
```

### 2. Creating a Merge Request
```bash
# Using glab CLI
glab mr create \
  --source-branch fix_signup_validation \
  --target-branch dev \
  --title "Fix: Improve signup validation" \
  --description "Resolves #123"

# NEVER target test or main:
# ❌ --target-branch test
# ❌ --target-branch main
```

### 3. After Human Review & Approval
Human will:
- Review your PR to `dev`
- Merge `dev` → `test` (for testing)
- Merge `test` → `main` (for production)

**You do NOT handle these merges.**

## Project Structure (Example)
```
project/
├── cmd/
│   └── api/
│       └── main.go          # Entry point
├── internal/
│   └── feature/
│       └── user/
│           ├── handler.go
│           ├── service.go
│           └── api_test/
│               └── signup.http  # HTTP tests
├── go.mod
├── go.sum
└── README.md
```

## Local Testing
```bash
# Clone repo
glab repo clone username/project-name
cd project-name

# Install dependencies
go mod tidy

# Run locally
go run ./cmd/api/main.go

# Test with HTTP file
# Use VSCode REST Client or similar to run:
# internal/feature/user/api_test/signup.http
```

## CI/CD Pipeline (Future)
```yaml
# .gitlab-ci.yml (example structure)
stages:
  - test
  - build
  - deploy

test:
  stage: test
  script:
    - go test ./...
  only:
    - merge_requests
    - dev

build:
  stage: build
  script:
    - go build ./cmd/api
  only:
    - test
    - main

deploy_staging:
  stage: deploy
  script:
    - echo "Deploy to staging"
  only:
    - test

deploy_production:
  stage: deploy
  script:
    - echo "Deploy to production"
  only:
    - main
  when: manual  # Requires human approval
```

## Quick Reference

### Check current branch
```bash
git branch --show-current
```

### View all branches
```bash
git branch -a
```

### Create MR to dev (correct)
```bash
glab mr create --source-branch $(git branch --show-current) --target-branch dev
```

### Check MR status
```bash
glab mr list
glab mr view <MR_ID>
```

## Emergency: If You Accidentally Target Wrong Branch

```bash
# If MR not yet created - change target:
glab mr create --target-branch dev  # Correct

# If MR already created - close and recreate:
glab mr close <MR_ID>
glab mr create --source-branch your_branch --target-branch dev
```

## Summary for Agents

**Remember:** 
- Your PRs go to `dev` ONLY
- Humans handle `dev` → `test` → `main`
- When in doubt, ask before merging anything
- Protected branches are protected for a reason

**Default command template:**
```bash
glab mr create --source-branch $(git branch --show-current) --target-branch dev --title "TYPE: Description"
```

Where TYPE is: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`
