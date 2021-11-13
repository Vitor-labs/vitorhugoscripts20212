#!/bin/bash
echo "Hello $USER"
echo "Today is $(date)"
echo "Number of user login: $(who | wc -l)"
echo "Calendar"
cal
echo "Disk Space Utilization"
df -h
echo "Free RAM"
free -m
echo "Network Connections"
netstat -tulpn
echo "Last logged users"
last | head -n 5
echo "CPU information"
cat /proc/cpuinfo
echo "Hard Disk information"
cat /proc/partitions
echo "Hard Disk space"
df -h
echo "Free and used space"
free -m