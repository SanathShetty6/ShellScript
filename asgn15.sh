#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:01/02/2024
Description:Shell script to convert string lower to upper and upper to lower
Sample input:
1. ./upper_lower.sh file.txt
1 – Lower to upper
2 – Upper to lower
Please select option : 1
2. ./upper_lower.sh file.txt
1 – Lower to Upper
2 – Upper to Lower
Please select option : 2
Sample output:
1.WHAT IS OS?
WHAT ARE THE DIFFERENT OS?
WHEN IS OS USED?
WHAT IS PARTITION AND ITS USE?
HOW MANY PARTITIONS CAN BE DONE?
2.what is os?
what are the different os?
when is os used?
what is partition and its use?
how many partitions can be done?
doc
if [ $# -eq 0 ]								#Check if  the argument is passed or not if not then
then
    echo "Error : Please pass the file name through command line."	#If the argument is not passed print error message
    elif [ -f $1 ]							#Check the file in CLA
    then								
	if [ -s $1 ]							#Check the file contents in the file if yes go next
    	then
    	    echo "1 -Lower to upper "					#Display the menu contents
    	    echo "2 -Upper to lower "
    	    read -p "Enter the option : " opt				#Enter the option to be done 
    	    case $opt in 						#set the case variable in opt
		1) cat $1 | tr [:lower:] [:upper:]			#if opt 1 is selected do lowercase to uppercase in file
    		    ;;
    		2) cat $1 | tr [:upper:] [:lower:]			#if opt 2 is selected do uppercase to lowercase in file
		    ;;
    		*) echo "Error invalid option"				#if other option is selected print invalid
		;;
	esac
    else
	echo "Error: No contents inside the file."			#if there is no content in file print error message
    fi
fi
