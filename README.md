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

# Undoing Things

# Branching and Merging

# Module 2 Summary