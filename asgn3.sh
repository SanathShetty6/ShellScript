#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:31/01/2024
Description:Write a script for arithmetic calculator using command line arguments
Sample input:./arithmetic_calc 25 + 41
Sample output:25 + 41
doc
if [ $# -eq 0 ]								#Check whether it is valid argumeny
then
    echo "Error : Please pass the arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
elif [ $# -eq 3 ]
    then
	 case $2 in
	     +) sum=`expr $1 + $3 | bc`
		 echo "$1 + $3 = $sum"
		 ;;
	     -) sub=`expr $1 - $3 | bc`
		 echo "$1 - $3 = $sub"
		 ;;
	     x) mul=`expr $1 "*" $3 | bc`
		 echo "$1 x $3 = $mul"
		 ;;
	     /) div=`expr "scale=2; $1 / $3" | bc`
		 echo "$1 / $3 = $div"
		 ;;	 
	     *) echo "Enter valid operator"
		 ;;
	 esac
     else
	 echo "Error:Please pass 3 arguments."
	 echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi
