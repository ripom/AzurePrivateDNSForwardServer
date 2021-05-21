#!/bin/bash

sudo apt-get update 
sudo apt-get install bind9 -y
echo 'options {
        directory "/var/cache/bind";
        allow-query { any;};
        // Configure the IPs to listen on here.
        listen-on { any; };
        listen-on-v6 { none; };
        forward only;
        forwarders {  168.63.129.16; };
        recursion yes;
};
#zone "core.windows.net" {
#       type forward;
#       forward only;
#       forwarders { 168.63.129.16; };
#};
#' > /etc/bind/named.conf
sudo systemctl restart bind9
