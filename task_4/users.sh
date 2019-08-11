#!/bin/sh

while read LINE; do
    LOGIN="$(echo -e "$LINE" | awk -F '\(' '{print $1}' | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')"
    COMMENT="$(echo -e "$LINE" | awk -F '\)' '{print $2}' | sed -e 's/^[[:space:]]*//')"
    sudo useradd -c "$COMMENT" $LOGIN
done < users_list.txt
