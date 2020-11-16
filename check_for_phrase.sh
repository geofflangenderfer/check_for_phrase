#!/usr/bin/env bash

url="https://espn.com"
phrase="Tom Brady"

while true; do
  html=$(curl -sS $url)
  match_count=$(echo $html | grep -c "$phrase" -)

  if [ $match_count -gt 0 ] 
  then
    echo "$phrase"
    /usr/sbin/shutdown -r now
  fi	

  sleep 1
done
