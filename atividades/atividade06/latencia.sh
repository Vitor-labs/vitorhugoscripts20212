#!/bin/bash

arq=${1}

while read -r line
do 
    ping -c 10 $line

done < "$arq"
exit 0
