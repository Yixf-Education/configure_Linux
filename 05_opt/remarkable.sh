# Remarkable

echo "[Check updates] https://remarkableapp.github.io/linux/download.html"

wget -c -P $DIR_SRC https://remarkableapp.github.io/files/remarkable_1.87_all.deb

sudo dpkg -i $DIR_SRC/remarkable_1.87_all.deb
exit $?
#sudo apt install -f -y
