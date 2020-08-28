#!/bin/bash

sudo apt-get update && apt-get install bind9 -y
echo $'zone "privatelink.file.core.windows.net" { \n
    type forward; \n
    forward only; \n
    forwarders { 168.63.129.16; }; \n
};' >> /etc/bind/named.conf
