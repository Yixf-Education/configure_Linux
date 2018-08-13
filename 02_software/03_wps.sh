# WPS

DIR_SRC="$HOME/Sources"

echo "[Check updates] http://community.wps.cn/download/"

wget -c -P $DIR_SRC http://kdl.cc.ksosoft.com/wps-community/download/6634/wps-office_10.1.0.6634_amd64.deb

sudo dpkg -i $DIR_SRC/wps-office_10.1.0.6634_amd64.deb
exit $?
#sudo apt install -f -y
