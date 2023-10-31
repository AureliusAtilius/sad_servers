#!/bin/bash
TOTAL=0
SECRET=0
for FILE in /home/admin/*.txt
do
    Count=$( grep -c Alice )
    echo $Count
    ((TOTAL+=$Count))
    if [ $Count -eq 1 ]
    then
        #SECRET=$(awk 'BEGIN{FS="Alice  *"}{sub(/ .*/,"",$2);print $2}' $FILE)
        SECRET=$( grep -A 1 Alice $FILE | grep -o '[0-9]*' )
    fi
done

echo -n $TOTAL > /home/admin/solution
echo $SECRET >> /home/admin/solution
