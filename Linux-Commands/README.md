![Linux Logo](../Logo/Linux_logo.png)<br>

### Linux and Distro Command Line Tools
```Bash
#! /usr/bin/bash

# U can not master these commands until u use them



# To see list of files or directory, use:
ls


# To see hiden files and hiden directories
la


# Show r-w-x(read-write-execute persions of files and folders in a directory)
ls -l


# Show permissions of hiden files and folders
ll


# Clear the terminal
clear


# To create a file, use touch with the fine name with extension
touch Filename


# Create a folder or directory
mkdir Foldername


# To re-direct to home directory, cd stands for current change directory
cd


# Move to a folder, can't use with files as files aren;t directories of course
cd Foldername



# Go back one directory
cd ..


# Go back 2 dirs
cd ../..


# Delete a file
rm Filename


# Delete a Folder or Directory
rm -rf Foldername


# To give execute permission to a executable file
chmod +x Filename


# Rename a file or folder
mv Old_Filename New_Filename

mv Old_Foldername New_Foldername



# Move a file or folder to another directory
mv Filename /home/Users/xxx/yyy/Target_Directory


# Copy a file to another dir
cp Filename /home/Users/xxx/yyy/Target_Directory


# Copy a folder or directory to another
cp -r Filename /home/Users/xxx/yyy/Target_Directory


# To see present working directory
pwd


# To edit a file, 
nano Filename



# Show the file content
cat Filename



# Find a certain file within any directory
find Filename



# Execute multiple commads using "&&" in between, like:
ls && clear && rm Filename && mkdir New_Folder