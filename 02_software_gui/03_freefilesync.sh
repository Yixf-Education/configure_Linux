# FreeFileSync

DIR_SRC="$HOME/Sources"
DIR_OPT="$HOME/opt"

echo "[Check updates] http://www.freefilesync.org/download.php"

wget -c -P $DIR_SRC https://freefilesync.org/download/FreeFileSync_10.3_Linux_64-bit.tar.gz

mkdir $DIR_OPT/FreeFileSync
tar -zxvf $DIR_SRC/FreeFileSync_10.3_Linux_64-bit.tar.gz -C $DIR_OPT/
