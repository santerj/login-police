#!/bin/sh

TOKEN=""   # my Telegram bot token
ID=""      # my Telegram chat id
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
MESSAGE=$@

curl -s -X POST $URL -d chat_id=$ID -d text="$@" > /dev/null 2>&1
