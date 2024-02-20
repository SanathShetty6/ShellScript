#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:
Description:
Sample input:
Sample output:
doc
read -p "Enter the year:" num
if [ `expr num % 4` -eq 0 ]
then
    if [ `expr num % 100` -ne 0 ]
    then
	echo "It is leap year"
    elif [ `expr num % 400` -eq 0 ]
    then
	echo "It is century leap year"
    else
	echo "It is not century leap year but century year"
fi
fi

