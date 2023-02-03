#Write the shell script that displays one random number on the screen and also generates a system log message with that random number.Use the “user” facility and “info” facility for your messages.

#number=$RANDOM
#echo "The random number is: $number"
#logger -p user.info "The random number is: $number"

#Modify the previous script to that it uses a logging function. Additionally, tag each syslog message with “randomly” and include process ID. Generate a 3 random numbers.

log_random_number() {
local number=$1
logger -t "randomly" -p user.info "Process ID: $$, Random number: $number"
}

for i in {1..3}; do
number=$RANDOM
echo "The random number is: $number"
log_random_number $number
done