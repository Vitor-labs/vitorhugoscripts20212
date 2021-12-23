# Correção: 0,0. Não faz nada. Tudo OK no AWS Academy.
#!/usr/bin/awk -f
BEGIN { 
   i = 1
}
{
    maiores[i] = (" "$2" "$1", "$3)
    i = i + 1
}
END {
    for (i in maiores) {
        printf "%s \n", maiores[i] | "sort -n -k3" 
    } 
}