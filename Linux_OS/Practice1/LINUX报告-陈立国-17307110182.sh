#!/bin/bash
# 陈立国 17307110182

export LANGUAGE=en_US.UTF-8

BLUE=$(tput setab 4)
UNDERLINE=$(tput smul)
RESET=$(tput sgr0)

HOSTNAME=$(hostname)
USER=$(whoami)

tput init
echo "$BLUE System Information Report for $HOSTNAME $RESET"
echo "$BLUE Generated $(date '+%Y-%m-%d %H:%M'), by $USER $RESET"
echo
echo "$UNDERLINE 1. System Uptime $RESET"
uptime
echo 
echo "$UNDERLINE 2. Home Space Utilization ($USER) $RESET"
du -h -d 0 /home/$USER
echo
echo "$UNDERLINE 3. Memory Utilization $RESET"
free -h
echo 
echo "$UNDERLINE 4. File System Utilization $RESET"
df -H /home

exit 0
