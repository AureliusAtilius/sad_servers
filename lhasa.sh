#!/bin/bash

count=$(cat /home/admin/scores.txt | wc -l)
sum=0
list=$(cat /home/admin/scores.txt | awk '{print $2}')

for i in $list
do 

sum=$(echo "scale=2; $sum + $i" | bc)
done


mean=$(echo  "scale=2; $sum / $count" | bc)
echo $mean > /home/admin/solution