#!/bin/bash
<<doc
NAME:Sanath Shetty
Date:05/02/2024
Description:Write script called say_hello, which will print greetings based on time
Sample input:Nil
Sample output:When we start shell (whenever you opening new tab or terminal)
Good Morning user, Have nice day!
This is Thursday 08 in June of 2017 (10:44:10 AM)
doc
hour=`date | tr -s " " | cut -d " " -f4 | cut -d ":" -f1`	#get the hour
day=`date | cut -d " " -f1`					#get the day
date=`date | tr -s " " | cut -d " " -f3`			#get the date
month=`date | cut -d " " -f2`					#get the month
year=`date | tr -s " " | cut -d " " -f6` 			#get the year
fullhour=`date | tr -s " " | cut -d " " -f4`			#to get full hour
AMPM=`date +%p`							#to get AM and PM
if [ $hour -ge 5 -a $hour -lt 12 ]				#If time is between 5 and 12 print good morning
then
    greet=`echo "Good Morning"`
elif [ $hour -ge 12 -a $hour -lt 14 ]				#if time is between 12 and 14 print good noon
then
   greet=`echo "Good Noon" `
elif [ $hour -ge 14 -a $hour -le 17 ]				#if time is between 14 and 17 print good afternoon
then
   greet=`echo "Good Afternoon"`
elif [ $hour -gt 17  -a $hour -le 21 ]				#if time is between 17 and 21 print good evening
then
   greet=`echo "Good Evening"`
else
    greet=`echo "Good Night"` 					#else print good night
fi
echo "$greet $(whoami) ,have a nice day! This is $day $date in $month of $year ($fullhour) $AMPM "	#Print the display statement
