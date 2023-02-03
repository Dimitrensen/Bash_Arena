#!/usr/bin/env bash

#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file.
#Also perform an ls command against the file or directory with the long listing option.

read -p "What is the name of your file or directory?" file_name

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