## Questão 01 - 1,0 Ponto

Vamos criar um script chamado hosts.sh que nos ajude a relacionar nomes de máquinas à IPs.

O script deve guardar em um arquivo chamado hosts.db um par (nomedamaquina,IP) para cada entrada.

Você deve criar as seguintes funções para manipular o arquivo que são  invocadas com os parâmetros indicados:
 - adicionar (parâmetros -a hostname -i IP)
 - remover (parâmetro -d hostname)
 - procurar (parâmetro hostname)
 - listar (parâmetro -l)

<strong>Você precisa obrigatoriamente utilizar o comando getopts para tratar os parâmetros de entrada.</strong>

### Exemplo de execução do script:
> $ ./hosts.sh -a routerlab -i 192.168.0.1
> 
> $ ./hosts.sh -a lab01 -i 192.168.0.100
> 
> $ ./hosts.sh -a lab02 -i 192.168.0.101
> 
> $ ./hosts.sh -l routerlab 192.168.0.1
> 
> lab01     192.168.0.100
> 
> lab02     192.168.0.101
> 
> lab03     192.168.0.102
>
> $ ./hosts.sh -d routerlab
> 
> $ ./hosts.sh -d lab01
> 
> $ ./hosts.sh -l
> 
> lab02     192.168.0.101
> 
> lab03     192.168.0.102
> 
> $ ./hosts.sh lab02
> 
> 192.168.0.101
> 
> $ ./hosts.sh -r 192.168.0.101
> 
> lab02
                          
