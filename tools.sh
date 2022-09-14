#!/usr/bin/bash

# Clone a remote repo
git clone URL

# Push changes to remote repo
git push

# Push to certain branch
git push -u origin <branch-name>

# Check remotes of fetching and pushing
git remote -v

# More info about remote origin
git remote show origin

# Check remote branches
git branch -r

# Fetch remotes and allow to merge
git fetch 

# Fetch and try to merge automatically
git pull

# Merge fetched branches
git merge FETCH_HEAD
# or
git merge origin/branch_name

# Pick specific commits
git cherry-pick <commit ID>