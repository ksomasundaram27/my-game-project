#!bash

a=$(pwd)
echo "Current working directory: $a"
number_of_files=$(find $a -type f | wc -l)

echo "Please guess the correct number of files"
read response
check=0
while [ $check -ne 1 ]
do
	if [ $response -eq $number_of_files ]
	then
		echo "Congratulations!! $1 is the correct number of files"
		check=1
	else
		echo "Please guess the correct number of files"
		read response
	fi
done
