# TeamViewer

echo "[Check updates] https://www.teamviewer.com/en/download/linux/"

wget -c -P $DIRS https://download.teamviewer.com/download/teamviewer_i386.deb

sudo dpkg -i $DIRS/teamviewer_i386.deb
sudo apt install -f
