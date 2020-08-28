#!/bin/bash

sudo apt-get update && apt-get install bind9 -y
echo $'options { \
        directory "/var/bind"; \
        allow-query { \
              any; \
}; \
        // Configure the IPs to listen on here. \
        listen-on port 53 { any; }; \
        listen-on-v6 { none; }; \
        pid-file "/var/run/named/named.pid"; \
        allow-transfer { none; }; \
}; \
zone "core.windows.net" { \
       type forward; \
       forward only; \
       forwarders { 168.63.129.16; }; \
};' >> /etc/bind/named.conf
