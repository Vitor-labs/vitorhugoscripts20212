# Questão 01 - 1,0 Ponto
Escreva um script chamado *alertaDiretorio.sh* que recebe como parâmetros um valor inteiro que serve como intervalo de tempo em segundos e um nome que indica o caminho de um diretório.

A cada intervalo, a quantidade de arquivos em um diretório será analisada. Caso a quantidade de arquivos se altere entre duas verificações, o script deve atualizar um arquivo chamado dirSensors.log com as seguintes informações:

 * A data que a alteração foi percebida.
 * Quantos arquivos existiam.
 * Quantos existem agora.
 * Quais foram alterados, adicionados ou removidos.
  
Na mesma pasta da atividade, crie um diretório chamado diretorioMonitorado para testar.

Para ajudar a testar, você pode deixar seu script executando em uma sessão screen ou tmux, monitorando o diretório a cada 5 segundos. 
## Exemplo de execução:

$ ./alertaDiretorio.sh 5 diretorioMonitorado
> [25-01-2021 12:59:51] Alteração! 3->2. Removidos: notas.txt
> 
> [25-01-2021 13:04:51] Alteração! 2->4. Adicionados: a.txt, b.txt
> 
> [25-01-2021 13:09:51] Alteração! 4->3. Removidos: a.txt
> 
> [25-01-2021 13:14:51] Alteração! 3->2. Removidos: b.txt