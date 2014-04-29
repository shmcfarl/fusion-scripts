#!/bin/bash
neutron net-create Public_Network --router:external=True

neutron subnet-create --name Public_Subnet --allocation-pool start=192.168.82.10,end=192.168.82.254 Public_Network 192.168.82.0/24

neutron net-create Private_Net20
neutron subnet-create --name Private_Net20_Subnet Private_Net20 10.10.20.0/24 --dns_nameservers list=true 8.8.8.8 8.8.4.4

neutron router-create os-router-2
neutron router-interface-add os-router-2 Private_Net20_Subnet

neutron router-gateway-set os-router-2 Public_Network

neutron security-group-rule-create --protocol icmp --direction ingress default
neutron security-group-rule-create --protocol tcp --port-range-min 22 --port-range-max 22 --direction ingress default


#nova boot --image cirros-x86_64 --flavor m1.tiny --nic net-id= "testVM"
