# R

#sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
#sudo add-apt-repository 'deb [arch=amd64,i386] https://mirrors.ustc.edu.cn/CRAN/bin/linux/ubuntu xenial/'

echo -e "\n# R language" | sudo tee -a /etc/apt/sources.list
echo "deb https://mirrors.ustc.edu.cn/CRAN/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
#echo "deb http://cn.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe" | sudo tee -a /etc/apt/sources.list
#echo "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt update -y
sudo apt install -y r-base r-base-dev

exit $?
