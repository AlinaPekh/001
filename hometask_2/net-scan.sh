#!/bin/bash

echo "List of hosts with open ports:" > output.txt

for ip in $@ ; do

echo "Scanning $ip..."

</dev/tcp/$ip/443

if [ "$?" -ne 1 ]; then

  echo "Port 443 on $ip is open" >> output.txt

fi

</dev/tcp/$ip/80

if [ "$?" -ne 1 ]; then

  echo "Port 80 on $ip is open" >> output.txt

fi

done

echo "========================================"

cat output.txt
