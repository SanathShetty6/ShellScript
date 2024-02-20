#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:
Description:
Sample input:
Sample output:
doc
for row in `seq 5 -1 1`
do 
    for space in `seq $((5 - $row))`
    do
	echo -n "  "
    done
	for col in `seq $row`
	do
	    echo -n "* "
	done
	echo
    done

   

