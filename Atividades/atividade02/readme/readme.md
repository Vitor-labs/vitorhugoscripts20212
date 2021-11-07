
# Atividade 2

## Parte 1:

usei um script python para formatar os nomes dos professores e disciplinas, para os nomes dos arquivos a criar.

### Auxiliar

```python
profes = open("professores.txt", 'r', encoding="utf8")
nomes = profes.readlines()
profs = open("nomes.txt", 'w')

for nome in nomes:
    nome = nome.replace(' ', '_')
    nome = nome.replace('\n', '.txt\n')
    profs.write(nome)
```

## Parte 2:

Como o intuito da Atividade era criar tudo manualmente pelo terminal usei o nano manualmente para criar cada um dos arquivos, apenas pegando o nome e colando. 

### Screenshots
![App Screenshot](SS.png)

![App Screenshot](SS2.png)

## Parte 3:

Aqui é a criação dos links, também feita de forma manual pelo terminal.
![App Screenshot](SS3.png)

![App Screenshot](SS4.png)

### Aqui por ultimo todos os links criados.
![App Screenshot](SS5.png)