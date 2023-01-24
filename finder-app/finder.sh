#!/bin/bash

filesdir=$1
searchstr=$2

if [[ -z $filesdir || -z $searchstr ]]
then
	echo "required paremeters were not specified"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "input parameter $filesdir does not represent a directory on the file system"
fi



nfiles=$(ls -F $filesdir | grep -v / -c)
nmatchinglines=$(grep -rs $searchstr $filesdir | wc -l)

echo "The number of files are $nfiles and the number of matching lines are $nmatchinglines"
