#!/bin/bash
	DAYOFWEEK=$(date +"%u")
	echo "Day of week :$DAYOFWEEK"
	
	if [ $DAYOFWEEK -gt 5 ]
	then
	        echo "Weekoff.. :)"
		exit
	fi
	
	echo "Weekday"
