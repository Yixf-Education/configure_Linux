sudo su
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome.list
proxychains wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
apt update -y
apt install -y google-chrome-stable
