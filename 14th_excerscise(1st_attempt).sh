#Write the shell script that renames all files in the current directory that end in “.jpg” to begin with today’s date in the following format: YYYY-MM-DD. For example, if a picture of my cat was in the current directory and today was October 31,2016 it would change name from “mycat.jpg” to “2016–10–31-mycat.jpg”.

rename () {

for file in *; do
mv "$file"

if [[ $file == *.jpg ]]; then

"2022-02-03-$file";
else
:
fi

done
}