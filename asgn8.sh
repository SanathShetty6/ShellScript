#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:06/02/2024
Description:Write a script to sort a given number in ascending or descending order
Sample input:
Test Case 1: 
./sorting.sh -a 5 4 6 2 3 8 9 7 1
Test Case 2: 
./sorting.sh -d 5 4 6 2 3 8 9 7 1
Test Case 3:
./sorting.sh 5 4 6 2 3 8 9 7 1
Test Case 4:
./sorting.sh -d 5 4 6 2 -3 8 -9 7 1
Sample output:
1.Ascending order of array is 1 2 3 4 5 6 7 8 9
2.Descending order of array is 9 8 6 5 4 3 2 1
3.Error : Please pass the choice.
Usage : ./sorting -a/-d 4 23 5 6 3
4.Error : Please pass the argument through command line.
Usage : ./sorting -a/-d 4 23 5 6 3
5.Descending order of array is 8 7 6 5 4 2 1 -3 -9.
doc
arr=($@)							#Get the number in CLA
opt=$1								#Set option $1
if [ $# -ne 0 ]							#Check CLA is passed or not
then
    case $opt in						#Select the option
	-a)							#To find Ascending number
	    for i in `seq $(($#-1))`   	   			#Read the elements one by one
	    do
		for j in `seq 1 $(($#-$i-1))`
    		do
    		    sum=`expr $j + 1`
		    if [ ${arr[$j]} -gt ${arr[$sum]} ]		#Compare the array numbers
    		    then
    			temp=${arr[$j]}				#Swap the numbers
    			arr[$j]=${arr[$sum]}
    			arr[$sum]=$temp
    		    fi
    		done
    	    done
    	    echo "Ascending order of given number is ${arr[@]:1}" #print theascending numbers

	    ;;
	-d)
	    for i in `seq $(($#-1))`				#To find descending number
	    do
		for j in `seq 1 $(($#-$i-1))`			#Read the elements
		do
		    sum=`expr $j + 1`			
		    if [ ${arr[$j]} -lt ${arr[$sum]} ]		#Comapre the numbers
		    then
			temp=${arr[$j]}				#Swap the numbers
			arr[$j]=${arr[$sum]}
			arr[$sum]=$temp
		    fi
		done
	    done
	    echo "Descending order of given number is ${arr[@]:1}" #Print the descending numbers
	    ;;
	*) 
	    echo "Error : Please pass the choice."
	    echo "Usage : ./sorting -a/-d 4 23 5 6 3"		#No choice is passed print error
		    ;;
	    esac
	else
	    echo "Error : Please pass the argument through command line."	#If CLA is not passed print error
	    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
fi
