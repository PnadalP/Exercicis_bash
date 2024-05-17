#!/bin/bash
Inici=0
Final=100
Multiples=$Inici
while [[ Multiples -lt Final ]]
do
Multiples=$((Multiples+2))
echo "$Multiples"
done