#!/bin/bash
nombre=${1}
i=1
factorial=1
while [[ i -le nombre ]]
do
    factorial=$(echo "$factorial*$i" | bc)
    i=$((i+1))
done
echo "el factorial de $nombre es: $factorial"