#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:30/01/2024
Description:Read 'n' and generate pattern given below (numbers increment left to right)
Sample input:Test Case 1:Enter the number: 4
             Test Case 2:Enter the number: 2
Sample output:Test Case 1:
1
1 2
1 2 3
1 2 3 4
Test Case 2:
1
1 2
doc
read -p "enter the number" num #Enter the input for num
for row in `seq $num`       #Read the input
do
    for col in `seq $row`   #Read the Row input
    do
	echo -n "$col"      #Print the Column output
    done
    echo 
done
