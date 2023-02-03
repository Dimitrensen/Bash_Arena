#Write the script that renames files based on the file extension.
#Next,It should ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter,the current date will be used. Otherwise,whatever the user entered will be used as the prefix. 
#Next,it should display the original file name and new name of the file. Finally,it should rename the file.

today=$(date +"%Y-%m-%d")

read -p "Enter the prefix (press enter for $today): " prefix

prefix=${prefix:-$today}

for file in *; do
extension="${file##*.}"
  if [[ $extension ]]; then
# Construct the new file name
new_file="$prefix-$file"

# Display the original and new file names
echo "Renaming $file to $new_file"

# Rename the file
mv "$file" "$new_file"
fi
done