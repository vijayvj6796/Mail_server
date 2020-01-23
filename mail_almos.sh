#!/bin/bash
folder=/home/$USER/RAj #folder to be monitored
OUTPUT="$(du -s -B1 $folder| awk '{print $1}')" #prints output of folder size in bytes
echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }'


TO_ADDRESS='vijayvj756@gmail.com vijay.k@optit.co'
SUBJECT='FOLDER SIZE'
BODY="the folder size threshold has been raised"



if [ $OUTPUT -gt  3221225472 ] #comparin folder size with thresold size
then
   echo ${BODY} | mail -s ${SUBJECT} ${TO_ADDRESS} 
else
   echo "less"
fi

