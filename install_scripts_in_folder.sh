#!/bin/bash

#usage ./install_scripts_in_folder.sh [directory] [log_filename]

if { [ -z "$1" ] || [ -z "$2" ]; } then
    echo "You have to supply a script directory and a filename for the log file! In the format:"
    echo ""
    echo "$0 [directory] [filename]"
    echo ""
    exit 1
fi

directory=$1
log=$2
err=${log}".err"

#find $directory -name '*.sh' | sort -V | grep -f $directory/selected.list | 
find $directory -name '*.sh' | sort -V | 
while read filename
do
    echo -n "Installing $filename ... "
    echo "####################" >> $log
    echo "Installing $filename ..." >> $log
    echo "####################" >> $err
    echo "Installing $filename ..." >> $err
    echo "" >> $log
    $filename >>$log 2>>$err
    if [ $? == 0 ]
    then
        echo "OK!"
        echo "OK!" >> $log
    else
        echo "Fail!"
        echo "Fail!" >> $log
    fi
    echo "" >> $log
    echo "####################" >> $log
    echo "" >> $log
    echo "####################" >> $err
    echo "" >> $err
done
wait

