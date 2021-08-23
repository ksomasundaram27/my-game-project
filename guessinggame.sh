#!bash

#Function to return the path of the current working directory
function directorypath {
	a=$(pwd)
	echo $a
}

dirpath=$(directorypath)
filesnum=$(find $dirpath -type f | wc -l)
echo $dirpath

# Code requesting input from the user for the first time before evaluation
echo "Please guess the correct number of files"
read response
check=0

#Loop logic with conditional check to confirm if the input provided by the user matches the filecount
while [ $check -ne 1 ]
do
	if [ $response -eq $filesnum ]
	then
		echo "Congratulations!! $response is the correct number of files"
		check=1
	else
		echo "Please guess the correct number of files"
		read response
	fi
done
