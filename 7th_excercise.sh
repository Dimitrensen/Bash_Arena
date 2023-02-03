#!/usr/bin/env bash

#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file.
#Also perform an ls command against the file or directory with the long listing option.

file_name="file.txt"

#Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.

if [ -e $file_name ]; then
  echo "$file_name exists"
else
  echo "$file_name does not exist"
fi

if [ -f $file_name ]; then
  echo "$file_name is a regular file"
else
  echo "$file_name is not a regular file"
fi

if [ -d $file_name ]; then
  echo "$file_name is a directory"
else
  echo "$file_name is not a directory"
fi