#!/bin/bash

#usage ./install_scripts_in_folder.sh [directory] [output_filename]

if { [ -z "$1" ] || [ -z "$2" ]; } then
    echo "You have to supply a script directory and a filename for the log file! In the format:"
    echo ""
    echo "$0 [directory] [filename]"
    echo ""
    exit 1
fi

directory=$1
output=$2

#find $directory -name '*.sh' | sort -V | grep -f $directory/selected.list
find $directory -name '*.sh' | sort -V
while read filename
do
	echo "Installing $filename"
	echo "--------------------" >> $output
	echo "Installing $filename" >> $output
	#echo "" >> $output
	$filename 2&>>$output >> $output
	#echo "" >> $output
	echo "Done!" >> $output
	echo "--------------------" >> $output
	echo "" >> $output
done
wait

