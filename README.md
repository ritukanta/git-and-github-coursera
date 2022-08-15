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
1. [Practice Quiz](#practice-quiz)
<br>

# Course Intro

- This course focuses on how to keep track of the different versions of ur code and configuration files using <code>Version Control System</code> or <code>VCS</code>.

- In ur programming and automation, VCS allows us to easily roll back or revert when mistakes take place and also helps us colloborate with other fellow programmers. Here, we're about to learn a popular VCS called <code>Git</code> and how to use it to manage ur configuration files and maintain source code of ur programms and scripts.

- We'll also go through how to setup an account with the service called <code>[GitHub](https://github.com/ "GitHub" )</code>, where u can create ur very own remote repositories to store ur code and configurations.

- **Instructor:** Kenny Sulaimon, Technical Program Manager for Android System Health and Velocity, Google.

- **Pre-requisites:** Should've familiarity with a few basic operating system concepts like files, directories and file systems. U should also be familiar with basic <code>Linux</code> commands and basic syntax knowledge of <code>Python</code>, as we're going to use Pythpn script example throught this course. It is **super important** to know basic Linux commands that we're going to use. Without knowing them, u can't even learn any basics of Git.

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

- But it's just us, human eyes, take time to spot and understand the difference and tend to make mistakes in the way. Fortunately, there is a better way for computers, called <code>diff</code> command line tool. It takes two files and find the differences in a few formats.




# VCSs
# Using Git
# Practice Quiz