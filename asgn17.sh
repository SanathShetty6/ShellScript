#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:02/02/2024
Description:WAS to print contents of a directory without ls command
Sample input:
Let assume your pwd is /home/user/ECEP/Linux_Systems/
1. ./output_ls.sh
2. ./ouput_ls.sh ~ ~/ECEP
3. ./ouput_ls.sh Test
Sample output:
1.Assignments Classwork
2./home/user:
Downloads Documents Desktop Music Pictures Public Videos
ECEP
/home/user/ECEP:
Linux_Systems Advnc_C Linux_Internals Data_Structures MC
3.output_ls.sh: Cannot access ‘Test’ : No such a file or directory.
doc
if [ $# -ne 0 ]		#Check if any arguments in command line
then
    arr=($@)		#Take all the inputs in array
for i in ${arr[@]}	#Read the input in array
do
   if [ -d $i ]		#Check whether there is directory
   then
      cd $i		#Open the directory
      echo *		#Display all the contents
  else
   echo "cannot access ‘$1’ : No such a file or directory." #if there is no diectory print cannot access
   fi
done
else
    pwd			#If there is no arguments print current directory and its content
    echo *
fi
