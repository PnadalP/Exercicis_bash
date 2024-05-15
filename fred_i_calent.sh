#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
########################################################
# Escriu el teu codi aqui
########################################################
i=1
for i in {1..3} ;do
read -p "Tens 3 intents per endivinar el nombre del 1 al 10: " x
if [ $x -eq $adivina ]
then echo "eureka!!"
break
elif [ $x -gt $adivina ]
then
echo "Calent, has usat el intent ${i}"
elif [ $x -lt $adivina ]
then
echo "Fred, has usat el intent ${i}"
fi
done
if [[ $x -ne $adivina ]]
then
########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"
fi