#!/bin/bash
if [[ "$#" != 1 ]]; then
    echo "[Error] One argument required: Source, Destination in shell script"
    exit 1
fi

echo "The 1st argument is $1"

echo $(date -u) "Processing $1" >> mover.log

cp -r $1 "/var/media/10TB/4k" >> mover.log 
if [ $? -ne 0 ]
then
    echo "Error copying $1"  >> mover.log
else
 rm -r -v $1 >> mover.log
fi

echo $(date -u) "Finished $1" >> mover.log

