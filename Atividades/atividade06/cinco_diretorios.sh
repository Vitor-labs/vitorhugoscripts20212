#!/bin/bash

#diretorio inical
mkdir "cinco"
cd "cinco"

for i in $(seq 1 5); do
    mkdir "dir$i"
    cd "dir$i" #inicia interação de cada diretorio
    for j in $(seq 1 4); do
        touch "arq$j"
        for k in $(seq 1 $j); do
            echo "$j" >> "arq$j"
        done
    done
    cd .. #retorna a cinco no fim de cada interação
done