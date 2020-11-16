#!/usr/bin/env bash

url="https://www.moncashwebservice.com/sms/SimServerCurlContentForGrep.asp"
#phrase="no boxes connected to this bearerbox!"
phrase="box connections"

while true; do
  html=$(curl -sS $url)
  match_count=$(echo $html | grep -c "$phrase" -)

  if [ $match_count -gt 0 ] 
  then
    echo "$phrase"
    /usr/sbin/shutdown -r now
  fi	

  sleep 5
done