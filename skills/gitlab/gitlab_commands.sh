#!/bin/bash
# GitLab CLI Commands Reference - All commands work with your proxy now!

# Authentication (already working)
glab auth status

# Create a new project
glab repo create my-project --public  # or --private

# Clone an existing project
glab repo clone username/project-name

# Once in a repo directory, create a branch named "Masih"
glab repo create-branch Masih

# Or using git directly (also works with proxy via git config)
git checkout -b Masih
git push -u origin Masih

# List all branches
glab repo list-branches

# View current repo info
glab repo view

# Create a merge request
glab mr create --source-branch Masih --target-branch main --title "My changes"

# List merge requests
glab mr list

# View specific MR
glab mr view 123

# Merge an MR
glab mr merge 123

# Create an issue
glab issue create --title "Bug fix" --description "Details here"

# List issues
glab issue list

# View CI/CD pipelines
glab ci view

# List all pipelines
glab ci list

# Search for projects
glab repo search "keyword"
