# Questão 01 - 2,0 Pontos

Considere o arquivo auth.log (também disponível na pasta /home/compartilhado no servidor). Crie um arquivo logins.sh e o coloque na pasta atividades/atividade03 do seu repositório. Nele devem existir os comandos abaixo, um por linha:

    1. Um comando grep que encontre todas as linhas com mensagens que não são do sshd.
        R: grep -c -v 'sshd' auth.log

    2. Um comando grep que encontre todas as linhas com mensagens que indicam um login de sucesso via sshd cujo nome do usuário começa com letra j.
        R: egrep -c '(sshd:session): session opened for user j.' auth.log

    3. Um comando grep que encontre todas as vezes que alguém tentou fazer login via root através do sshd.
        R:

    4. Um comando grep que encontre todas as vezes que alguém conseguiu fazer login com sucesso nos dias 11 ou 12 de Outubro.
        R: egrep -c '^(Oct 1(1|2)|).{55}session opened' auth.log

* Só é permitido usar um único comando grep para cada item acima, sem pipes ou redirecionamentos de entrada e saída.