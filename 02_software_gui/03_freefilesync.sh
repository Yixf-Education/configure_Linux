# FreeFileSync

DIR_SRC="$HOME/Sources"
DIR_OPT="$HOME/opt"

echo "[Check updates] http://www.freefilesync.org/download.php"

wget -c -P $DIR_SRC http://www.freefilesync.org/download/FreeFileSync_8.10_Ubuntu_16.04_64-bit.tar.gz

mkdir $DIR_OPT/FreeFileSync
tar -zxvf $DIR_SRC/FreeFileSync_8.10_Ubuntu_16.04_64-bit.tar.gz -C $DIR_OPT/FreeFileSync
