# shadowsocks-qt5

sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt update -y
sudo apt install -y shadowsocks-qt5

# proxychains
sudo apt install -y proxychains
sudo sed -i '/^socks4/ s/^/#/' /etc/proxychains.conf
echo "socks5  127.0.0.1 7070" | sudo tee -a /etc/proxychains.conf
