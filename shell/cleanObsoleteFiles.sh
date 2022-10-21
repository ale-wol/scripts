#!/bin/sh

# ----------------------------------------------------------------------
## Script to delete outdated Files
## Description: Delete all files with Suffix: $fileSuffix
##				that are older than $timeInDays in directory $dir
## author: Alexander Wolf
# ----------------------------------------------------------------------


## Config
dir=./dirToClean
fileSuffix='*.zip'
timeInDays=10


find $dir -name $fileSuffix -mtime +$timeInDays -type f -delete