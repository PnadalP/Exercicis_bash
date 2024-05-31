#!/bin/bash
#Comprovació dels paràmetres
if [[ ${#} -eq 1 ]]
then
    QUANTS=${1}
elif [[ ${#} -gt 1 ]]
then
    echo "Només pot haver un paràmetre"
    exit 1
else
    QUANTS=10
fi
#Cridam a la url amb el paràmetre donat
URL="https://php.enguillem.es/random.php?num=${QUANTS}&min=1&max=100&col=1&base=10&format=plain&rnd=new"
NUMEROS=$(curl ${URL})
SUMA=0
MAXIM=0
MINIM=100
#Obrim un loop per fer diverses operacións
for N in ${NUMEROS}
do  
    #Llistam els nombres
    echo "NUMERO ${N}"
    #Feim el sumatori
    SUMA=$((SUMA+N))
    #Cercam el nombre més gran
    if [[ ${N} -gt MAXIM ]]
    then
        MAXIM=${N}
    fi
    #Cercam el nombre més petit
    if [[ ${N} -lt MINIM ]]
    then
        MINIM=${N}
    fi
done
echo "La suma dels numeros generats es ${SUMA}"
echo "El nombre maximo generat es ${MAXIM}"
echo "El nombre mínim generat es ${MINIM}"
#Usant el sumatori feim la mitjana
MITJANA=$((SUMA/QUANTS))
echo "La mitjana dels numeros generats es ${MITJANA}"
#Enviam la mitjana al bot de telegram
/home/pau/bin/telegram_bot_2.sh "${MITJANA}"