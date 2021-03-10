#!/bin/bash

#!/bin/bash
sudo iptables -F

sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT DROP

# ********* klient *********

#port 80 - HTTP (WWW)
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT

#port 443 - HTTPS
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 443 -m conntrack --ctstate ESTABLISHED -j ACCEPT

#port 22 - SSH
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT

#port 443 - potrzebny do dzialania Skype
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 443 -m conntrack --ctstate ESTABLISHED -j ACCEPT

# ********* server *********
#port 22 - SSH
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT

# ********* ZADANIE 3 - LOGI POLACZEN SSH **********

sudo iptables -A OUTPUT -o eth0 -p tcp -s 192.168.1.100 --sport 22 -m conntrack --ctstate ESTABLISHED -j LOG


#port 80 - HTTP (WWW)
sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT

#SKYPE
#port 443 juz skonfigurowany

#porty 3478-3481

sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 3478:3481 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 3478:3481 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT


#porty 50000-60000

sudo iptables -A INPUT -i eth0 -p tcp -s 192.168.1.100 --sport 50000:60000 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -d 192.168.1.100 --dport 50000:60000 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT


