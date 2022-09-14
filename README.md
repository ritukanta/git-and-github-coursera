**Week 3: Working with Remotes**
<br>

# Introduction to GitHub

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

# Module 3 Summary
