#!/usr/bin/env bash

#make a script that reads an array of words and outputs if they start with a or end with b

myArray=("Abath" "Kurva" "Acab")

for str in ${myArray[@]}; do
  echo $str
if [[ $str == A* ]]
then
  echo "Starts with A"
fi

if [[ $str == *b ]]
then
  echo "Ends with b"
fi
done