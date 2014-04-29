wget http://download.cirros-cloud.net/0.3.1/cirros-0.3.1-x86_64-disk.img

glance image-create --name cirros-x86_64 --is-public True --disk-format qcow2 --container-format ovf --file cirros-0.3.1-x86_64-disk.img --progress