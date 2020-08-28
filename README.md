# AzurePrivateDNSForwardServer

This is a simple project to deploy a Linux VM based on Ubuntu 16.04 distribution.
The VM is automatically configured with Bind9 server and it listen on private IP to DNS query.
The server is also configured to forward the query for core.windows.net zone to the local VNET integrated DNS Server to a special address 168.63.129.16

This project is very helpful in this scenario https://github.com/dmauser/PrivateLink/tree/master/DNS-Integration-Scenarios#4-on-premises-dns-integration when you need to deploy a custom DNS to integrate the On Premises name resolution with Azure Private DNS Zone.
