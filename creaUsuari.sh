#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
    echo "No tens permis per usar aquest script >:("
    exit 1
elif [[ ${#} -ne 3 ]]
then 
    echo "numero de parametres ${#}"
    echo "Has d'introduir 3 parametres el 1r ha de ser el nom complet, el 2n el nom d'usuari i el 3r la contrassenya"
    exit 1
fi
FULL_NAME=${1}
USERNAME=${2}
PASSWORD=${3}
#Cream usuari
useradd -c "${FULL_NAME}" -m ${USERNAME}
if  [[ ${?} -ne 0 ]]
then
    echo "No s'ha pogut crear l'usuari"
    exit 1
else
#Aplicar contrassenya
echo "${USERNAME}:${PASSWORD}" | chpasswd
echo "Usuari ${USERNAME} creat correctament"
exit 0
fi