#!/bin/bash
#Només els usuaris sudo poden executar aquest script
if [[ ${UID} -ne 0 ]]
then
    echo "No tens permis per usar aquest script >:("
    exit 1
#Només es pot executar si hi ha 2 paràmetres
elif [[ ${#} -ne 2 ]]
then 
    echo "numero de parametres ${#}"
    echo "Has d'introduir 2 parametres el 1r ha de ser el nom complet i el 2n el nom d'usuari "
    exit 1
fi
#El nom complet ha de ser el primer paràmentre
FULL_NAME=${1}
#El nom d'usuari ha de ser el següent paràmentre
USERNAME=${2}
#Generam una contrassenya
PASSWORD=$(date +%s%N | sha256sum | head -c8)
#Cream usuari
useradd -c "${FULL_NAME}" -m ${USERNAME}
#Si l'usuari ja existeix es surt del script
if  [[ ${?} -ne 0 ]]
then
    echo "No s'ha pogut crear l'usuari"
    exit 1
#Es crea l'usuari correctament
else
#S'introdueix l'usuari i contrassenya
echo "${USERNAME}:${PASSWORD}" | chpasswd
echo "Usuari ${USERNAME} creat correctament"
echo "La contrassenya de l'usuari ${USERNAME} es ${PASSWORD}"
#Aqui he fet que les contrassenyes es guardin a un arxiu per no oblidarme de elles
echo "La contrassenya de l'usuari ${USERNAME} es ${PASSWORD}" >> Passwords_usuaris.txt
echo "Quan entris com aquest usuari haurás de canviar la contrassenya"
#Feim que l'usuari hagi de canviar la contrassenya quan entri
chage -d 0 ${USERNAME}
exit 0
fi