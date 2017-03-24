# TeamViewer

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://www.teamviewer.com/en/download/linux/"

wget -c -P $DIR_SRC https://download.teamviewer.com/download/teamviewer_i386.deb

sudo dpkg -i $DIR_SRC/teamviewer_i386.deb
exit $?
#sudo apt install -f -y
