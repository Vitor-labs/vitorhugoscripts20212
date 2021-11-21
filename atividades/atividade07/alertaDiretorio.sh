#!/bin/bash

#args
tempo=${1}
path=${2}

#variaveis de log
log_file="dirSensors.log"
temp=$(date +"%F %H:%M:%S")
count_files=0
for file in $path; do
    if [ -f $file ]; then
        count_files=$((count_files+1))
    fi
done

#verifica se o diretorio existe
if [ -d ${path} ]; then
    echo "[$temp]: Diretorio ${path} existe" >> ${log_file}
else
    echo "[$temp]: Diretorio ${path} nao existe" >> ${log_file}
    exit 0
fi
#verifica se o diretorio esta vazio
if [ -z "$(ls -A ${path})" ]; then
    echo "[$temp]: Diretorio ${path} esta vazio" >> ${log_file}
    exit 0
else
    echo "[$temp]: Diretorio ${path} nao esta vazio" >> ${log_file}
fi

while true; do
    sleep ${tempo}
    counter=$count_files

    for file in $path; do
        temp=$(date +"%F %H:%M:%S")
        #verifica alterações nos arquivos
        if [ -f ${file} ]; then
            #incrementa contador de arquivos
            counter=$((counter+1))
            #verifica se o arquivo foi modificado
            if [ -n "$(find ${file} -mmin -${tempo})" ]; then
                echo "[$temp] Alteração! $count_files->$counter. Alterados: $file" >> ${log_file}
                echo "[$temp]: Arquivo ${file} foi alterado" >> ${log_file}
            fi
        fi
    done
    #verifica se o numero de arquivos no diretorio é menor que o contador
    if [ $counter > $count_files ]; then
        echo "[$temp] Alteração! $count_files->$counter. Removidos: $file" >> ${log_file}
        echo "[$temp]: Arquivo ${file} foi removido" >> ${log_file}
    fi
    #verifica se o numero de arquivos no diretorio é maior que o contador
    if [ $counter < $count_files ]; then
        echo "[$temp] Alteração! $count_files->$counter. Adicionados: $file" >> ${log_file}
        echo "[$temp]: Arquivo ${file} foi adicionado" >> ${log_file}
    fi
done