
#!/bin/bash
# Correção: 0,0. Era para ter alterado o programa, não feito um novo.

echo "Digite o primeiro numero: "
read num1
echo "Digite o segundo numero: "
read num2
echo "Digite a operacao: "
read operacao

case $operacao in
    '+')
        echo $num1 + $num2 | bc
        ;;
    '-')
        echo $num1 - $num2 | bc
        ;;
    'x')
        echo $num1 \* $num2 | bc
        ;;
    '/')
        echo $num1 / $num2 | bc
        ;;
    *)
        echo "Operacao invalida"
        ;;
esacs