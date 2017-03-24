# Lantern

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://getlantern.org/"

proxychains wget -c -P $DIR_SRC https://getlantern.org/lantern-installer-beta-64-bit.deb

sudo dpkg -i $DIR_SRC/lantern-installer-beta-64-bit.deb
exit $?
#sudo apt install -f -y
