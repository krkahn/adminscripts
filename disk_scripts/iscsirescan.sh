#!/bin/bash

#This is a script to rescan for ISCSI volumes and cleanup any that have been removed
#This script is used, for example, on Z1MDMAPP1.hps-shi.local

iscsiadm -m discoverydb -p 172.114.0.10 -t st -o new delete -D
