# Nylas mail

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://billing.nylas.com/download"

wget -c -P $DIR_SRC "https://edgehill.nylas.com/download?platform=linux-deb"

sudo dpkg -i $DIR_SRC/NylasMail.deb
exit $?
#sudo apt install -f -y
