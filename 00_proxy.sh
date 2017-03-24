# shadowsocks-qt5

sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt update -y
sudo apt install -y shadowsocks-qt5

# proxychains
sudo apt install -y proxychains
sudo sed -i '/^socks4/ s/^/#/' /etc/proxychains.conf
echo "socks5  127.0.0.1 7070" | sudo tee -a /etc/proxychains.conf

# 之后必须进行图形界面操作，完成后才可以继续后续的安装配置：
# 1. 打开shadowsocks
# 2. 导入配置
# 3. 测试翻墙效果
# 4. 设置开机自启动
