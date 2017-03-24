# Adobe fonts
df="$HOME/.fonts"
if [ -d "$df" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for fonts ..."
    mkdir $df
fi
cp ./Adobe_fonts_zh/* $df
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -f -v
