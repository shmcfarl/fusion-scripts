#!/bin/bash
neutron vpn-ikepolicy-create ike_pol_1
neutron vpn-ipsecpolicy-create ipsec_pol_1
neutron vpn-service-create --name vpn_service_1 os-router-1 Private_Net10_Subnet
neutron ipsec-site-connection-create --name t1_site_1 --vpnservice-id vpn_service_1 --ikepolicy-id ike_pol_1 --ipsecpolicy-id ipsec_pol_1 --peer-address 192.168.82.10 --peer-id 192.168.82.10 --peer-cidr 10.10.20.0/24 --psk Cisco123

