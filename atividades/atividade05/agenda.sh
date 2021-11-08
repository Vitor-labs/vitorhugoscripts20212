#!/bin/bash
# Correção: 1,5
opcao=${1}
user=${2}
email=${3}
FILE=atividade05/agenda.sh

case ${opcao} in
    "adicionar")
        if [[ -f "$FILE" ]] 
        then
            echo "Arquivo criado!!!"
        fi
        echo "$user : $email" >> agenda.db
        echo "Usuário ${user} adicionado."
        exit 0
        ;;

    "remover")
        sed -i "/$user/d" agenda.db
        echo "Usuário ${user} removido."
        exit 0
        ;;
    
    "listar")
        while read line
        do echo $line
        done < agenda.db
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        exit 1
        ;;
esac
