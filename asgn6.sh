#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:31/01/2024
Description:Write a script to print the length of each and every string using arrays
Sample input:
Test Case 1:
./string_length.sh hello hai how are you?
Test Case 2:
./string_length.sh
Sample output:
Test Case 1:
Length of string (hello) - 5
Length of string (hai) - 3
Length of string (how) - 3
Length of string (are) - 3
Length of string (you?) - 4
Test Case 2:
Error : Please pass the arguments through command-line.
doc
string=($@)							#Set string equal to command line arguments
if [ $# -ne 0 ]							#If command line argument is not equal to zero then
then
    for i in ${string[@]}					#Read the sting length in 'i' in for loop 
    do
	echo "length of string ($i) - ${#i}"			#Print the string length in 'i'
    done
else
    echo "Please pass the arguments through command-line"	#if there is no argument in command line print error message
fi
