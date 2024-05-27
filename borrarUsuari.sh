#!/bin/bash
#Només els usuaris sudo poden executar aquest script
if [[ ${UID} -ne 0 ]]
then
    echo "No tens permis per usar aquest script"
    exit 1
#Per executar has d'introduir el nom de l'usuari
elif [[ ${#} -gt 2 || ${#} -eq 0 ]]
then 
    echo "Numero de parametres ${#}"
    echo "Has d'introduir o 1 paràmetre per indicar el nom d'usuari o 2 per introduir el nom d'usuari i si vols esborrar el home "
    exit 1
fi
    USER_NAME=${1}
if [[ ${#} == Y ]]
then
    userdel -r ${USER_NAME}
else 
    userdel ${USER_NAME}
fi