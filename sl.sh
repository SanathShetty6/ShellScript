#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:24/01/2024
Description:To find smallest and largest from given n numbers
Sample input:
Sample output:
doc
read -p "Enter the number:" n
for i in `seq $n`
do
    read -p "Enter the numbersone by one:" num
done
if [ $i -eq 1 ]
then
    small= $num 
    large= $num
fi
if [ $num -lt $small ]
then
    small= $num
fi
if [ $num -gt $large ]
then
   large= $num
fi
echo "the smallest number is $small"
echo "the largest number is $large"

