#!/bin/bash
a=${1}
b=${2}
c=${3}
nuns='^[0-9]+$'

# Verifica se os valores são números
if ! [[ $a =~ $nuns ]] 
then
   echo "Opa!!! $a não é número." >&2
   exit 1
fi
if ! [[ $b =~ $nuns ]] 
then
   echo "Opa!!! $b não é número." >&2
   exit 1
fi
if ! [[ $c =~ $nuns ]] 
then
   echo "Opa!!! $c não é número." >&2
   exit 1
fi

# Verifica qual o maior dos 3
if [ $a \> $b ] && [ $a \> $c ]
then
    echo $a
elif [ $b \> $a ] && [ $b \> $c ]
then
    echo $b
else
    echo $c
fi 