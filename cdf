#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Need exactly two argument" > /dev/stderr
	exit 1
fi

if [[ ! -d $1 ]]; then
	echo "$1 not a directory. Exit" > /dev/stderr
	exit 1
fi

if [[ ! -d $2 ]]; then
	echo "$2 not a directory. Exit" > /dev/stderr
	exit 1
fi

dir1="$1"
dir2="$2"

count_first=$(ls -Al "$dir1" | wc -l)
count_two=$(ls -Al "$dir2" | wc -l)

if [[ count_first -gt count_two ]]; then
	echo "First dir have more files"
elif [[ count_first -eq count_two ]]; then
	echo "Number of files is equal"
else
	echo "Second dir have more files"
fi

exit 0