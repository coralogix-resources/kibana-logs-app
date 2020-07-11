#!/bin/sh
i=0;
while true; do
  echo "$i logging to my application $(date)" >> /var/log/my-app.log; i=$((i+1)); 
  logger "loggin to syslog at $(date)"
  sleep 1;
done