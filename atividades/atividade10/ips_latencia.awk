#!/usr/bin/awk -f
# Correção: 0,0. Não deveria ter feito um shell script que usa um comando awk, mas sim um programa awk que usasse um comando shell.
# A execução de awk -f ips_latencia.awk /home/joaomarcelo/alunos/scripts/ips.txt só gera erros.
for read host in atividade10/ips.txt
do
    ping -c 10 host | awk 'BEGIN {FS="[=]|[ ]"} NR==2 {print $11}'
done