#!/bin/bash

#przekierowanie na adres IP1: 192.168.1.100

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -i eth0 -j DNAT --to 192.168.1.100:80