#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:05/02/2024
Description:For each directory in the $PATH, display the number of executable files in that directory
Sample input:1. ./executable_path.sh
Sample output:Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
doc
arr=`echo $PATH | tr ":" " "`  		#Get the PATH directory in array
total=0					#Set total count = 0
for i in ${arr[@]}			#Go to one by one directory using array
do
    if [ -d $i ]
    then
    	cd $i				#Change the directory
    	count=0				#Set Count =0
    for j in `ls $i`			#Get all the files in the directory
    do
	if [ -x $j ]			#check the file which is executable
	then
	    count=`expr $count + 1` 	#Count the number of file
	fi
    done
    echo "Current dir : $i "		#Print the current directory
    echo "Current count : $count "	#Print the current count
    total=`expr $count + $total`
    echo "Total - $total"              	#Print the total count
    fi
done
