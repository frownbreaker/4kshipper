#!/bin/bash
if [[ "$#" != 1 ]]; then
    echo "[Error] One argument required: Source, Destination in shell script"
    exit 1
fi

echo "The 1st argument is $1"

echo $(date -u) "Processing $1" >> jumpdir.log

mv $1 "/var/media/10TB/4k" >> jumpdir.log 
if [ $? -ne 0 ]
then
    echo "Error moving $1"  >> jumpdir.log
fi

echo $(date -u) "Finished $1" >> jumpdir.log

