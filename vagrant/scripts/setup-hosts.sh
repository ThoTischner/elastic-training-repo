#!/bin/bash
set -e
IFNAME=$1
ADDRESS="$(ip -4 addr show "$IFNAME" | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"
sed -e "s/^.*${HOSTNAME}.*/${ADDRESS} ${HOSTNAME} ${HOSTNAME}.local/" -i /etc/hosts

# Update /etc/hosts about other hosts
cat >> /etc/hosts <<EOF
192.168.5.11  elastic-node-1
192.168.5.12  elastic-node-2
192.168.5.13  elastic-node-3
192.168.5.14  elastic-node-4
192.168.5.15  elastic-node-5
EOF
