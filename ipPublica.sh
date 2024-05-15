#!/bin/bash
IP_PUBLICA=$(curl ifconfig.me)
echo "La meva IP Publica és ${IP_PUBLICA}" > ip_publica.txt 