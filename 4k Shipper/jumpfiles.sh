#!/bin/bash
if [[ "$#" != 1 ]]; then
    echo "[Error] One argument required: Source, Destination in shell script"
    exit 1
fi

echo "The 1st argument is $1"

echo $(date -u) "Processing $1" >> jumpfiles.log

mv $1 "/var/media/10TB/" >> jumpfiles.log 
if [ $? -ne 0 ]
then
    echo "Error moving $1"  >> jumpfiles.log
fi

echo $(date -u) "Finished $1" >> jumpfiles.log

