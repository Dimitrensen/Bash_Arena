#Create the start-up script for an application start and stop.

# Start the application
./God-16th_excercise.sh

# Store the process ID
pid=$!

# Wait for the process to complete
wait $pid

# Check the exit status
exit_status=$?

if [[ $exit_status == 0 ]]; then
  echo "Application started successfully"
else
  echo "Application failed to start"
fi