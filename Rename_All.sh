#List all files within the current directory
#Iterate through the list names
#Check if it's a file
#If they start with God- then rename

FILE_NAMES=($(ls))

for file_name in "${FILE_NAMES[@]}"; do

#if [ -f "$file_name" ]; then
#fi

if [[ $file_name == God-* ]]; then
echo $file_name
new_file_name=$(echo $file_name | sed 's/God-*//g')
echo $new_file_name
echo good_hope
mv "$file_name" "$new_file_name"
fi
done


#for var in "${ArrayName[@]}"
#do
#  echo "${var}"
  # do something on $var
#done