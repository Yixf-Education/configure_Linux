# sogoupinyin

DIR_SRC="$HOME/Sources"

echo "[Check updates] http://pinyin.sogou.com/linux/?r=pinyin"

wget -c -P $DIR_SRC http://cdn2.ime.sogou.com/dl/index/1475147394/sogoupinyin_2.1.0.0082_amd64.deb

sudo dpkg -i $DIR_SRC/sogoupinyin_2.1.0.0082_amd64.deb
exit $?
#sudo apt install -f -y
