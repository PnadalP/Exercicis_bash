#!/bin/bash
if [[ ${#} -ne 1 ]]
then
    echo "Ha d'haver 1 paràmetre"
    exit 1
else
    ANY_NAIXEMENT=${1}
    ANY=$(date +%Y)
    read -p "Introdueix el teu nom: " NOM
    EDAT=$((ANY-ANY_NAIXEMENT))
    echo "${NOM} tens ${EDAT} d'anys"
fi