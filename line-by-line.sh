#!/bin/bash

line-by(){
totalLines=`cat $1 | wc -l | sed 's/ //g'`
for i in `seq 1 $totalLines`; 
do
	sed "${i}q;d" $1  >> $2
done
}

source=$1
dest=$2
line-by $source $dest
