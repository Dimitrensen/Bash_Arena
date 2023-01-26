#!/usr/bin/env bash

#Modify the previous script to accept an unlimited number of files and directories as arguments.

for file_name in "$@"; do
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
done
