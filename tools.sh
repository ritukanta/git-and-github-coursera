#! /usr/bin/bash

# Module 2
# Skip the staging area:
git commit -a -m "Commit Message"
# But remember we can not commit new file with "-a"


# Git log with details, "p" stands for Patch
git log -p

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