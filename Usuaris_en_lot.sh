#!/bin/bash
#Només els usuaris sudo poden executar aquest script
if [[ ${UID} -ne 0 ]]
then
    echo "No tens permis per usar aquest script >:("
    exit 1
#Només es pot executar si hi ha 1 parametre, que ha de ser el fitxer on esta la informació dels usuaris
elif [[ ${#} -ne 1 ]]
then 
    echo "Numero de parametres ${#}"
    echo "Has d'introduir un paràmetre el qual ha de ser el fitxer de texte on estan els usuaris "
    exit 1
fi
input_file="users.txt"

while IFS= read -r line
do 
full_name=$(echo $line | cut -d ' ' -f 1-2)
username=$(echo $line | cut -d ' ' -f 1-2)
./crearUsuari.sh "$full_name" "$username"
done < "$input_file"

echo "Usuaris creats correctament"