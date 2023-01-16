#!/usr/bin/env bash

#make a script that reads an array of words and outputs if they start with a or end with b

myArray=("Abath" "Kurva" "Acab")

for str in ${myArray[@]}; do
  echo $str
done

word="Abath" "Kurva" "Acab"

if [[ $word = a* || *b ]]
then
  echo "Starts with a or ends with b"
else
  echo "No match"
fi

#[[ $a == z* ]]   # True if $a starts with a "z" (wildcard matching).
#[[ $a == "z*" ]] # True if $a is equal to z* (literal matching).