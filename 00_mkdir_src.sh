ds="~/Sources"

if [ -d "$ds" ]
then
    echo "Directory exists! Skipping ..."
else
    #mkdir ~/Sources
    echo "Create directory ..."
fi

export DIRS=$ds
echo $DIRS
