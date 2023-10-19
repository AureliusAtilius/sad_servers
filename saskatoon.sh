#!/bin/bash
ips=$(cat /home/admin/access.log | awk '{print $1}')
maximum=0
maxIP=""
check=0
for ip in $ips
do
    
    check=$(grep -c $ip /home/admin/access.log )
    if [[ $check -gt $maximum ]]
    then
        maximum=$check
        maxIP=$ip
    fi
done

echo $maxIP > /home/admin/highestip.txt


