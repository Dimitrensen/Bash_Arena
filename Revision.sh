#!/usr/bin/env bash

#Write a script where it will ask the user their age, their first name, last name and what size of underwear they wear
#If the age is under 16, print "You will go to jail"
#If over, "Age is ok you're good to go"
#If the name ends with a "She is a woman", otherwise "He's a man"
#If they are over 18 and male, print "The program is broken" and end script execution
#End script execution with an error: 130
#If underwear size is L print "It is still ok", if XL "Not a chance, you're out", if M "Go all in"


read -p "What is your name? " name
read -p "What is your age? " age

echo "Your name is $name and your age is $age"