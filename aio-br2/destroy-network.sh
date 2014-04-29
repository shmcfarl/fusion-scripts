#!/bin/bash
neutron router-gateway-clear os-router-2 Public_Network
neutron router-interface-delete os-router-2 Private_Net20_Subnet
neutron router-delete os-router-2
neutron subnet-delete --name Private_Net20_Subnet
neutron net-delete Private_Net20
neutron subnet-delete --name Public_Subnet
neutron net-delete Public_Network
neutron-netns-cleanup

