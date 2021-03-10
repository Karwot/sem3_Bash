#!/bin/bash

# wczytanie modulow analizujacych stan polaczenia
sudo modprobe ip_conntrack
sudo modprobe ip_conntrack_ftp


#usuwanie aktualnych regul
sudo iptables -F

#blokada ruchu sieciowego
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT DROP
sudo iptables -P FORWARD DROP


# ****KLIENT ***
# HTTP (WWW)
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 1024:65535 -d 0/0 --dport 80 -m state --state ESTABLISHED -j ACCEPT

# HTTPS
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 1024:65535 -d 0/0 --dport 443 -m state --state ESTABLISHED -j ACCEPT

# SSH
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 1024:65535 -d 0/0 --dport 22 -m state --state ESTABLISHED -j ACCEPT



# **** SERWER ****
# SSH port 22
sudo iptables -A INPUT -i eth0 -p tcp -s 0/0 --sport 1024:65535 -d 192.168.1.100 --dport 22 -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 1024:65535 -d 0/0 --dport 22 -m state --state ESTABLISHED -j ACCEPT

# HTTP (WWW) - port 80

sudo iptables -A INPUT -i eth0 -p tcp -s 0/0 --sport 1024:65535 -d 192.168.1.100 --dport 80 -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 1024:65535 -d 0/0 --dport 80 -m state --state ESTABLISHED -j ACCEPT
