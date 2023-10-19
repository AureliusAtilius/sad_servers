#!/bin/bash
ips=$(cat /home/admin/access.log | awk '{print $1}')
maximum=$0
maxIP=""
check=$0
for ip in $ips
    do
    echo $ip
    check=$(grep $ip /home/admin/access.log | wc -l)
    if [$check -gt $maximum]
    then
        maximum=$check
        maxIP=$ip
    fi
    done 

echo $maxIP > /home/admin/highestip.txt


