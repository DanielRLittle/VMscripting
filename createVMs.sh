#! /bin/bash

curl -sL https://aka.ms/InstallAzureCliDeb | sudo bash

az login

az group create --name newResource --location ukwest

az network vnet create --resource-group newResource --name myVirtualNetwork --address-prefixes 10.0.0.0/16

az network vnet subnet create --resource-group newResource --name myFirstSubnet --address-prefixes 10.0.0.0/24

az network nsg create --resource-group newResource --name myNetworkSecurityGroup

az network nsg rule create --resource-group newResource --name SSH --destination-port-ranges 22 --nsg-name myNetworkSecurityGroup priority 100

az network nsg rule create --resource-group newResource --name http --destination-port-ranges 80 --nsg-myNetworkSecurityGroup priority 110

az network nsg rule create --resource-group newResource --name https --destination-port-ranges 8080 --nsg myNetworkSecurityGroup --priority 120

az network nsg rule create --resource-group newResource --name https --destination-port-ranges 443 --nsg myNetworkSecurityGroup --priority 130

az network public-ip create --resource-group newResource --name myStaticIP1 --allocation-method Static

az network nic create --resource-group newResource --name newtworkInterface1 --vnet-name myVirtualNetwork --subnet myFirstSubnet --network-security-group myNetworkSecurityGroup --public-ip-address myStaticIP1

az vm create --resource-group newResource --name jenkinsVM --image UbuntuLTS --size B1ms --upgrade-policy-mode automatic --admin-username "adminUser" --generate-ssh-keys --nics networkInterface1

az network public-ip create --resource-group newResource --name myStaticIP2 --allocation-method Static

az network nic create --resource-group newResource --name networkInterface2 --vnet-name myVirtualNetwork --subnet myFirstSubnet --network-security-group myNetworkSecurityGroup --public-ip-address mystaticIP2

az vm create --resource-group newResource --name wildflyVM --image UbuntuLTS --size B1ms --upgrade-policy-mode automatic --admin-username "adminUser" --generate-ssh-keys --nics netWorkInterface2


