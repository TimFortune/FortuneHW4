#!/bin/bash

# This Bash script takes 4 command-line arguments to perform various directory and file operations.
#
# Usage: ./simpleAdmin.sh <dir1_name> <dir2_name> <file_name> <link_name>
#
# Example Invocation:
#   ./simpleAdmin.sh myDir1 myDir2 myFile.txt myLink
if [ $# -ne 4 ]; then
	  echo "Usage: ./simpleAdmin.sh <dir1_name> <dir2_name> <file_name> <link_name>"
	    exit 1
fi

# Assign command-line arguments to variables 
dir1_name="$1"
dir2_name="$2"
file_name="$3"
link_name="$4"

# 1. Create a directory in the current working directory using the first argument as the name.
echo "Creating directory '$dir1_name' in the current working directory..."
mkdir "$dir1_name"

# 2. Create a directory inside the directory created in item 1 using the second argument as the name.
echo "Creating directory '$dir2_name' inside '$dir1_name'..."
mkdir "$dir1_name/$dir2_name"

#    write "Hello World!" to it, and save it in the directory created in item 2.
echo "Creating and writing to '$file_name' in '$dir1_name/$dir2_name'..."
echo "Hello World!" > "$dir1_name/$dir2_name/$file_name"

# 4. Create a link from the working directory to the sub-directory created in item 2,
#    and use the fourth argument as the name of the link.
echo "Creating a link '$link_name' to '$dir1_name/$dir2_name' in the current working directory..."
ln -s "$dir1_name/$dir2_name" "$link_name"

# Display completion messages
echo "Actions completed:"
echo "1. Created directory '$dir1_name' in the current working directory."
echo "2. Created directory '$dir2_name' inside '$dir1_name'."
echo "3. Created and wrote to '$file_name' in '$dir1_name/$dir2_name'."
echo "4. Created a link '$link_name' to '$dir1_name/$dir2_name' in the current working directory."








