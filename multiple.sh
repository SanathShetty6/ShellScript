#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:23/01/2024
Description:Check whether the entered number is multiple 5
Sample input:25
Sample output:multiple of 5
doc
read -p "Enter the number:" num
rem=`expr $num % 5`
if [ $rem -eq 0 ]
then 
    echo " multiple of 5"
else
    echo " Not multiple of 5"
fi
