#!/bin/bash
if [[ ${#} -ne 1 ]]
then
    echo "Ha d'haver 1 paràmetre"
    exit 1
else
    N=${1}
fi 
I=1
FACT=${N}
while [[ I -lt N ]]
do
    FACT=$((FACT*I))
    I=$((I+1))
done
RESULT=$((FACT/(N-1)))
echo "El resultat es ${RESULT}"