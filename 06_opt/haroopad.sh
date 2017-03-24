# Haroopad

echo "[Check updates] http://pad.haroopress.com/user.html"

wget -c -P $DIR_SRC https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb

sudo dpkg -i $DIR_SRC/haroopad-v0.13.1-x64.deb
exit $?
#sudo apt install -f -y
