#!/bin/bash

arq=${1}

IFS=$'\n'
while read -r line
do
    echo $line
    ts=$(date +%s%N)
    ping -c 10 $line
    time=$((($(date +%s%N) - $ts)/1000000))
    echo "$line : $time ms" >> test.log 

done < "$arq"
exit 0


