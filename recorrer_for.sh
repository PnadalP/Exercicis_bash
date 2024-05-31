#!/bin/bash
if [[ ${#} -lt 3 || ${#} -gt 10 ]]
then 
    echo "aquest parametre admet entre 3 i 10 paràmetres"
    exit 1
else
    NUMEROS=${@}
    SUMA=0
    for N in $NUMEROS
    do
        SUMA=$((SUMA+N))
    done
    echo $SUMA
fi