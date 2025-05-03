#!/bin/bash

LOG_PATH="/home/cia/project/share/log/project.log"

#check for the log file existence

if [ -f "$LOG_PATH" ]; then
    echo "log file esists"
else
    echo "log file does not exist"
fi

echo "log file started cleaning..."

#cleaning log older than 7days 

find "$LOG_PATH" -type -mtime +7 -exec rm -f {} \;

echo "cleared log older then 7 days"

