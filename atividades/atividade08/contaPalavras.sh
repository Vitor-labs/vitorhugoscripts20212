#!/bin/bash
#  Correção: 0,4. Não ordena a saída.
echo "Digite o nome do arquivo: "
read arquivo
echo $(egrep -o '\w+' $arquivo|sort|uniq -c)
