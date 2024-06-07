#!/bin/bash
read -p "numero de moixos?" MOIXOS
read -p "Numero d'ocells?" OCELLS

POTES=$(((MOIXOS*4)+(OCELLS*2)))
echo "En total hi ha ${POTES} potes."