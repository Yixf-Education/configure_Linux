# WPS

DIR_SRC="$HOME/Sources"

echo "[Check updates] http://community.wps.cn/download/"

wget -c -P $DIR_SRC http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb

sudo dpkg -i $DIR_SRC/wps-office_10.1.0.5672~a21_amd64.deb
exit $?
#sudo apt install -f -y
