#!/bin/bash

nuns=()
ops=()
re='^[0-9]+([.][0-9]+)?$'

echo 'digite "=" para sair'
while true; do
    read entrada
    if [[ $entrada = "=" ]]; then
        break
     ! [[ $entrada =~ $re ]] ; then
        ops=($entrada)
    else
        nuns=($entrada)
    fi
done

retorno=0
num1=${nuns[0]}
num2=${nuns[1]}

for i in ${ops[@]}; do
    if [[ $i = "+" ]]; then
        retorno=$(echo $num1 + $num2 | bc)
    elif [[ $i = "-" ]]; then
        retorno=$(echo $num1 - $num2 | bc)
    elif [[ $i = "*" ]]; then
        retorno=$(echo $num1 \* $num2 | bc)
    elif [[ $i = "/" ]]; then
        retorno=$(echo $num1 / $num2 | bc)
    fi
    nuns=(${nuns[@]:2})
    num1=$retorno
done
echo $retorno