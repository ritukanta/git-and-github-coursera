**Week 3: Working with Remotes**
<br>

1. [Introduction to GitHub](#introduction-to-github)
1. [Using a Remote Repository](#using-a-remote-repository)
1. [Solving Conflicts](#solving-conflicts)
1. [Module 3 Summary](#module-3-summary)

# Introduction to GitHub

1. [What is GitHub](#what-is-github)
1. [Basic Interaction with GitHub](#basic-interaction-with-github)
1. [Practice Quiz](#practice-quiz-intro-to-github)

### What is GitHub?

- We called out before that Git is a distributed VCS. Distributed means that each devloper has a copy of the whole repo on their local machine. But to use them remotely we can host one of these copies on a server or on an online service called **[GitHub](https://github.com/)**.

- On the top of repo hosting service and VCS functionality of Git, GitHub provides extra features like bug tracking, wikis and task management. It lets us share and access repos on the web and copy them to our local computers, so we can work on them. To use GitHub, the first thing you need to do is create an account, if you don't have one already. Signing up online is free and relatively simple.

- Create here - https://github.com/ <br>
  <br>

![GitHub](../week-3/Images/Screenshot-1.png)

### Basic Interaction with GitHub

- After generating an account on GitHub, we'll create a brand new repo, going step-by-step: we'll start by clicking the <code>New</code>, like this:<br>
  <br>

![New](../week-3/Images/Screenshot-3.png)

- The next window will be the repo creation wizard and the wizard is pretty straightforward. You can go through step-by-step like this:<br>
  <br>

![Repo Creation Wizard](../week-3/Images/Screenshot-4.png)

- Here you can name a new repo name, add description to it, set the repo as private or public, initialize with a README, a gitignore and a license file. After this, the newly created repo will be look like this:<br>
  <br>

![Remote Repo](../week-3/Images/Screenshot-5.png)

- Now we are ready to clone this repo into our computer, by calling <code>git clone</code> followed by the repo URL: <code>git clone https://github.com/[username]/[repo_name].git</code>. It will download a copy of this repo to our machine, this means that we can perform all the git actions and operations that we've learned up till now. If you are using Git Bash, the **git clone** command may ask you a authentication on GitHub to use your account, and if you are using a Virtual Machine or Linux based distro, it will ask the associated account username and password. But putting password will deny because you should use <code>Personal access token</code> instead of account password, create Personal access account here - https://github.com/settings/tokens. For more refer - https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/.

- After making a change of the cloned repo on your, you can add, commit then to push to the remote repo use <code>git push</code>.

### Practice Quiz: Intro to GitHub

1. **When we want to update our local repository to reflect changes made in the remote repository, which command would we use?**<br>
   _ans._ git pull

2. **git config --global credential.helper cache allows us to configure the credential helper, which is used for ...what?**<br>
   _ans._ Allowing automated login GitHub

3. **Name two ways to avoid having to enter our password when retrieving and when pushing changes to the repo.**<br>
   _ans._ Use a credential helper, create an SSH key-pair

4. **Before we have a local copy of a commit, we should download one using which command?**<br>
   _ans._ git clone < URL >

# Using a Remote Repository

1. [What is Remote?](#what-is-a-remote)
1. [Working with Remotes](#working-with-remotes)
1. [Fetching New Changes](#fetching-new-changes)
1. [Practice Quiz](#practice-quiz-using-a-remote-repository)

### What is a Remote?

- When an existing GitHub repository is cloned, we've our local git repo interact with the remote repo. Remote repositories let us contribute to a project from our own workstations making changes to local copies of the project independently of one another.

- To understand remote repos, and Git's distributed nature a bit better, imagine you are working together with some of friends to design a computer game, each of you has a different portion of the game. One person is designing the levels, another the characters and the others are working on graphics, physics and gameplay. All these areas will have to come together into a single place for the final product. You will need to combine everyone's work into your own portion of the project to make sure it is all compatible. Using Git and a Remote Repo, each person can push code and work on the current project independently, and pull to update their local copies, if someone have the outdated loca copy of the remote repo. You will have to pull and fix merge conflicts to get updated. In this way Git and remotes let multiple people work on the same project at the same time. Sometimes you may need to fetch and merge the latest changes manually.

- Hold on! You might think that how multiple devlopers connect to a single remote repo and contribute their work. Well, Git provides a veriety of ways to connect to a remote repository. Some of the common protocols are **HTTP**, **HTTPS** and **SSH**. HTTP lets people only clone the remote repo, but they can't push their changes to it. While HTTPS and SSH both provide permissions to push as well.

### Working with Remotes

- When we clone a remote repo to get a loocal copy, Git sets up that remote repo with the default origin name. We can check that by using <code>git remote -v</code>.

```Bash
$ git remote -v
origin  https://github.com/ritukanta/Git-and-GitHub.git (fetch)
origin  https://github.com/ritukanta/Git-and-GitHub.git (push)
```

- There are two URLs associated with the remote repo. One will be used to fetch data from the remote repo and the other will be for pushing changes to the repo. Remote repos have a name assigned to them, by default, the assigned name is **origin**.

- To get even more info about the remote repo and branches, you can call the <code>git remote show origin</code> in the repo directory.

```Bash
$ git remote show origin
* remote origin
  Fetch URL: https://github.com/ritukanta/Git-and-GitHub.git
  Push  URL: https://github.com/ritukanta/Git-and-GitHub.git
  HEAD branch: week-1
  Remote branches:
    week-1 new (next fetch will store in remotes/origin)
    week-2 new (next fetch will store in remotes/origin)
    week-3 tracked
  Local branch configured for 'git pull':
    week-3 merges with remote week-3
  Local ref configured for 'git push':
    week-3 pushes to week-3 (up to date)
```

- Once you start having more branches, especially different branches in the local and remote repo, this info starts becoming more complex.

- Whenever we're working with remotes, Git uses remote branches to keep copies of the data that is stored in the remote repo. We can have a look at remote branches by running <code>git branch -r</code>.

```Bash
$ git branch -r
  origin/week-3
```

### Fetching New Changes

- As we called out earlier we can call git status to check local repos, we can also use the same for the remote repos. Sometimes the cloned local copy of a remote repo may show as outdated when calling git remote show origin. This is because it is possible that other contributors might already push changes to the remote, but this isn't fetched yet in our local copy. Git doesn't automatically download any changes. Instead you need to call <code>git fetch</code> to download remote changes locally. You can merge the remote branch if the changes seem to be fine.

- Remember **git pull** and **git fetch** are entirely different things. Git pull downloads and merges all the commits to the local copy and in the way it might lead to merge conflicts. But git fetch only downloads the remote branches and changes, where you can review the fetched data to merge or pick certain commits. You can merge all fetched data using <code>git merge FETCH_HEAD</code> or <code>git merge origin/branch_name</code> and pick a commit by calling <code>git cherry-pick commit-ID</code>.

### Practice Quiz: Using a Remote Repository

1. **In order to get the contents of a remote branch without automatically merging, which command should we use?**<br>
   _ans._ git remote update

2. **If we need to find more information about a remote branch, which command will help us?**<br>
   _ans._ git remote show origin

3. **What command will download remote branches from remote repositories without merging the content with your current workspace automatically?**<br>
   _ans._ git fetch

4. **What type of merge creates a new merge commit?**<br>
   _ans._ Explicit merge

5. **What method of getting remote contents will automatically merge the remote branch with the current local branch?**<br>
   _ans._ git pull

# Solving Conflicts

1. [The Pull-Merge-Push Workflow](#the-pull-merge-push-workflow)
1. [Pushing Remote Changes](#pushing-remote-changes)
1. [Rebasing Your Changes](#rebasing-your-changes)
1. [Best Practices for Collaboration](#best-practices-for-collaboration)
1. [Cheat Sheet](#conflict-resolution-cheat-sheet)
1. [Practice Quiz](#practice-quiz-solving)

### The Pull-Merge-Push Workflow

- We've now looked at the details of fetching and pulling data from a remote repository without any local changes. We also know that we can use <code>git push</code> to upload new changes to the remote repository. But what if when we try to push our changes, there are new changes to the remote repo? It would most prolly fail.

- That is because the remote repo contains changes that we don't have in our local branch that Git can't fast-forward. This means we need to sync our local remote branch with the remote repository before we can push. We can do this with <code>git pull</code>.

- Git pull may lead to conflict if there are changes with same lines in same files, this is because git pull tries to merge automatically after syncing the remote branch. One thing to notice is that Git will try to do all possible automatic merges and only leave manual conflicts for us to resolve when the automatic merge fails.

- As we've already known conflicts can be recognised by conflict dividers. So we have to resolve these conflicts even in huge files, so that we can follow the basic git workflow: stage, commit and push as usual. Upon calling git coommit, after resolving conflicts and staging changes, the editor message will say that it is a merge commit and yes, we can add additional texts it too. Together pulling, failing in merge, resolving conflicts, staging and commiting we perform a three-way-merge.

### Pushing Remote Changes

- As we learned before, when using Git to work on a new feature or a big refactor of some kind, it's recommended best practie to create separate branches. For example, it might take you a while to finish a new feature and in the meantime, there could be a critical bug that needs fixing in the main branch, release a new version and then go back to working on your feature without having to integrate your working tree before it's ready.

### Rebasing Your Changes

- Rebasing means changing the base commit that's used for one branch. In case of merging two branches, if only one of the branches has new changes, Git will able to fast-forward and apply the changes. But if both branches have new changes when we try to merge, Git will create a merge commit for the three-way merge.

- The problem with three-way merges is that because of the split commit history, it's hard for someone to debug when an issue is found in the code. So we can rebase before a three-way merge, that will basically ease our way to fast-forward merge and keep the history linear.

- So for rebasing, we run <code>git rebase</code>, followed by the branch that we want to set as the new base. When we do this, Git will try to replay our commits after the latest commit in that branch. This will work automatically if the changes are made in different parts of the files, but will require manual intervention if the changes were made in other files.

### Best Practices for Collaboration

- It's a good idea to always synchronize your branches before starting any work on your own, on a repository. In this way you know that you're stating from most recent version. So that chances of three-way merges and conflicts or need of rebasing are minimized.

- Another common practice is to try and avoid having very large changes that modify a lot of different files. Instead try to make changes as small as possible as long as they're self-contained. This makes it easier to understand what's going on with each commit.

- One of the best practices for collaboration is to create separate feature branches when working on big projects of code. It's good idea to make changes in sepate branch from <code>master</code> branch and test the versions of code before merging back to master. As you should always keep your latest stable version in the feature and the latest version in the master branch, by merging every small changes to it. This reduces chances of merge conflicts.

- Recently we learned that it's good practice to rebase to avoid three-way merges and keep the commit history linear. But you shouldn't use rebasing with the branches that are already pushed to remote repository because rebasing rewrites the commit history and ends up with creating new commits and commit hashes.

### Conflict Resolution Cheat Sheet

- Merge conflicts are not uncommon when working in a team of developers, or on Open Source Software. Fortunately, GitHub has some good documentation on how to handle them when they happen:

  > - https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/about-merge-conflicts
  > - https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/resolving-a-merge-conflict-using-the-command-line

- You can also use [git rebase branchname](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) to change the base of the current branch to be branchname.

- The git rebase command is a lot more powerful. Check out [this link](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History) for more information.

### Practice Quiz: Solving

1. **If you are making changes to a local branch while another user has also made changes to the remote branch, which command will trigger a merge?**<br>
   _ans._ git pull

2. **For which reason, we use rebase instead of merging?**<br>
   _ans._ When we want to keep a linear commit history.

3. **Where should we keep the latest stable version of the project?**<br>
   _ans._ A separate branch from the master branch

4. **Which are some of best practices for collaboration?**<br>
   _ans._ When working on a big change, it makes sense to have a separate a feature branch; always synchronize your branches before starting any work on your own; avoid having very large changes that modify a lot of different things.

5. **What command would we use to change the base of the current branch?**<br>
   _ans._ git rebase < branch-name >

# Module 3 Summary

- Commands and tools we've learned in this module:

```Bash
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

# Rebase
git rebase <branch-name>
```
