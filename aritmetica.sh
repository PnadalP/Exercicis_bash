#!/bin/bash

read -p "Introdueix el valor de X: " X
read -p "Introdueix el valor de Y: " Y

echo "Has introduit els valors ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
MULT=$((X*Y))
echo "${X}*${Y}=${MULT}"
DIV=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${DIV}"