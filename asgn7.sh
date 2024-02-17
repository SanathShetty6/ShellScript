#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:30/01/2024
Description:Write Script to print chess board
Sample input:nil
Sample outputs board pattern
doc
for row in `seq 8`                      #Read the Row input=8
do
    for col in `seq 8`                  #Read the column input=8
    do
	sum=`expr $row + $col`          #Add row and coulmn and save in add
	res=`expr $sum % 2`             #Check the output equals to 0 or 1
	if [ $res -eq 0 ]               #If the output equals 0 then
	then
	    echo -e -n "\e[47m" " "     #if output is even Print output as white 
	else
	    echo -e -n "\e[40m" " "     #else the output is black
	fi				#end of if
    done
    echo -e -n "\e[0m" " "
    echo
done

