#!/bin/bash

read -p "Quin es el teu nom? " NOM 
if [[ ${NOM} == "Pau" ]]
then
    echo "Ets en Pau"
else
    echo "Ets en ${NOM}"
fi