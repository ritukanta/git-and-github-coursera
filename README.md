**Week 2: Using Git Locally**<br>

1. [Advanced Git interaction](#advanced-git-interaction)
1. [Undoing Things](#undoing-things)
1. [Branching and Merging](#branching-and-merging)
1. [Module 2 Summary](#module-2-summary)

# Advanced Git Interaction

### Intro to Module 2

- In this module, we'll feel the true power of Git by seeing how we can undo some of our changes. The ability to revert previous changes is one of the most useful aspects of a VCS. We can discard the changes made to a file, fix a commit that was incorrect and even roll back our repo to an older snapshot.

- We'll look into all these concepts and know how and when to use them. We'll checkout yet another important concept, <code>Branches</code>. We'll dive into what branches are, when to use them and how to deal with <code>Merge Conflicts</code>.

### Skipping the Staging Area

- When we covered the basic Git workflow, we got to know that the process usually to first **make changes**, **stage them**, and then **commit them**. But we can skip the staging step and go directly to the commit. This can be done using <code>-a</code> to the <code>git commit</code> command. This flag automatically stages every file that is tracked and modified before doing the commit letting it skip the git add step.

- At first, you might think that git commit <code>-a</code> is just a shortcut for git add followed by git commit but that's not exactly true. Git commit -a doesn't work on new files because those are untracked. Instead, git commit -a is a shortcut to stage any changes to tracked files and commit them in one step. If the modified file has never been committed to the repo, we will still have to use git add to track it first.

- However, using a shortcut like <code>-a</code> is just like the regular commit workflow. The commit will show up in the log along the with the commit message just as usual.
```Bash
$ git log
commit 46df7ea07d5222f97e1bf6c719ce479d51811d6d (HEAD -> week-1, origin/week-1)
Author: ritukanta <reddyritukanta1925@gmail.com>
Date:   Sat Aug 27 07:47:00 2022 +0530

    Module 1 Summary

    Signed-off-by: Ritukanta Reddy <reddyritukanta1925@gmail.com>
```

- Each time we do a commit, it's noticed that, in git logs, our latest commit comes to the top of list of commits, and how the <code>HEAD</code> indicator has now moved to the latest commit. Git uses the <code>head</code> alias to represent the currently checked out snapshot of ur repo. It lets u know what the contents of ur working tree should be.

### Getting More Info About Our Changes

- By default, git log command prints the commit message, the author, and the date. But to see the actual lines changed in each commit. To do this, with git log we can use <code>-p</code> flag. The p comes from patch, because using this flag gives us the patch that was created, similarly like in <code>diff -u</code>.

- The <code>git log -p</code> shows added lines with plusses and removed lines with dashes. Because the amount of text is now longer than what fits on ur screen, Git automatically uses a paddiing tool that allows us to scroll using page up, page down, and the arrow keys.

- If u want to the changes made in a certain commit, another option to use the <code>git show</code> followed by the commit ID as parameter. This will display the info about the commit and associated patch. The <code>Commit ID</code> can be found after term commit in the output of git log.

- The <code>--stat</code> flag is also used with git log to show some stats of the commit, like which files were changed and how many lines were added or removed.

- Before doing a commit, you need to make sure that the changes u made are correct and it works. It's natural that by the time you get to the commit step you don't really remember everything u changed. To help us track, Git gives us the <code>git diff</code> command. Again this format is equivalent to the diff -u output.

- If our change is bigger and includes several files, we can pass a file by parameter to see the differences relevant to that specific file instead of all the files at the same time.

- We can also use the <code>git add</code> with command with the <code>-p</code> flag, when we use this flag git will show us the changes or patches being added and ask us if we want to change it or not. This way this can be detected if there's any changes that we don't want to stage that at all. Useful right? However if we call git diff again after staging the files included in the change, it won't show any differences since git diff shows only unstaged files by default. Instead, we can call <code>git diff --staged</code> to see the diff changes that are staged but not committed.

### Deleting and Renaming Files 

- Let's say that you've decided to clean up some old scripts and want to remove them from your repository, you can delete track files from a repo using the <code>git rm</code> command, followed by name as the file name as parameter: <code>git rm < file ></code>. This will stop the file from being tracked by Git and delete it from the working tree. Likewise, <code>git rm -r folder</code> is used for for removing obsolete directories from the working tree.

- File removals also go thru the same general Git workflow: remove, commit.  We have to write a commit message, why we've deleted them. As usual, we get a bunch of stats when we do the commit.

- You can use the <code>git mv</code> command to rename files in the repos. Then the git status will show us that the file was remamed and clearly display the old and new names. As the previous example, the change is staged but not committed, you've to commit. The git mv command  works in a similar way to the <code>mv</code> command on Linux and so can be used for both moving and renaming. The git status shows us which files have tracked or untracked changes, and which files were added, modified, deleted or renamed.

- If we've a long list of untracked tiles, we might lose an important change in the noise, or uwanted files that we don't want in our repo. To make them ignored by git status, we can the <code>.gitignore</code> file. To create it, we can use <code>touch</code> or <code>nano</code>, and add the target file names, extensions so that they well be ignored successfully. For example, if we're working on a repo, in which a bunch of log files are created by the project scripts, and we need to ignore them and won't include in our work. So we've to specify *.log inside the .gitignore, like this:
```Bash
  GNU nano 6.4                                                                                        .gitignore                                                                                       Modified

*.logs/
```

- There's a number of rules how to use gitignore. After using creating and using <code>.gitignore</code>, we need to stage and commit it like other files, we did in the basic Git workflow.

### Advanced Git Cheat Sheet

- **git commit -a** - Stages and commits the modified track files and doesn't work on new files

- **git log -p** - Commit history with detailed Patch text of eah commit

- **git show commit-ID** - Log patch of a certain commit

- **git diff** - Similar to "diff -u", works for untracked files

- **git diff --staged** - Works for staged files, but not committed

- **git add -p** - Patches being added and whether to actually stage

- **git rm** - Removes track files or folders

- **git mv** - Renames or moves tracked files or folders to new names or other directories respectively

#### Git Ignore

- To ignore all files with extension .log add <code>*.log</code>
- To ignore a directory named temp (example)add **temp/**

- Lines start with <code>#</code> in .gitignore will be ignored, so u can use # for commenting in .gitignore

- For a certain file in directory use /Dirname/filename, such as /temp/*.log, /bin/adb.log etc

- Suppose u have multiple folders named libs and want to ignore then use **/lib to ignore all /lib filders

- Use /lib/**/name, to ignore /lib/test/name/ and like that folders

- Use name[abc].file to ignore files named /namea.file, nameb.file and name.file. it won't ignore named.file or namex.file etc

- Use name[!abc].file to ignore all files with nameXXX.file except namea.file  nameb.file   namec.file

- Name/!*.log - this will ignore all files of folder name but not the *.log files

- Say there are files named 01.txt, 02.sh, 03.c, 04.cpp, 05.py, 06.java, 07.html, 08.css, 09.js, 010.kt, 011.prop, 012.h, 013.mk. To ignore them all, what would you do? Add thier names one by one? Just add 0*

### Practice Quiz: Advanced Git Interaction

1. **Which of the following commands is NOT an example of a method for comparing or reviewing the changes made to a file?**<br>
(i) git log -p<br>
(ii) git diff --staged<br>
(iii) git add -p<br>
(iv) git mv<br>
*ans.* git mv

2. **What is the gitignore file?**<br>
*ans.* A file containing a list of files or filename patterns for Git to skip for the current repo.

3. **What kind of files will the command git commit -a not commit?**<br>
*ans.* New files

4. **What does HEAD represent in Git?**<br>
*ans.* The currently checked-out snapshot of ur project

5. **If we want to show stats about changes in a commit, like which files were changed and how many lines were added or removed, what flag should we add to git log?**<br>
*ans.* --stat

# Undoing Things

### Undoing Changes Before Committing

- Being able to revert any changes we made is of the most powerful features offered by VCSs. There's a bunch of different techniques available. Sometimes u might find urself in a situation where you've made a bunch of changes to a file but u decided to roll back. This can be done using the <code>git checkout</code> command, followed by name of that file. Keep in mind, this command works for unstaged and modified files.
```Bash
# Discard a change for a unstaged file
git checkout <file>
```

- What if u added some changes to the staging area already> Don't regret, there's a way. We can unstage our changes by using the <code>git reset</code>, followed by **HEAD** then the file name.
```Bash
# Reset a staged file
git reset HEAD <file>
```

- By summarizing it, we can say that to revert a unstaged file, git checkout is used while to unstage a staged one, we can use git reset.

### Amending Changes

- In general, we try to make sure our commits include all the right changes as we intend. But we're all human and we make mistakes. It's not uncommon for us or even a IT specialist to realize that there's something wrong in a recent commit. For example, you had to commit two different files for the same change but unintentionally u staged and committed the first file and left the other one, or may be ur commit context is correct but found that ur commit message isn't that descriptive enough. We can solve such problems using the <code>--amend</code> flag with git commit command.

- When we run **git commit --amend**, Git takes whatever is currently in our staging area and run the commit workflow to overwrite the latest or recent commit. Let's understand this with an example. We'll create a new directory and initiate a Git first:
```Bash
# Initialize Git
$ git init
Initialized empty Git repository in C:/Users/RITUKANTA/Desktop/git-amend/.git/
```
Let's create three files called <code>favorite_foods.log</code>, <code>food_count.py</code>, and <code>food_question.py</code>. I am adding the first file favorite_foods.log in intial commit and will learn how to amend with other two files.
```Bash
# Addedd 3 files, so let's check status
$ git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        favorite_foods.log
        food_count.py
        food_question.py

nothing added to commit but untracked files present (use "git add" to track)




# Stage the favorite_foods.log file
$ git add favorite_foods.log



# Commit
$ git commit -m "Added favorite_foods.log file which contains list of food items"
[main (root-commit) 8f0c6f3] Added favorite_foods.log file which contains list of food items
 1 file changed, 100 insertions(+)
 create mode 100644 favorite_foods.log


# Check again
$ git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        food_count.py
        food_question.py

nothing added to commit but untracked files present (use "git add" to track)


# Check agai after staging the food_count.py file
$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   food_count.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        food_question.py


# Commit for two files but actually one is committted
$ git commit -m "Added two scripts"
[main 2c1febb] Added two scripts
 1 file changed, 53 insertions(+)
 create mode 100644 food_count.py




# Let's fix it
# Stage the food_question.py file too and run "git commit --amend"
# Text editor window will open, where u can edit the commit message and add extra info about ur chage
[main f109ad4] Added two scripts
 Date: Mon Aug 29 19:32:52 2022 +0530
 2 files changed, 85 insertions(+)
 create mode 100644 food_count.py
 create mode 100644 food_question.py
```

# Branching and Merging

# Module 2 Summary