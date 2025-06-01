#!/bin/bash  #shebang this is a bash script

THRESHOLD=80

#--otput=source,pcent,target: This option specifies the output format of the df command.
# -x tmpfs -x devtmpfs: This option excludes temporary file systems from the output.
# tail -n +2: This option skips the first line of the output, which is usually the header line.
# while read line -r line: This reads each line of the output and processes it in a loop.

df -h --output=source,pcent,target -x tmpfs -x devtmpfs | tail -n +2 | while read -r line; do

# Extract the usage percentage and mount point from each line 

USAGE=$(echo "$line" | awk '{print $2}' | tr -d '%' )

MOUNT_POINT=$(echo "$line" | awk '{print $3}')
 if [ $"USAGE" -ge "$THRESHOLD"] ; then
    echo "Warning: Disk usage on $MOUNT_POINT is at ${USAGE}%"
    echo "Consider cleaning up space on $MOUNT_POINT"
 else
    echo "Disk usage on $MOUNT_POINT is at ${USAGE}%, which is below the threshold."
 fi
done

