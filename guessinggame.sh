##!/usr/bin/env bash
# File: guessinggame.sh
# By Maria-Theresia Apoloner

function count_files {
	local files_in_folder=0
	files_in_folder=$(ls | grep . -c)
	echo $files_in_folder
}

my_file_count=$(count_files)

response=0

# This is the Loop
while [[ $response -ne $my_file_count ]]
do 
	echo "How many files are in the current directory?"
	read response
	# This is the If
	if [[ $response -lt $my_file_count ]]
	then
		echo "There are more files than you think"
	elif [[ $response -gt $my_file_count ]]
	then
		echo "There are less files than you think"
	fi
done

echo "The number of files is $my_file_count. Congratiulations, your guess is correct!"
