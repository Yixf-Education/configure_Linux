for package in $(cat ./package/perl_packages_list.txt)
do
	YN=$(perl -M$package -e 1)
	if [ "$YN" = "" ]; then
		echo "$package has been installed! Skipping ..."
	else
		sudo cpan -f -i $package
	fi
done
