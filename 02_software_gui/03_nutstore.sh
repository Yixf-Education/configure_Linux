# ¼á¹ûÔÆ£¬nutstore

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://www.jianguoyun.com/s/downloads"

wget -c -P $DIR_SRC https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb

sudo dpkg -i $DIR_SRC/nautilus_nutstore_amd64.deb
exit $?
#sudo apt install -f -y
