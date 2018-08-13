# Tex Live

DIR_SRC="$HOME/Sources"

echo "[Check updates] http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/"

wget -c -P $DIR_SRC http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/texlive2018.iso

echo "Please install TexLive in GUI!"
exit 1
#sudo mount -t iso9660 -o ro,loop,noauto $DIR_SRC/texlive2016.iso /mnt
#sudo /mnt/install-tl -gui text
#sudo umount /mnt
