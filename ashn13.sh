#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:02/02/2024
Description:Display the longest and shortest user-names on the system
Sample input:/largest_username.sh 
Sample output:The Longest Name is: speech-dispatcher
The Shortest Name is:lp
(Output might vary for each system)
doc
arr=($(cat /etc/passwd | cut -d ":" -f1))	#Take all the user-names in an array and display
large=${arr[0]}					#Take 1st element as largest
small=${arr[0]}					#Take 1st element as smallest
length=$((${#arr[@]}-1))			#Calculate string length and save in length
for i in `seq 1 $(($length))`			#loop the number of users
do
    if [ ${#arr[$i]} -gt ${#large} ]		#Condition for longest user-name
    then
	large=${arr[$i]}
    fi
    if [ ${#arr[$i]} -lt ${#small} ]		#Condition for smallest user-name
    then
	small=${arr[$i]}
    fi
done
echo "The Longest Name is: $large "		#Print the largest and smallest user-name
echo "The Smallest Name is : $small"

