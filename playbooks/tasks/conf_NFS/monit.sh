#!/bin/bash

# Copyright (C) 2025 Julio Caio | Ryan de Morais

# Description: Every user who accesses the system must have their information appended to the
# end of the file /dados/nfs/acessos, with the following details separated by a semicolon (;):
# date_time; login_name; device_tty; remote_ip.

# -----------------------------------------------------------------------------
#                                  MAIN
# -----------------------------------------------------------------------------

DATE_HOUR=$(date "+%Y-%m-%d %H:%M")
LOGIN=$(whoami)
DEVICE_TTY=$(tty)
REMOTE_IP=$(who am i | awk '{print $5}' | tr -d '()')
FILE_ACCESS="/dados/nfs/acessos"

echo "$DATE_HOUR; $LOGIN; $DEVICE_TTY; $REMOTE_IP" >> "$FILE_ACCESS"
