#!/usr/bin/env bash

#generate random numbers if the number is above 23 append them to a file

number=$RANDOM
#or $1

if [[ $number > 23 ]]; then
echo $number >> file.txt
fi