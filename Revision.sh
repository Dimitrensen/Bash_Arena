#!/usr/bin/env bash

#Write a script where it will ask the user their age, their first name, last name and what size of underwear they wear
#If the age is under 16, print "You will go to jail"
#If over, "Age is ok you're good to go"
#If the name ends with a "She is a woman", otherwise "He's a man"
#If they are over 18 and male, print "The program is broken" and end script execution
#End script execution with an error: 130
#If underwear size is L print "It is still ok", if XL "Not a chance, you're out", if M "Go all in"


read -p "What is your age? " age
if [[ $age < 16 ]]; then
  echo "You will go to jail"
else
  echo "You are good to go"
fi

read -p "What is your first name? " first_name

read -p "What is your last name? " last_name
if [[ $last_name == *a ]]; then
  echo "She is a woman"
else
  echo "He's a man"
fi
if [[ $age > 18 && $last_name != *a ]]; then
 echo "The program is broken"
 exit 130
fi

read -p "what size of underwear do you wear? " size
if [[ $size == L ]]; then
  echo "It is still ok"
elif [[ $size == XL ]]; then
  echo "Not a chance, you are out"
elif [[ $size == M ]]; then
  echo "Go all in"
fi

#echo "Your name is $first_name $last_name name your age is $age and your undwear size is $underwear"