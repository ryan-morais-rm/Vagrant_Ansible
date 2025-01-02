#!/bin/bash

ACESSOS_FILE="/dados/nfs/acessos"

if [ ! -f "$ACESSOS_FILE" ]; then
  touch "$ACESSOS_FILE"
fi

DATA_HORA=$(date "+%Y-%m-%d %H:%M")
NOME_LOGIN=$(whoami)
DEVICE_TTY=$(tty)
IP_REMOTO=$(who am i | awk '{print $5}' | tr -d '()')

echo "$DATA_HORA; $NOME_LOGIN; $DEVICE_TTY; $IP_REMOTO" >> "$ACESSOS_FILE"
