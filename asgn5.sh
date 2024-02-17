#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:06/02/2024
Description:Write a script to perform arithmetic operation on digits of a given number
Sample input:
Test Case 1:
./operator_dependent.sh 1234+
Test Case 2: 
./operator_dependent.sh 8312-
Test Case 3:
./operator_dependent.sh 5487
Test Case 4: 
./operator_dependent.sh 1111x
Test case 5:
./operator_dependent.sh 12/
Test Case 6: 
./operator_dependent.sh
Sample output:
1.Sum of digits = 10
2.Subtraction of digits = 2
3.Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)
4.Multiplication of digits = 1
5.Division of digits = .50
6.Error : Please pass the arguments through CL.
Usage : ./operator_dependent.sh 2345+
doc
var=$1				#Set var to first CLA
len=$((${#var}-2))		#
opt=${var: -1}

if [ $# -eq 1 ]			#Check CLA is passed or not
then
    case $opt in		#Check the case passed
	+)
	    add=${var:0:1}		#'+'option is passed to perform addition operation
	    for i in `seq $len`		#Read the elements one by one
	    do
		add=$(($add+${var:$i:1}))	#Add the elements one by one
	    done
	    echo "Sum of digits = $add "	#Print the output
	    ;;
	-)
	    sub=${var:0:1}			#'-' option is passed to perform subtraction
	    for i in `seq $len`			#Read the elements 
	    do
		sub=$(($sub-${var:$i:1}))	#Subtract the elements one by one
	    done
	    echo "Subtraction of digits = $sub"	#Print the output
	    ;;
	x)
	    mul=${var:0:1}			#'x' option is to perform multiplication
	    for i in `seq $len`			#Read the elements
	    do
		mul=$(($mul*${var:$i:1}))	#Multiply elements one by one
	    done
	    echo "Multiplication of digits = $mul"	#Print the output
	    ;;
	/)
	    div=${var:0:1}			#'/' is passed to perform division 
	    for i in `seq $len`			#Read the elements
	    do
		div=`echo "scale=2; $div/${var:$i:1}" | bc`	#Divide the elements one by one
	    done
	    echo "Division of digits = $div"			#Print the output
	    ;;
	*)
	    echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"	#If any opt is not passed print error message
	    ;;
    esac
else
    echo "Error : Please pass the arguments through CL."	#if CLA is not passed print error message
    echo "Usage : ./operator_dependent.sh 2345+"
fi
