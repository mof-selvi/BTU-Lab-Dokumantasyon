#!/bin/bash
sudo echo Please enter the new hostname, like lab2pc2...
read newhn

sudo hostname $newhn

echo "cat > /etc/hostname <<EOF
${newhn}
EOF" | sudo -s

echo "cat > /etc/hosts <<EOF
127.0.0.1	localhost
127.0.1.1	${newhn}

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF" | sudo -s

sudo update-grub

