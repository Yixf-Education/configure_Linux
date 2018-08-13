# RStudio

DIR_SRC="$HOME/Sources"

echo "[Check updates] https://www.rstudio.com/products/rstudio/download/"

wget -c -P $DIR_SRC https://download1.rstudio.org/rstudio-xenial-1.1.456-amd64.deb

sudo dpkg -i $DIR_SRC/rstudio-1.0.136-amd64.deb
exit $?
#sudo apt install -f -y
