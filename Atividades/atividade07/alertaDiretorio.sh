#!bin/bash

#args
temp=${1}
path=${2}

#variaveis de log
log_file="dirSensors.log"
date="$(date +%s%N)"

while true; do
    sleep ${temp}
    #verifica se o diretorio existe
    if [ -d ${path} ]; then
        echo "Diretorio ${path} existe" >> ${log_file}
    else
        echo "Diretorio ${path} nao existe" >> ${log_file}
    fi
    #verifica se o diretorio esta vazio
    if [ -z "$(ls -A ${path})" ]; then
        echo "Diretorio ${path} esta vazio" >> ${log_file}
    else
        echo "Diretorio ${path} nao esta vazio" >> ${log_file}
    fi
done