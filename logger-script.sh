#!/bin/sh
# 2020-07-11T19:46:08+05:30 - INFO - DESKTOP-0SV07OJ - app-01 - 2 - logging into application 01
i=0;
timestamp=$(date --iso-8601=seconds);
loglevel_01="INFO"
loglevel_02="WARN"
host=$(hostname)
message_01="logging into application 01"
message_02="logging into application 02"

while true; do
  echo "$timestamp - $loglevel_01 - $host - app-01 - $i - $message_01" >> /var/log/my-app-01.log; 
  echo "$timestamp - $loglevel_02 - $host - app-02 - $i - $message_02" >> /var/log/my-app-02.log; 
  i=$((i+1)); 
  sleep 1;
done