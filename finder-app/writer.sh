#!/bin/bash

writefile=$1
writestr=$2

if [[ $# -lt 2 ]]
then
	echo "mandatory arguments not found"
	exit 1
fi

mkdir -p "$(dirname $writefile)" && touch $writefile

if [[ ! $? -eq 0 ]]
then
	echo "unable to create file"
	exit 1
fi

echo $writestr >> $writefile
