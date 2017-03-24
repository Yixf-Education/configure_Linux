# Miniconda

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://conda.io/miniconda.html"

wget -c -P $DIR_SRC https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

echo "Please install Miniconda in GUI!"
exit 1
#bash $DIR_SRC/Miniconda3-latest-Linux-x86_64.sh
