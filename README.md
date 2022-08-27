**Introduction to Git and GitHub**<br>
**Source** - [Git and GitHub](https://www.coursera.org/learn/introduction-git-github/)<br>
Total duration - 4 Weeks<br>
Total no. of Module Assessments - 4<br>
<br>

**Week 1: Intro to Version Control System or VCS**<br>
1. [Course Intro](#course-intro)
1. [Before Version Control](#before-version-control)
1. [VCSs](#vcss)
1. [Using Git](#using-git)
1. [Module 1 Graded Assessment](#module-1-graded-assessment)
<br>

# Course Intro

- This course focuses on how to keep track of the different versions of ur code and configuration files using <code>Version Control System</code> or <code>VCS</code>.

- In ur programming and automation, VCS allows us to easily roll back or revert when mistakes take place and also helps us colloborate with other fellow programmers. Here, we're about to learn a popular VCS called <code>Git</code> and how to use it to manage ur configuration files and maintain source code of ur programms and scripts.

- We'll also go through how to setup an account with the service called <code>[GitHub](https://github.com/ "GitHub" )</code>, where u can create ur very own remote repositories to store ur code and configurations.

- **Instructor:** Kenny Sulaimon, Technical Program Manager for Android System Health and Velocity, Google.

- **Pre-requisites:** Should've familiarity with a few basic operating system concepts like files, directories and file systems. U should also be familiar with basic <code>Linux</code> commands and basic syntax knowledge of <code>Python</code>, as we're going to use Pythpn script example throught this course. It is **super important** to know basic Linux commands that we're going to use. Without knowing them, u can't even learn any basics of Git.
> - Have ur head around these Linux command line tools - https://github.com/ritukanta/Git-and-GitHub/tree/week-1/Linux-Commands

### Installation

- For that, Python interpreter and Git Bash should've been installed on ur Machine. Though installing Python is pretty easy, u can follow any methods online, feel free to do that, I'll provide the complete installation method of <code>Git Bash</code>.

- **For Linux and Distros:** If u are running on  a Linux distributions: Ubuntu, Fedora, Cent OS, Arch etc., u may have the package management system, u can use <code>apt</code>, <code>yum</code> package manager. Before that u should check whether <code>git</code> is installed already with the command called <code>git --version</code> on the terminal. If u get an error or a message that git version is older u can install the current git version by: <code>apt install git</code> or <code>yum install git</code> (<code>su</code>, or <code>root</code> users should use <code>su</code> commands. Umm u know if u know). Now, u are ready to use it. Here is the documentation: https://git-scm.com/download/linux .
```Bash
# For apt package manager
apt install git
# for su users
sudo apt install git



# For yum package manager
yum install git
# for su users
sudo yum install git
```


- **For MacOS:** For MacOS with [HomeBrew](https://brew.sh/), install git as: <code>brew install git</code> and with [MacPorts](https://www.macports.org/), use: <code>sudo port install git</code>. For full information, refer https://git-scm.com/download/mac .
```Bash
# For HomeBrew
brew install git

# For MacPorts
sudo port install git
```

- **For Windows:** We're going to install Git on Windows, we'll dive into different options that u can select or u can and what they all mean. We'll start downloading the latest version of the software from https://gitforwindows.org/  or   https://git-scm.com/download/win . This software comes with <code>Bash Emulation Environment</code>, where we can run all the Git commands and a bunch of Linux and Unix commands. This bundle also includes a graphical user interface(UI) to interact with Git.

> - All right, we've downloaded the file, let's get installed now. After double clicking it or after running it as Adminstrator, the first window we get is the **License** of the software. Git is released under the <code>GPL version 2 license(GNU General Public License)</code>, which is a free software license.
> - Accept the license and continue the setup. The very second window we get is installation path, keep it as is.
> - The third window lets us select additional components, select as per ur requirements.
> - The next window lets us select one of the many text editors, like Sublime text, NotePad ++, GNU Nano editor etc. Select one and step forward. But heads up, these editors are not installed within this bundle, u have to install on ur own. I'm goint to use Nano editor here. Like the following:<br>
> - Likewise u can modify the upcoming windows in this installation process by reading on-screen text. I'm providing my screenshots how I've installed, in the /images directory.

# Before Version Control

### Intro to Module 1

- It's super important to have detailed historical information of ur configuration files and source code u're working on. Git does that properly. It also provides the documentation of ur code history so that ur fellow coders or future collaborators can know why the change has been made, and how does it work.

- Git stores the historical copies of ur code that helps to know what were the changes u made and also helps in reverting back if the latest changes have some bugs.

### Diffing Files

- Say u've two files of some code and u want to check the difference between them, Checking difference means if there a few lines are added or removed from the previous file. What will u do to find the difference? Of course, u'll open those files using a text editor side by side and try to spot added lines or removed lines.

- But it's just us, human eyes, take time to spot and understand the difference and tend to make mistakes in the way. Fortunately, there is a better way for computers, called <code>diff</code> command line tool. It takes two files and find the differences in a few formats. Let's check an example: we've two files, <code>rearrange1.py</code> and <code>rearrange2.py</code> which contain two different versions of the same function. We can see the content of the files using <code>cat</code> command: <code>cat rearrange1.py</code> and <code>cat rearrange2.py</code> and can find the difference but that won't be super obvious. So we have to use diff: <code>diff rearrange1.py rearrange2.py</code>, upon this command the result on the terminal is:
```Bash
$ diff rearrange1.py rearrange2.py
7c7
<     result = re.search(r"^([\w .]*), ([\w .]*)$", name)
---
>     result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
```

- When we call the diff commmand, we get only the lines that are different between two files. In the above diff result, there 2 comparators: < and >. The <code><</code> tells us that this was removed and the <code>></code> tells that this line was added in second file. In simple words the old line got replaced by the new one. There is also a line called <code>7c7</code>: the first 7 indicates that it is the line number 7 from the first file and another 7, yeah u guessed it, it is from second file and <code>c</code> stands for <code>changed</code>. If there was a line that was added, <code>c</code> would be replaced by <code>a</code>, stands for <code>added</code>. For deletion, <code>d</code> is written in diff tool.

- For a better view of diff result, we use <code>diff -u old_file new_file</code>:
```Bash
$ diff -u *1.py *2.py
--- rearrange1.py       2022-08-15 18:26:35.209332500 +0530
+++ rearrange2.py       2022-08-15 18:29:17.093762000 +0530
@@ -4,7 +4,7 @@


 def rearrange_name(name):
-    result = re.search(r"^([\w .]*), ([\w .]*)$", name)
+    result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
     if result == None:
         return result
     return "{} {}".format(result[2], result[1])
```

- In this unified format, we can better understand the contexts of the diff result. Here <code>-</code> sign is used for lines that were removed while <code>+</code> sign is used for lines that are added.
```Bash
# use diff -u in general
diff -u old_file new_file
```

### Applying Changes(Patching)

- In the last one, we've seen how to see the difference using diff tool. Now we can store that diff value in a file. We do that by: <code>diff -u oldfile newfile > change.diff</code>. As a reminder, the greater than sign redirects the output of the diff command to a file called <code>change.diff</code>. This command save the file with extension .diff storing the diff result:
```Bash
$ cat change.diff
--- rearrange1.py       2022-08-15 18:26:35.209332500 +0530
+++ rearrange2.py       2022-08-15 18:29:17.093762000 +0530
@@ -4,7 +4,7 @@


 def rearrange_name(name):
-    result = re.search(r"^([\w .]*), ([\w .]*)$", name)
+    result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
     if result == None:
         return result
     return "{} {}".format(result[2], result[1])
```

- This diff file is really useful to patch differences to a new file. Suppose u got a new diff or patch file, and u need to apply the changes provided in that file to ur working file, for that use: <code>patch ur_file_name < file.diff</code> or <code>patch ur_file_name < file.patch</code>.

### diff and patch Cheat Sheet

- **diff -u:** diff -u is used to compare two files, line by line, have the differing lines compared side by side in the same output.

- **patch:** Patch is useful for applying the file differences.

### Practice Quiz: Before Version Control

1. Ur colleague sent u a patch called fix_names.patch, which fixes a config file called fixes_names.conf. What command would u need to run to apply the patch to the config file?<br>
*ans.* **patch fixes_names.conf < fix_names.patch**<br>

2. U're helping a friend with a bug in a script called fix_permissions.py, which fixes the permissions of a bunch of files. To work on the file, u make a copy and call it fix_permissions_modified.py. What command do u need to run after solving the bug to send the patch to ur friend?<br>
*ans.* **diff -u fix_permissions.py fix_permissions_modified.py > fix_permissions.patch**<br>

3. The ________ command highlights the words that chnaged in a file instead of working line by line.<br>
*ans.* **wdiff**<br>

4. How can we choose the return value in our script returns when it finishes?<br>
*ans.* **Using the exit command from sys module**<br>

5. In addition to the original files, what else do we need before u can use the patch command?<br>
*ans.* **Diff or Patch file**
<br>

# VCSs

### What is a Version Control System(VCS)

- The tools we learned recently are really useful. But most of the time, we don't be using them directly. Instead, we'll use them through a Version Control System or VCS. A VCS keeps track of the changes back to the original files.

- By using a VCS, we can know when the changes were made and who made them, even why made them. It also lets us easily revert a chnage if it turned out not to be a good idea.

### Version Control and Automation

- A **VCS** can invaluable, even in a one-persion IT department. It can help even if u don't need to share ur scripts or collaborate on them with others.

- A **VCS** can function a lot like a time machine, giving u insights into the decisions of the past. Whenever u write a <code>commit message</code>, after making change, it's as if the current version of urself is explaining ur decisions to a future you or others who might work on the same scripts and configs in the future.

### What is Git?

- Git is a VCS created in __2005__ by __Linus Torvalds__, the developer who started in __Linux Kernel__.

- Git is a free <code>Open Source System</code> available for installation on __UNIX__ based platforms, __Windows__ and __MacOS__. It was originally created to get help to manage developing the Linux Kernel.

- Git is now one of the most popular VCSs and is used in millions of projects. Git has a distributed architecture, this means that every person contributing a **repository** has a full copy of it on their own development machines.

- Collaborators can contribute and pull in changes that others have made as they need. And because the repositories are all local to the computer being used to create the files, most operations can be done really fast. Git doesn't rely on any kind of **centralized server** to provide control organizations to its workflow.

- Git can work as stand alone program as a server and as a client. This means that u can use Git on a single machine without even having a **network connection**.

- Git clients can communicate with Git servers over the network using <code>HTTP</code>, <code>SSH</code> (Secure Shell) or Git's own special protocol. U can use it for small projects with like one developer or huge projects with thousands of contributors, on a public server like **Github**, **Gitlab** or others.

- In case u didn't know, the official portal for Git is: https://git-scm.com. And wonder what does SCM stands for? It's actually **Source Control Management**, just another acronym of Version Control System or VCS.

### More Information About Git

- Checkout the following sites for more information about Git:<br>
<br>

> https://git-scm.com/doc<br>

> https://www.mercurial-scm.org/<br>

> https://subversion.apache.org/<br>

> https://en.wikipedia.org/wiki/Version_control<br>

### Practice Quiz: Version Control

1. **How can a VCS (Version Control System) come in handy when updating your software, even if you’re a solo programmer?**<br>
*ans.* Git retains local copies of repositories resulting in fast operations; if something breaks due to a change, u can fix the problem by reverting to a working version before the change; Git allows u to review the history of ur project.

2. **Who is the original creator and main developer of the VCS too Git?**<br>
*ans.* Linus Torvalds

3. **___________ is a feature of software management system that records changes to a file or set of files over time so that u can recall specific versions later.**<br>
*ans.* Version Control

4. **A ________ is a collection of edits which has been submitted to the VCS for safe keeping.**<br>
*ans.* Commit

5. **Within a VCS, project files are organized in centralized locations called ____________ where they can be called upon later.**<br>
*ans.* Repositories


# Using Git

### First Steps with Git

- When starting with Git, there are a bunch of concepts that we need to learn to understand how things are organized and how files are tracked.

- Remember when we said that a VCS can track who made which changes in a repository, for getting this work, we've to tell Git **who we're**. This can be done by using <code>git config</code> command then setting up the values of <code>user.email</code> and <code>user.name</code> to ur email and name, associated with ur **Github account** like this:
```Bash
# for email
git config --global user.email "me@example.com"

# for name
git config --global user.name "My name"
```

- We use the <code>--global</code> flag to indicate that we want to use these values for all git repos that we'd use. We can also set different name and email values for different repos.

- That being said, there are two ways to start working with a git repo: **(i)** we can initialize one from scratch in any directory using the <code>git init</code> command; **(ii)** we can clone a copy of a public repo that already exists somewhere else, using the <code>git clone</code> command:
```Bash
$ mkdir checks

RITUKANTA@Ideapad MINGW64 ~/Desktop/git
$ cd checks

RITUKANTA@Ideapad MINGW64 ~/Desktop/git/checks
$ git init
Initialized empty Git repository in C:/Users/RITUKANTA/Desktop/git/checks/.git/
```

- After a proper installation of git bash, lunch its terminal to create empty directory **checks**. We receive a message after initializing git in a empty directory as:
```Bash
Initialized empty Git repository in /home/users/name/dir_name/xxxx/.git
```

- After initiating Git, a hidden directory is formed called <code>.git</code>. Hidden files and folders are listed using the <code>la</code> command.

- We can also use <code>ls -l .git</code> command to look inside of it and see the different things it contains. This is known as Git directory. You can think of it as a database for ur repo that stores changes and changes history. .git contains a bunch of different files and folders. We won't touch any of these files directly, we'll always interact with them thru Git commands.

- So whenever we clone a repo, the Git directory is copied to ur computer. And when we run <code>git init</code> to create a new repo like we just did, a new Git repo is initialized. The area outside the Git directory is called the <code>working tree</code>. The working tree is the current version of ur project.

- The working tree will contain all files that are not added yet to the list of <code>track files</code>. Right now our working tree is empty. Suppose we copy a file called <code>disk_usage.py</code> to the working tree but it's currently untracked by Git. To make Git track our file, we'll use the <code>git add</code> command passing the file name as a parameter: **git add disk_usage.py**. With that done, we've added our file to the staging area. The <code>staging area</code> which is also known as the <code>index</code> is a file maintained by Git that contains all of the info about what files and changes are going to be changed in ur next commands.

- We can use the <code>git status</code> command to get info about the current working tree and pending changes. U can utilize these commands on ur own. Try it, it works. For working tree of tracked files, git status output be like:
```Bash
# git status before adding the file to staging area 
$ git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        disk_usage.py

nothing added to commit but untracked files present (use "git add" to track)


# git add <file>
$ git add disk_usage.py


# git status after adding the file to track files
$ git status
On branch main

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   disk_usage.py
```

- We can see that our new file is yet to be <code>committed</code>, this means our change is currently in the staging area. To get it committed, the <code>git commit</code> command is used. This command opens a text editor where u need to write a <code>commit message</code>. You can select ur prefered editor while installing the git bash. Let's enter a simple description of what we did and that the change to be committed is the <code>new file</code> we recently staged or git added. That's being done, we've created our first ever commit.

### Tracking Files

- So far we got to know that a Git repository consists of: <code>the Git directory(.git)</code>, <code>the working tree</code> and <code>the staging area</code>. The Git directory contains the history of all the files and changes. The working tree has the staged and committed files and the staging area contains the changes that have been marked to be included in the very next commit, we're going to do.

- Each time we make a commit, Git stores a new snapshot of the state of ur current version of ur project. Combining these snapshots, history of ur repo is formed that get stored in the Git directory.

- Each file or directory in our working tree can either be <code>tracked</code> or <code>untracked</code>. And each track file may be one of the three states: <code>staged</code>, <code>modified</code>, or <code>committed</code>.

- If a file is in modified state, it clearly means that we've made changes to it. It is possible that this file was staged or committed with a different snapshot before we made the modification. This modification can be adding, modifying or deleting the file content. Git notices everytime we make a change to our file, won't store any changes until we add it to the <code>staging area</code>.

- So the next step is to stage previous chnages. after staging, the changes to those files become ready to be committed. To unstage a staged file, we can use: <code>git rm --cached < file ></code>.
```Bash
# Initialize Git in a directory
git init

# Clone a repo to the local machine
git clone <git-repo-url>

# check working tree status
git status

# Stage or add 
git add <file>

# Commit staged files
git commit




# Upon 'git commit' command, ur default text editor opens and seems the following:
  GNU nano 6.4                                                                C:/Users/RITUKANTA/Desktop/git/checks/.git/COMMIT_EDITMSG                                                                 Modified

Added disk_usage.py


# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch main
#
# Initial commit
#
# Changes to be committed:
#       new file:   disk_usage.py
#




# Unstage the staged file
git rm --cached <file>
```

### Basic Git Workflow

- As we got to know we can't stage or commit a change until git is initiated. To checkout the current configuration by using <code>git config -l</code>, the following output is found:
```Bash
$ git config -l
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
core.autocrlf=input
core.fscache=true
core.symlinks=true
core.fsmonitor=true
core.editor=nano.exe
pull.rebase=false
credential.helper=manager-core
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=main
user.email=reddyritukanta1925@gmail.com
user.name=ritukanta
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
core.longpaths=true
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
```

- There is a bunch of info but we won't cover all of it. Pay special attention to the <code>user.email</code> and <code>user.name</code> lines, which we've touched on briefly previously. This info will apper in commit logs if u are using a shared or public repo.

- Calling git commit with no parameters launches a text editor, to enter a commit message. In case u didn't notice that in the editor lines starting a hash(#) are not going to be included in the commit message. And we need to add new lines in order to show additional info about ur commit. But commit a change without even open a text editor, we need to use the <code>-m</code> flag followed by the short commit message between double quotes.
```Bash
# Commit with '-m' flag
git commit -m "Commit Message"

# Git config info:
git config -l


# to view commit history
git log
```

### Anatomy of a Commit Message

- Writting a clear informative commit message is super significant when using a VCS, future you or other contributors who might read the commit message and find it contextually informative. So how does a good commit look like?

- A commit message is generally broken into a few sections. The first line is short summary of the commit followed by a blank line. And this is followed by full description of the changes with details.

### Practice Quiz: Using Git

1. **Before changes in new files can be added to the Git directory, what command will tell Git to track our file in the list of changes to be committed?**<br>
*ans.* git add

2. **Which command would we use to review the commit history for our project?**<br>
*ans.* git log

3. **What command would we use to make Git track our file?**<br>
*ans.* git add

4. **Which command would we use to look at our config?**<br>
*ans.* git config -l

5. **Which command would we use to view pending changes?**<br>
*ans.* git status

# Module 1 Graded Assessment