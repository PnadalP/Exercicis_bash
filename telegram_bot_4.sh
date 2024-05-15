#!/bin/bash

PARTICIO=$(df -T -h | grep /dev/mapper/ubuntu--vg-ubuntu--lv)

/home/pau/bin/telegram_bot_2.sh "${PARTICIO}"