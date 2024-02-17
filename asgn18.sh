#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:02/02/2024
Description:Count the number of users with user IDs between given range
Sample input:1. ./user_ids.sh
2. ./user_ids.sh 0 100
3. ./user_ids.sh 100
4. ./user_ids.sh 200 100
Sample output:
1.Total count of user ID between 500 to 10000 is: 2
2../user_ids.sh 0 100
3.Error : Please pass 2 arguments through CL.
Usage : ./user_ids.sh 100 200
4.Error : Invalid range. Please enter the valid range through CL.
doc
array=($(cut -d ":" -f3 /etc/passwd))		#Get all the user IDs in an array.
count=0						#Set count equal to zero.
if [ $# -ne 0 ]					#Check the argument is given in CLA if given then go next
then
    if [ $# -eq 2 ]				#Check CLA should be equal to 2 arguments only.
    then
	if [ $1 -lt $2 ]			#If 1st argument less than 2nd argument then go next
	then
	    for i in ${array[@]}		#Read the user IDs in 'i'
	    do
		if [ $i -ge $1 -a $i -le $2 ]	#Check the number of id in between given range 
		then
		    count=$(($count + 1))	#Get how many users in between the range
		fi
	    done
	    echo "Total count of user ID between $1 to $2 is :$count "	#Print the count
	else
	    echo "Error : Invalid range. Please enter the valid range through CL." #If argument is greater than 2nd  then print error
	fi
    else
	echo "Error : Please pass 2 arguments through CL." #If CLA to not equal to 2 print error message
	echo "Usage : ./user_ids.sh 100 200"
    fi
    else
	for i in ${array[@]}			#If CLA equal to zero the print default array user IDs 	
	do
	    if [ $i -ge 500 -a $i -le 1000 ]	#Check the user IDs between 500 and 1000
	    then
		count=$(($count + 1))		#Get the user IDs in the range
	    fi
	done
	echo "Total count of user ID between 500 to 10000 is : $count " #Print the count
    fi
