# AzurePrivateDNSForwardServer

This project is very helpful in this scenario https://github.com/dmauser/PrivateLink/tree/master/DNS-Integration-Scenarios#4-on-premises-dns-integration when you need to deploy a custom DNS to integrate the On Premises name resolution with Azure Private DNS Zone.

In the scenario described in the link above, you should have a VNET an Azure Private DNS Zone linked with VNET.
To create the custom DNS server and let you to resolve the Azure Private DNS Zone records from your on premises naming server infrastructure, you need to deploy the VM using the template contained in the repository.

**IMPORTANT**: When you deploy the VM, you should provide to the template an already existing VNET and Subnet, pay attention the VM should be connected to the same VNET where Azure Private DNS Zone is linked, if you are going to deploy the VM in different VNET than be sure to add to Azure Private DNS Zone another link the the VM's VNET. This is very important otherwise the resolution will not work correctly.  

Last, remember to configure a conditional forwarding on your on premises DNS server to forward the core.windows.net query to the private IP address you provide in the template.

This is a simple project that deploy a Linux VM based on Ubuntu 16.04 distribution.
The VM is automatically configured with Bind9 service and it listen on port 53 with private IP .
The server is also configured to forward the query for core.windows.net zone to the local VNET integrated DNS Server to a special address 168.63.129.16

