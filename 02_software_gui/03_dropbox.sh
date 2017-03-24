# Dropbox

sudo apt install -y dropbox nemo-dropbox
nemo --quit

# 会进入图形界面
proxychains dropbox start -i
proxychains dropbox update

# 需要进行图形化操作
dropbox autostart y
proxychains dropbox start
