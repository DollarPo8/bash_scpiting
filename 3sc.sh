#!/bin/bash
echo "START" > audit.txt
echo "UPTIME" >> audit.txt
uptime | awk '{print $1,$2}' >> audit.txt
echo "CURRNT USERS" >> audit.txt
who >> audit.txt
echo "RECENT LOGINS" >> audit.txt
last >> audit.txt
echo "TOP-10 PROCESSES BY RAM/CPU USAGE" >> audit.txt
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> audit.txt
echo "OPEN TCP/UDP PORTS" >> audit.txt
sudo netstat -nut >> audit.txt
echo "VMMEMORY USAGE" >> audit.txt
vmstat >> audit.txt
echo "DISK USAGE" >> audit.txt
df -h >> audit.txt
