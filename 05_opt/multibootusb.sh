# Haroopad

echo "[Check updates] http://multibootusb.org/"

wget -c -P $DIR_SRC https://github.com/mbusb/multibootusb/releases/download/v9.2.0/python3-multibootusb_9.2.0-1_all.deb

sudo dpkg -i $DIR_SRC/python3-multibootusb_9.2.0-1_all.deb
exit $?
#sudo apt install -f -y
