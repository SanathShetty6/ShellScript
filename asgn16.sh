#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:05/02/2024
Description:Write a script to determine whether a given file system or mount point is mounted
Sample input:
1. ./mounted_fs.sh /dev/sda2
2. ./mounted_fs.sh /dev
3. ./mounted_fs.sh
Sample output:
1.File-system /dev/sda2 is mounted on / and it is having 98%
2./dev is not mounted.
3.Error : Please pass the name of the file-system through command line.
doc
file=(`df | cut -d " " -f1`)			#To get filesystem
mount=(`df | tr -s " " | cut -d " " -f6`)	#To see where file is mounted
per=(`df | tr -s " " | cut -d " " -f5`)		#To get percenatge of storage available
used=(`df | tr -s " " | cut -d " " -f3`)	#To get storage used
length=`expr ${#file[@]} - 1`			#Store the file in array
flag=0						#Set flag =0
if [ $# -ne 0 ]					#Check CLA is paased or not
then
    for i in `seq $length`
    do
	if [ ${file[$i]} = $1 ]			#Check CLA file equal to filesystem
	then
	    flag=1				#If equals set flag = 1
	    echo "File-system ${file[$i]} is mounted on ${mount[$i]} and it is having ${per[$i]} used space with ${used[$i]} free."	#Print the output
	fi
    done
    if [ $flag -eq 0 ]				#If flag = 0
    then
	echo "$1 is not mounted "		#If equal print not mounted
    fi
else
    echo "Error : Please pass the name of the file-system through command line."	#If CLA is not passed print error
fi
