#!/usr/bin/awk -f

for read host in atividade10/ips.txt
do
    ping -c 10 host | awk 'BEGIN {FS="[=]|[ ]"} NR==2 {print $11}'
done