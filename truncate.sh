#!/bin/bash

# specifiying the log path 
LOG_PATH="/home/cia/project/shared/logs"

# checking if the log file exists are not
if [ -f "$LOG_PATH" ] ; then
    echo "tuncating $LOG_PATH"
    # : > is to truncat the file
    : > "$LOG_PATH"
    else
    echo " log file doed not exist"
fi