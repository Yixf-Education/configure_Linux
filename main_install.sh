#!/bin/bash

df="$HOME/.fonts"
if [ -d "$df" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for fonts ..."
    mkdir $df
fi
export DIR_FONT=$df

ds="$HOME/Sources"
if [ -d "$ds" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for Sources ..."
    mkdir $ds
fi
export DIR_SRC=$ds

dg="$HOME/GitHub"
if [ -d "$dg" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for GitHub ..."
    mkdir $dg
fi
export DIR_GH=$dg

do="$HOME/opt"
if [ -d "$do" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for Options ..."
    mkdir $do
fi
export DIR_OPT=$do

now=$(date +"%Y%m%d")
output="install_$now.log"

echo "Hello! This script will (re)install (my) personal programs and configurations on a fresh Ubuntu OS step by step."
echo 'Before installation, please do some GUI works listed in "./gui" directory.'

read -p "Finish GUI works and begin to install? (y/n) > " install

if { [ "$install" = "y" ] || [ "$install" = "Y" ] ; } then
	echo "Starting ..." | tee $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing essential:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "01_essential" $output
		
	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing software:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "02_software" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing Bio-tool:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "03_bio" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Configure dotfile:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "04_dotfile" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing packages:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "05_package" $output
	
	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing opt software:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "06_opt" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing config:" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "07_config" $output

	echo ""
	echo 'After installation, you may need to do more GUI works. Please check the "./gui" directory.'

	echo ""
	echo "======================"
	echo "Done! You will find the log files in the same folder as this script!"
else
	echo "Exiting without installation."
fi
