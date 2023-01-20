#!/usr/bin/env bash

#Write a shell script that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with each appearing on a separate line. Try to do this in as few lines as possible.

myArray=("man" "bear" "pig" "dog" "cat" "sheep")

for str in ${myArray[@]}; do
  echo $str
done