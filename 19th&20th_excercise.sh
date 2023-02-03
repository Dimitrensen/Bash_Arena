#Write a shell script that exits on error and displays command as they will execute, including all expansions and substitutions. Use 3 ls command in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be executed.

set -x
#"set -ex" is a command in Bash that enables the "xtrace" (or "set -x") option, which prints each command that is executed, along with its arguments and expanded values, to standard error. The "e" option in "set -ex" means to exit immediately if a command returns a non-zero exit status, so it's a combination of xtrace and errexit options.

#Using "set -ex" is often used for debugging purposes, as it provides detailed information about what commands are being executed and their results.
ls
ls fumak
ls

set -ex
ls
ls fumak
ls


#Modify the previous exercise so that script continuous, even if an error occurs. This time, all three ls command will execute.