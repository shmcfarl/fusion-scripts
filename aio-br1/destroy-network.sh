#!/bin/bash
neutron router-gateway-clear os-router-1 Public_Network
neutron router-interface-delete os-router-1 Private_Net10_Subnet
neutron router-delete os-router-1
neutron subnet-delete --name Private_Net10_Subnet
neutron net-delete Private_Net10
neutron subnet-delete --name Public_Subnet
neutron net-delete Public_Network
neutron-netns-cleanup
