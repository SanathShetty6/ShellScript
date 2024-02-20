#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:
Description:
Samplei input:
Sample output:
doc
read -p "Enter two numbers:" num1 num2
proc=`expr $num1 \* num2`
res=`expr $proc % 2 `
if [ $res -eq 0 ]
then
    echo "the number is even"
else
    echo "the number is odd"
fi
