#Write the shell script that displays one random number on the screen and also generates a system log message with that random number.Use the “user” facility and “info” facility for your messages.

number=$RANDOM

echo "The random number is: $number"
logger -p user.info "The random number is: $number"