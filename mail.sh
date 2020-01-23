#!/bin/bash
folder=/home/$USER/Documents
OUTPUT="$(du -csh $folder |grep total | awk '{print $1}')"
echo "the total size ${OUTPUT}"
max="2147483648"
if [ $OUTPUT -gt $max ];
then
   echo "more"
else
   echo "less"
fi


