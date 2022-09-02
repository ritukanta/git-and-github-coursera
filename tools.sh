#! /usr/bin/bash

# Module 2
# Skip the staging area:
git commit -a -m "Commit Message"
# But remember we can not commit new file with "-a"


# Git log with details, "p" stands for Patch
git log -p


# Show the most recent commit patches
git show HEAD


# Individual Git logs
git show <commit ID>

# Git log with Stats
git log --stat

# Diff for unstaged and modified files
# for all
git diff
# for a certain file
git diff <file>


# Stage modified files
git add -p

# Diff for staged files, this will ask whether u want to commit or not. This helps when u are not sure if u want stage a change
git diff --staged

# Remove a staged file
git rm <file>

# Rename a staged file
git mv <file>

# Discard the change before staging
git checkout <file>

# Reset the change after staging
git reset HEAD <file>

# Amend
git commit --amend

# Undo a commit
git revert <commit ID>

# Revert the latest commit
git revert HEAD


# List branches
git branch

# Create a new branch
git branch new-branch-name

# Switch branches
git checkout branch-name

# Create and switch at once
git checkout -b branch-name

# Delete a branch
git branch -d branch-name

# Force delete a branch
git branch -d branch-name