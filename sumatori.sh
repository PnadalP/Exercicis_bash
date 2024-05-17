#!/bin/bash
nombre=10
i=0
sumatori=1
while [[ i -le nombre ]]
do
    sumatori=$((sumatori+i))
    i=$((i+1))
done
echo "el sumatori de 10 es: $((sumatori-1))"