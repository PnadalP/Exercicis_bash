#!/bin/bash

COM=5
#He creat una variable per comparar, aixi si volem cambiar el nombre a comparar serà més fàcil
read -p "Introdueix un nombre " NUM
if [[ ${NUM} -eq ${COM} ]]
then 
    echo "Has introduit el nombre ${NUM}"
elif
    [[ ${NUM} -gt ${COM} ]]
then
    echo "Has introduit un nombre més gran que ${COM}"
else
    echo "Has introduit un nombre més petit que ${COM}"
fi