#!/bin/bash
neutron net-create Public_Network --router:external=True

neutron subnet-create --name Public_Subnet --allocation-pool start=192.168.81.10,end=192.168.81.254 Public_Network 192.168.81.0/24

neutron net-create Private_Net10
neutron subnet-create --name Private_Net10_Subnet Private_Net10 10.10.10.0/24 --dns_nameservers list=true 8.8.8.8 8.8.4.4

neutron router-create os-router-1
neutron router-interface-add os-router-1 Private_Net10_Subnet

neutron router-gateway-set os-router-1 Public_Network

neutron security-group-rule-create --protocol icmp --direction ingress default
neutron security-group-rule-create --protocol tcp --port-range-min 22 --port-range-max 22 --direction ingress default
