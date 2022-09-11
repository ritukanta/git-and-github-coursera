**Week 3: Working with Remotes**
<br>

# Introduction to GitHub

### What is GitHub?

- We called out before that Git is a distributed VCS. Distributed means that each devloper has a copy of the whole repo on their local machine. But to use them remotely we can host one of these copies on a server or on an online service called **[GitHub](https://github.com/)**.

- On the top of repo hosting service and VCS functionality of Git, GitHub provides extra features like bug tracking, wikis and task management. It lets us share and access repos on the web and copy them to our local computers, so we can work on them. To use GitHub, the first thing you need to do is create an account, if you don't have one already. Signing up online is free and relatively simple.

- Create here - https://github.com/ <br>
  <br>

![GitHub](../Week-3/Images/Screenshot-1.png)

### Basic Interaction with GitHub

- After generating an account on GitHub, we'll create a brand new repo, going step-by-step: we'll start by clicking the <code>New</code>, like this:<br>
  <br>

![New](../Week-3/Images/Screenshot-3.png)

- The next window will be the repo creation wizard and the wizard is pretty straightforward. You can go through step-by-step like this:<br>
  <br>

![Repo Creation Wizard](../Week-3/Images/Screenshot-4.png)

- Here you can name a new repo name, add description to it, set the repo as private or public, initialize with a README, a gitignore and a license file. After this, the newly created repo will be look like this:<br>
  <br>

![Remote Repo](../Week-3/Images/Screenshot-5.png)

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

# Solving Conflicts

# Module 3 Summary
