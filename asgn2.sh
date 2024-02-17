#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:30/01/2024
Description:Read 'n' and generate a pattern given below(number increasing from top to bottom
Sample input:Enter the number:4
Sample output:1
              2 3
              4 5 6
              7 8 9 10
doc
read -p "Enter the number:" num    #Enter the input for num
count=0                            #Set count equal to 0
for row in `seq $num`              #Read the input
do
    for col in `seq $row`          #Read the row input
    do
	count=`expr $count + 1`    #Add count with value 1
	echo -n " $count"          #Print Count output
    done
    echo
done
