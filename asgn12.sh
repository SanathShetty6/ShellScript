#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:01/02/2024
Description:Write script to print contents of file from given line number to next given number of lines.
Sample input:
1. ./print_lines.sh 5 3 myfile.txt
2. ./print_lines.sh myfile.txt
3. ./print_lines.sh 5 10 myfile.txt
Sample output:
1)line number 5
line number 6
line number 7
2)Error: arguments missing!
Usage: ./file_filter.sh start_line upto_line filename
For eg. ./file_filter.sh 5 5 <file>
3)Error: data.txt is having only 10 lines. file should have atleast 14 lines
doc
if [ $# -eq 3 ]								#Check the argument in CLA is equal to 3, if equal
then
    line=$(cat $3 | wc -l)						#Display file content in CLA and get number of lines in file
    sum=`expr $1 + $2`							#Add 1st CLA and 2nd CLA and save in sum 
    res=`expr $sum - 1`		 					#Subtract sum content by 1 and save result in res
    if [ $line -ge $res ]						#If Number of lines in file  greater than or equal to result
    then
       	head -$res $3 | tail -$2					#Print the contents of line number given in CLA
    else
	echo "Error: data.txt is having only 10 lines. file should have atleast 14 lines"	#If it is less than result print error message
    fi
else
    echo "Error: arguments missing!"								#If no argument in command line print error message
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
fi
