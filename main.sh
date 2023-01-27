#!/usr/bin/env bash

#Write a shell script that accepts a file or directory name as an argument. 
#Have the script report if it is reguler file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

for file_name in "$@"; do

if [ -d $file_name ]; then
  echo "$file_name is a directory"
exit 1
else
  echo "$file_name is not a directory"
fi

if [ -f $file_name ]; then
  echo "$file_name is a regular file"
else
  echo "$file_name is not a regular file"
exit 2
fi
done