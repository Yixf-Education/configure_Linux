# optional, but recomamded
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io linux/'
sudo apt-get update
# install typora
sudo apt-get install typora
exit $?
