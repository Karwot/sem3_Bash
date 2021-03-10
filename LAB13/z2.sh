#!/bin/bash

#zmiana regul tlumaczenia adresow tabeli NAT

sudo iptables -t nat -A POSTROUTING -p tcp -o eth0 -j SNAT --to 192.168.1.100

sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE