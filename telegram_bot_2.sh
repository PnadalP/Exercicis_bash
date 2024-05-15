#!/bin/bash
# Notificació de missatges del sistema per Telegram usant un Bot
if [[ ${#} -ne 1 ]]
then
echo "has de tenir un parametre"
exit1
else
TOKEN="6780139024:AAFQf_5LkpyqLEkKmI3zSbPeRWCWsyEfico"
ID="6010406772"
MENSAJE=${1}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
fi
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"