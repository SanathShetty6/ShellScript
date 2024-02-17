#!/bin/bash
<<doc
NAME:Sanath Shetty
Date 31/01/2024
Description:Write a script to delete empty lines from a file
Sample input: Nil
Sample output:1. ./delete_empty_lines.sh file.txt
Empty lines are deleted
Hello
How
are
you?

2. ./delete_empty_lines.sh
Error: Please pass the file name through command line.
doc
if [ $# -ne 0 ]                                                     #Check whether argument is passed in CLA
then
    sed -i '/^[[:blank:]]*$/d' $1				    #Delete the blank spaces and blank lines in the given file
    echo "Empty lines are deleted"      			    #After deleting print output as empty lines are deleted
    cat $1							    #Display the file content after the deleting lines and space
else
    echo "Error: Please pass the file name through command line."   #If the argument is not passed print the error message"
fi
