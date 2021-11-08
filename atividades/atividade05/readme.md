## Questão 01 - 0,5 Pontos
Faça um script chamado maiorDe3Verificado.sh que receba três números como parâmetros e retorne o maior. Não pode utilizar o comando sort. Esse script tem que reclamar caso um dos parâmetros não seja número. Por exemplo:

$ ./maiorDe3Verificado.sh 4 6 5
> 6
> 
$ ./maiorDe3Verificado.sh casa 10 11
>Opa!!! casa não é número.
                        
## Questão 02 - 1,5 Pontos
Nesta questão, você deve desenvolver uma agenda em um script chamado agenda.sh que gerencie nomes e e-mails em um arquivo de texto. Esse arquivo de texto deve ser chamado agenda.db e tem o seguinte formato:

1. João Marcelo : joao.marcelo@ufc.br
2. Jeandro Bezerra : jeandro@ufc.br
3. Alisson Barbosa:alisson.uece@gmail.com
4. Michel Sales : michelsb@gmail.com
                        
O script agenda.sh deve suportar três operações: adicionar, remover, listar. A operação, os nomes e e-mails devem ser passados por parâmetros. Além disso, o script deve avisar quando o arquivo agenda.db for criado pela primeira vez. Abaixo, um exemplo da execução:

Em outras palavras:

 - Adicionar: parâmetro adicionar e mais dois parâmetros, nome e e-mail.
 - Listar: apenas o parâmetro listar.
 - Remover: parâmetro remover e mais um parâmetro, o e-mail. No caso da     remoção de um usuário que não existe, o script deve apenas avisar o fato e não alterar o arquivo.

 Não precisa se preocupar em ordenar o arquivo agenda.db, a não que isso facilite sua tarefa.

## Running Tests

### ./agenda.sh listar
> Arquivo vazio!!!

### ./agenda.sh adicionar "João Marcelo" "joao.marcelo@ufc.br"
> Arquivo criado!!!
>
> Usuário João Marcelo adicionado.

### ./agenda.sh adicionar "Jeandro Bezerra" "jeandro@ufc.br"
> Usuário Jeandro Bezerra adicionado.

### ./agenda.sh adicionar "Michel Sales" "michelsb@gmail.com"
> Usuário Michel Sales adicionado.

### ./agenda.sh listar
> João Marcelo:joao.marcelo@ufc.br
> 
> Jeandro Bezerra:jeandro@ufc.br
> 
> Michel Sales: michelsb@gmail.com
### ./agenda.sh remover joao.marcelo@ufc.br
> Usuário João Marcelo removido.
### ./agenda.sh listar
> Jeandro Bezerra:jeandro@ufc.br
> 
> Michel Sales: michelsb@gmail.com
                        



  