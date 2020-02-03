#!/bin/bash

wget -O versions.txt http://yoko.ukrtux.com:8899/versions.txt
cat versions.txt| sort| uniq -c| sort -n| head -n 4sort.sh
