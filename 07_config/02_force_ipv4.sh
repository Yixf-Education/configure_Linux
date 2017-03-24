## Option1
# Force apt to use IPv4, persistent
#echo 'Acquire::ForceIPv4 "true";' | sudo tee /etc/apt/apt.conf.d/99force-ipv4

## Option2
# Disable IPv6
#echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
#sudo sysctl -p
# Check the result: no ouput
#ip a | grep inet6

## Option3
# Add -o Acquire::ForceIPv4=true when running apt-get
#apt-get -o Acquire::ForceIPv4=true update
#apt-get -o Acquire::ForceIPv4=true upgrade
