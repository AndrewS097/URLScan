#!/bin/bash

echo What is the text file you were like to scan?
read textFile



while IFS= read -r line
do
  curlResponse=$(curl --max-time 5.5 -s -o /dev/null -w "%{http_code}" "$line")
  echo  "IP Address: |$line| Response Code: |$curlResponse"
done < "$textFile"
