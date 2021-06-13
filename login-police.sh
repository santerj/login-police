#!/bin/sh

TOKEN=""   # my Telegram bot token
ID=""      # my Telegram chat id
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

HOST=$(hostname --fqdn)
DATE=$(date +"%a %F %T %Z")

if [ "$PAM_TYPE" != "close_session" ]; then
    notification="New login: $PAM_USER from $PAM_RHOST on $HOST at $DATE"
    curl -s -X POST $URL -d chat_id=$ID -d text="$notification" > /dev/null 2>&1
fi
