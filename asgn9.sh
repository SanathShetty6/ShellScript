#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:01/02/2024
Description:Write Script to print system information
Sample input:
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 2
Sample output:
Your shell directory is /bin/bash
doc
opt=y									#Set option equal to y.	
while [ $opt = "y" ]							#Set while loop for option 'y'
do
    echo "1. Currently logged users"					#Display the information 
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information."
    echo "10. Memory Informations"
    echo "11. File system information."
    echo "12. Currently running process."
    read -p "Enter the choice  :" n					#Enter the choice 'n'
    case $n in								#Set case for variable 'n' and display the information shown below
	1) echo "Currently logged user is `whoami`" ;;
	2) echo "Your shell directory is `$BASH`" ;;
	3) echo "Home directory is `$HOME`" ;;
	4) echo "OS name & version is `uname -r`" ;;
	5) echo "Current working directory is `pwd`" ;;
	6) echo "Number of users logged are `who -q`" ;;
	7) echo "Show all available shells in your system is `cat /etc/shells`" ;;
	8) echo " Hard disk information is `hwinfo`" ;;
	9) echo " CPU information is `cat /proc/cpuinfo`" ;;
	10) echo " Memory Informations is `cat /proc/meminfo`" ;;
	11) echo "File system information is `df`" ;;
	12) echo " Currently running process `ps`" ;;
	13) echo "Error : Invalid option, please enter valid option"	#if the choice goes more than 12 print invalid message
    esac								#end of case
    read -p "Do you want to continue (y\n):" opt			#Print the msg whether to continue or not if yes then run while loop if no terminate
done
