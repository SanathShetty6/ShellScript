#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:23/01/2024
Description:to check whether given 3 sides of triangle is perfect right angle
Sample input:
Sample output:
doc
read -p "Enter the three sides:" num1 num2 num3
a=`expr $num1 \* $num1`
b=`expr $num2 \* $num2`
c=`expr $num3 \* $num3`
prod1=`expr $a + $b`
prod2=`expr $b + $c`
prod3=`expr $a + $c`
if [ $prod1 -eq $c ]
then
    echo "It is perfect triangle"
elif [ $prod2 -eq $a ]
then
    echo "It is perfect triangle"
elif [ $prod3 -eq $b ]
then
    echo "It is perfect triangle"
else
    echo " Not perfect right angle"
fi
