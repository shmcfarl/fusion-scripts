#!/bin/bash
neutron ipsec-site-connection-delete --name t1_site_1
neutron vpn-service-delete --name vpn_service_1
neutron vpn-ipsecpolicy-delete ipsec_pol_1
neutron vpn-ikepolicy-delete ike_pol_1
