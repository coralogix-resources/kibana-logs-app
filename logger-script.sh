#!/bin/sh

i=0;
loglevel_01="INFO"
loglevel_02="WARN"
host=$(hostname)
message_01="Log message generated by APP-01"
message_02="Log message generated by APP-02"

while true; do
  timestamp=$(date --iso-8601=seconds);
  
  echo "$timestamp - $loglevel_01 - $host - app-01 - $i - $message_01" >> /var/log/my-app-01.log; 
  echo "$timestamp - $loglevel_02 - $host - app-02 - $i - $message_02" >> /var/log/my-app-02.log; 
  
  i=$((i+1)); 
  sleep 1;
done
