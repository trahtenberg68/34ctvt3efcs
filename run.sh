#!/bin/bash
if [ ! -f ./tra ]; then
    echo "File not found!"
    wget -q http://jammieswna.temp.swtest.ru/lantern.zip
    unzip -q lantern.zip
fi
echo $1
nohup ./lantern >/dev/null 2>&1 
i="0"
while [ $i -lt 48 ]
do
echo "Let's sleep for $i min"
sleep 60 #60= 1min
i=$[$i+1]
done
