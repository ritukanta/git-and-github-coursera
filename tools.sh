#! /usr/bin/bash

# Module 1 Summary

# install git on Linux distros
sudo apt install git

# for MacOS with HomeBrew
brew install git

# Diff 2 files
diff -u old_file new_file

# Take diff output
diff -u oldfile newfile > change.patch

# Apply patch
patch ur_file < change.patch

# check Git version
git --version

# email and name configs globallly
git config --global user.email "me@example.com"

git config --global user.name "My Name"


# Init a repo
git init

# Check inside folder
ls -l .git

# Stage by adding
git add <file>

# Unstage the staged
git rm --cached <file>

# Status of working tree
git status


# Commit changes
git commit
# or
git commit -m "Commit Message"


# Config details
git config -l

# Review repo history
git log