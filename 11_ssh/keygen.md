# 客户端生成公钥和私钥
```
cd ~/.ssh
ssh-keygen -t rsa -f NAME
```

# 配置公钥到服务器
```
ssh-copy-id -i NAME.pub USER@HOST
```
