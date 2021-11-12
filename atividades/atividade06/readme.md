## Questão 01 - 1,0 Ponto
Você vai desenvolver o script latencia.sh. Esse script vai receber como parâmetro o nome de um arquivo de texto, contendo um endereço IP por linha.

O script deve usar o comando ping para enviar dez pacotes ICMP para cada endereço do arquivo, calculando o valor médio do tempo de resposta. Ao final, deve imprimir uma lista de IP ordenada do menor para o maior tempo médio de resposta, informando além do endereço, o tempo de resposta médio.

Abaixo um exemplo da execução:

<strong>*os IPs abaixo são fantasia.*</strong>
- $ cat enderecos_ip.txt
  > 8.8.8.8
  >
  > 192.168.0.1
  >
  > 54.230.57.207

- $ ./latencia.sh enderecos_ip.txt
  > 192.168.0.1 11.1ms
  >
  > 54.230.57.207 55.4ms
  >
  > 8.8.8.8 94.0ms
                        
## Questão 02 - 1,0 Ponto
Nesta questão, o nome do script será cinco_diretorios.sh. Ao ser executado, o script deve realizar as seguintes tarefas:

1. Criar um diretório chamado cinco.
2. Criar cinco subdiretórios cinco/dir1 até cinco/dir5.
3. Em cada subdiretório, faça quatro arquivos, arq1.txt até arq4.txt. 
   * O arquivo arq1.txt deve ter uma linha contendo apenas o dígito 1. 
   * O arquivo arq2.txt deve ter duas linhas, cada uma contendo o dígito 2. 
   * O arquivo arq3.txt deve ter três linhas, cada uma contendo o dígito 3. 
   * E por fim, O arquivo arq4.txt deve ter quatro linhas, cada uma contendo o dígito 4.
  
_*Você não pode repetir chamadas ao mkdir 6 vezes e executar 20 comandos para criar os 20 arquivos. Você deve obrigatoriamente utilizar laços aninhados para criar a estrutura.*_

**Não carregue a estrutura de diretórios no repositório, apenas o script.**

