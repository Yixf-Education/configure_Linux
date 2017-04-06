for mod in $(cat ./package/python_modules_list.txt)
do
	YN=$(python -c "import $mod")
	if [ "$YN" = "" ]; then
		echo "$mod has been installed! Skipping ..."
	else
		echo "$mod has not been installed. To be installed ..."
		#sudo apt-get install python-$mod
		#sudo apt-get install python3-$mod
		#sudo pip install $mod
		#sudo pip3 install $mod
		#sudo pip --user $(whoami) install $mod
		#sudo pip3 --user $(whoami) install $mod
	fi
done
