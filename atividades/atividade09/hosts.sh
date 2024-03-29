#!/bin/bash
# Correção: 0,3. Não fez as funções. Não implementou a busca reversa.
host=''
ip=''

usage() { echo "Modo de uso:
- adicionar ($0 -a hostname -i IP)
- remover   ($0 -d hostname)
- procurar  ($0 hostname)
- listar    ($0 -l)" 1>&2; exit 1; }

while getopts "a:i:d:p:l" o; do
    case "${o}" in
        'a')
            host=${OPTARG}
            echo "Adicionando host $host" 
            ;;
        'i')
            ip=${OPTARG}
            echo "Adicionando IP $ip para host $host"
            echo $host" "$ip >> hosts.db
            ;;
        'd')
            host=${OPTARG}
            echo "Removendo host $host"
            sed -i "/$host/d" hosts.db
            ;;
        'p')
            host=${OPTARG}
            echo "Procurando host $host"
            out=$(grep $host hosts.db)
            echo $out
            ;;
        'l')
            echo "Listando hosts"
            cat hosts.db
            ;;
        \?) 
            usage && exit 1
            ;;
    esac
done

