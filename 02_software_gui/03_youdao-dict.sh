wget -c http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-ubuntu_amd64.deb

# 安装依赖包
#Ubuntu 16.04
sudo apt install -y python3 python3-dbus python3-lxml python3-pil python3-pyqt5 python3-pyqt5.qtmultimedia python3-pyqt5.qtquick python3-pyqt5.qtwebkit python3-requests python3-xdg python3-xlib tesseract-ocr tesseract-ocr-eng tesseract-ocr-chi-sim tesseract-ocr-chi-tra gir1.2-appindicator3-0.1 qtdeclarative5-controls-plugin libqt5multimedia5-plugins ttf-wqy-microhei
#Linux Mint 18
sudo apt install -y libqt5qml-graphicaleffects qtdeclarative5-dialogs-plugin qtdeclarative5-qtquick2-plugin qtdeclarative5-window-plugin qtdeclarative5-localstorage-plugin

# 有道词典的软件包依赖于gstreamer0.10-plugins-ugly，但是在Ubuntu 16.04 中，已经去掉了gstreamer0.10-plugins-ugly，所以有道词典没法安装。但是实测发现即使没有gstreamer0.10-plugins-ugly，也不影响有道词典的使用。所以可以去掉deb包里面对于gstreamer0.10-plugins-ugly  的依赖。具体操作如下：
dpkg -X ./youdao-dict_1.1.0-0-ubuntu_amd64.deb youdao #将deb包解压到youdao目录
dpkg -e ./youdao-dict_1.1.0-0-ubuntu_amd64.deb youdao/DEBIAN #解压deb包中的control信息
vim youdao/DEBIAN/control #编辑control文件，去掉Depends里的 gstreamer0.10-plugins-ugly
mkdir youdaobuild #创建youdaobuild目录
dpkg-deb -b youdao youdaobuild/ #重新打包

# 安装
sudo dpkg -i youdaobuild/youdao-dict*.deb

