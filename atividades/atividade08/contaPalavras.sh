#!/bin/bash
echo "Digite o nome do arquivo: "
read arquivo
echo $(egrep -o '\w+' $arquivo|sort|uniq -c)
