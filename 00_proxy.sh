# shadowsocks-qt5

sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt update -y
sudo apt install -y shadowsocks-qt5

# proxychains
sudo apt install -y proxychains
sudo sed -i '/^socks4/ s/^/#/' /etc/proxychains.conf
echo "socks5  127.0.0.1 7070" | sudo tee -a /etc/proxychains.conf

# ֮��������ͼ�ν����������ɺ�ſ��Լ��������İ�װ���ã�
# 1. ��shadowsocks
# 2. ��������
# 3. ���Է�ǽЧ��
# 4. ���ÿ���������
