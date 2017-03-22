ds="~/Sources"
if [ -d "$ds" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for Sources ..."
    #mkdir $ds
fi
export DIRS=$ds

dg="~/GitHub"
if [ -d "$dg" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for GitHub ..."
    #mkdir $dg
fi
export DIRG=$dg
