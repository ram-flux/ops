#!/bin/bash
sudo apt update && sudo apt -y upgrade

sudo apt install -y curl gnupg2 ca-certificates lsb-release apt-transport-https sudo vim screen wget iproute2 net-tools pkg-config libssl-dev build-essential tcpdump

sudo bash -c 'cat << EOF >> /etc/sysctl.conf
net.ipv4.ip_forward=1
net.ipv6.conf.all.forwarding=1
EOF'
sudo sysctl -p
