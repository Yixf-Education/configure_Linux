# Install and setup SSHFS
```
# install package
sudo apt install -y sshfs
# add yourself to the fuse group
sudo gpasswd -a $USER fuse
```
Adding yourself to the fuse group lets you use the fusermount command, which is needed by the FUSE userland filesystem utility.

Once you have added yourself to the fuse group, you should log out and log back in again for the change to take effect. 

# Mount the remote file system
```
mkdir ~/project_RFS
sshfs -o idmap=user $USER@SERVER:~/PROJECT ~/project_RFS
# unmount
fusermount -u ~/project_RFS
# add it to /etc/fstab
sshfs#$USER@SERVER:~/PROJECT /home/$USER/project_RFS fuse defaults,idmap=user 0 0
```
