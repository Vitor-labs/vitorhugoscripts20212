#!/bin/bash

nuns=()
ops=()
re='^[0-9]+([.][0-9]+)?$'

echo 'digite "=" para sair'
while true; do
    read entrada
    if [[ $entrada = "=" ]]; then
        break
    else if ! [[ $entrada =~ $re ]] ; then
        ops=($entrada)
    else
        nuns=($entrada)
    fi
    fi
done

retorno=0
declare -i num1=${nuns[0]}

for i in ${ops[@]}; do
    if [[ $i = "+" ]]; then
        declare -i num2=${nuns[1]}
        $retorno=$($num1 + $num2 | bc)
        num1=$retorno
        nuns=(${nuns[@]:2})
    elif [[ $i = "-" ]]; then
        declare -i num2=${nuns[1]}
        $retorno=$($num1 - $num2 | bc)
        num1=$retorno
        nuns=(${nuns[@]:2})
    elif [[ $i = "*" ]]; then
        declare -i num2=${nuns[1]}
        retorno=$($num1 \* $num2 | bc)
        num1=$retorno
        nuns=(${nuns[@]:2})
    elif [[ $i = "/" ]]; then
        declare -i num2=${nuns[1]}
        retorno=$($num1 / $num2 | bc)
        num1=$retorno
        nuns=(${nuns[@]:2})
    fi
done
echo $retorno
