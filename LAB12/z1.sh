#!/bin/bash
sudo iptables -F

sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT DROP


#port 22 - SSH
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT

#port 80 - HTTP
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT