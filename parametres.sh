#!/bin/bash
if [[ ${#} -ne 2 ]]
then 
    echo "numero de parametres ${#}"
    echo "Has d'introduir 2 parametres"
    exit 1
else
echo "numero de parametres ${#}"
NOM_SCRIPT=${0}
echo "has executat el script ${NOM_SCRIPT}"
USERNAME=${1}
echo "el teu username es ${USERNAME}"
PASSWORD=${2}
echo "EL TEU PASSWORD ES ${PASSWORD}"
fi