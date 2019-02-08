#!/bin/bash

readFile(){
if [ ! -f $1 ]
	then 
	echo "File does not exists"
	exit
fi

fileLines=`cat $1 | wc -l | sed 's/ //g'`
if [[ $2 -gt fileLines ]]
	then 
	echo "The input lines exceeds the total lines in the file"
	exit
fi

echo `head -$2 $1`
}

file=$1
line=$2
readFile $file $line
