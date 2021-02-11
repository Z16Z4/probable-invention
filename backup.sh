#!/bin/bash
# if parameter is not empty then it will run the next if statement else it will open for editing of file
if  [  -n "$1" ]; then
#if the file exists with parameter name then it will create a backup file otherwise open editing of file
if [ -f "$1" ]; then
#copy command creating backup
cp "$1" "$1".bak
#opening for editing of file
vim $1
else
#opening for editing of file
vim $1
#end if statement
fi
#if the file is empty from parameter then it will read the users input instead for interactive mode
elif [ -z "$1" ]; then
#reading file and storing in variable
read -p "filename: " FILENAME
#creating file incase it dont exist already from user
touch $FILENAME
#creating backup of file
cp "$FILENAME" "$FILENAME".bak
#letting the user know that backup is successful
echo "backup finished"
#opening in vi editor
vim $FILENAME
#open filname entered by user in vi editor
else
#error control of program
echo "Something went wrong.."
#end of if statement
fi





