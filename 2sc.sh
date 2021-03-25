#!/bin/bash
echo "START" > os_info
echo "UNAME" >> os_info
uname -a >> os_info
lsb_release -a 2>/dev/null>> os_info
echo "IP INFO" >> os_info
ip link >> os_info
echo "RESOV.CONF" >> os_info
cat /etc/resolv.conf >> os_info
echo "SYSCTL.CONF" >>os_info
cat /etc/sysctl.conf >> os_info
echo "FIREWALL" >>os_info
sudo iptables -L -n >>os_info

