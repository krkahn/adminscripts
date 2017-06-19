#!/bin/bash

#################################################################################################
# usage: ./directory_report.sh N
# N is the number of files you want to list from the directory. 
# 
# This will run through the current directory and recursively find, sort and print the N largest
# files in human readable format
#
#################################################################################################

AMOUNTOFFILES=$1
find . -type f -print0 | xargs -0 du -h | sort -hr | head -$AMOUNTOFFILES
