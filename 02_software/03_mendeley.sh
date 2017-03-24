# Mendeley

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://www.mendeley.com/download-mendeley-desktop/ubuntu/instructions/"

wget -c -P $DIR_SRC https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest

sudo dpkg -i $DIR_SRC/mendeleydesktop-latest
exit $?
#sudo apt install -f -y
