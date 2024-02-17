#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:07/02/2024
Description:
Sample input:
Before replacing
1.#incude <stdio.h>
int main()
{
             printf(“Hello world\n”);
	 }
2../replace_DEL.sh main1.c
3. ./replace_DEL.sh main2.c
4. ./replace_DEL.sh
Sample output:
1.After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2.Error : No such a file.
3.Error : main2.c is empty file. So can’t replace the string.
4.Error : Please pass the file name through command line.
doc
if [ $# -ne 0 ]	 #Check if CLA is passed
then
    if [ -f $1 ] #Check for the files
    then
	if [ -s $1 ]	#Check for contents in the file
	then
	    line=`cat $1 | wc -l`  #Check for the number of lines in the file
	    if [ $line -ge 5 ]		#Check for lines greater than 5 in the file
	    then
		per=`expr $line / 5`	#Find the number of lines to be replaced	
		random=`shuf -i 1-$line -n1` #Get random number for replace
		for i in ${random[@]}
		do
		    sed -i "$i s/.*/<-------Deleted-------->/" $1 #replace the random line
		done
		cat $1 						#Display the file
	    else "File contains less than 5 lines"		#If lines less than 5 print less than 5
	    fi
	else
	    echo "Error : main2.c is empty file. So can’t replace the string."	#If no contents in file print no content
	fi
    else
	echo "Error : No such a file."   #if there is no file print no file
    fi
else
    echo "Error : Please pass the file name through command line." #If CLA is not passed  print error
fi


