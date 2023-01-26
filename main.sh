#!/usr/bin/env bash

#Modify the previous script to accept an unlimited number of files and directories as arguments.

for argument in "$@"; do
  if [ -e "$argument" ]; then
    echo "$argument exists"
  else
    echo "$argument does not exist"
  fi
  if [ -f "$argument" ]; then
    echo "$argument is a regular file"
  else
    echo "$argument is not a regular file"
  fi
  if [ -d "$argument" ]; then
    echo "$argument is a directory"
  else
    echo "$argument is not a directory"
  fi
done