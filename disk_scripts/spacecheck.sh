#!/bin/bash

#This script is for disk space reports

SERVER=$(hostname -f)

df -Ph | column -t |  mail -s "Shire Disk Report for $SERVER" youremailaddress@domain.com
