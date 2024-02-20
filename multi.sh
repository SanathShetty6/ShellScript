#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:23/01/2024
Description:Determine and print if first is multiple of second
Sample input:2 4
Sample output:
doc
read -p "Enter the number:" num1 num2 #give 2 inputs
prod=`expr $num1 \* $num2` #multiply both input
rem=`expr $prod % 2 ` #check the remainder
if [ $rem -eq 0 ] #check rem equal to zero
then 
    echo "first is multiple of 2"
else
    echo "First is not multiple of 2"
fi
