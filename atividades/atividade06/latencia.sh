#!/bin/bash

arq=${1}

while read -r line
do 
    echo ${line}
    ping -c 1 ${line}

done < "$arq"
exit 0
