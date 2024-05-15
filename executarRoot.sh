#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
    echo "No tens permis per usar aquest script >:("
    exit 1
fi
echo "ets l'usuari root!"
exit 0