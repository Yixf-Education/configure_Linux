# fonts-wqy

sudo apt install -y fonts-wqy-microhei fonts-wqy-zenhei ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy

# ttf-mscorefonts
sudo apt install -y ttf-mscorefonts-installer

# Adobe fonts
cp ./Adobe_fonts_zh/* ~/.fonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -f -v
