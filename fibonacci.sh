#!/bin/bash
<<doc
NAME:Sanath Shetty
Date24/01/2024:
Description:Print n fibonacci terms
Sample input:
Sample output:
doc
read -p "Enter the number:" num
first=0
second=1
next=0
for i in `seq $num`
do 
    echo "$next"
    first=$second
    second=$next
    next=`expr $first + $second`
done
