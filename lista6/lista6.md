# Questão 1
Dada as seguintes declarações de linguagem Assembly, indique se elas estão sintaticamente corretas ou incorretas. Se incorreto, indique o que está errado com a declaração:

> Correção: 0,5

## Opção a
```asm
or eax, ebx

```

### Resposta:
Correto

## Opção b

```asm
xor al, ah
```
### Resposta:
Correto

## Opção c

```asm
rotate al, 1
```

### Resposta:
Incorreto, pois a instrução "rotate" não existe.

## Opção d

```asm
shr ax, 2
```

### Resposta:
Correto

## Opção e
```asm
sar eax, 3
```
### Resposta:
Correto

## Opção f
```asm
xchg dog, cat
```
### Resposta:
Incorreto, não é possível usar a instrução "xchg" entre memórias.

## Opção g
```asm
ror exc, 1
```
### Resposta:
Correto.

## Opção h
```asm
lol dx, 8
```

### Resposta:
Incorreto, não existe a instrução "lol". A instrução usada para rotação à esquerda é rol.

# Questão 2
Dada as seguintes instruções aritméticas em C, implemente elas usando as instruções shift aritméticas, onde possível:

> Correção: 0,5

## Opção a
```c
answer = num - total / 32;
```
### Resposta:
```asm
     mov eax, num
     sub eax, total
     sar eax, 5
     mov answer, eax
```

## Opção b
```c
result = (amount + number) * 4;
```

### Resposta:

```asm
     mov eax, amount
     add eax, number
     sal eax, 2
     mov result, eax
```

## Opção c
```c
x = y * 8 + z / 2; 

```

### Resposta:

```asm
     sal y, 3
     mov eax, y
     add eax, z
     sar eax, 1
     mov x, eax
```

## Opção d
```c
a = a / 16 – b * 6;
```

### Resposta:

```asm
     sar a, 4
     mov ebx, a
     mov eax, b
     mov ecx, 3
     imul ecx
     mov b, eax
     sal b, 1
     sub ebx, b
     mov a, ebx
```

# Questão 3
Escreva um segmento de código que pegue o conteúdo de eax, ebx, ecx, e edx, e coloque eles em ordem reversa de edx, ecx, ebx, e eax usando apenas as instruções push e pop. Em outras palavras, eax deve conter o conteúdo de edx e vice-versa, etc.

### Resposta
[Resposta da questão 3](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista6/question3.asm)

# Questão 4
Assuma que um registrador de estado e, um processador indica o atual estado de uma máquina fotocópia de acordo com a seguinte tabela. Para cada bit, a saída de uma mensagem apropriada indicando o estado da máquina. Note que embora possa indicar mais de um bit em um tempo, somente uma mensagem de erro pode ser gerada, onde bit 0 tem alta prioridade, seguido por um bit 1, etc. No critério do instrutor, implemente usando diretivas de alto-nível, sem diretivas de alto-nível, ou a combinação como mostrado no texto.

Bit Message

0 Paper Jam

1 Paper misfeed

2 Paper tray empty

3 Toner low

4 Toner empty

### Resposta:

[Resposta da questão 4](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista6/question4.asm)


# Questão 5
Similar ao programa na seção 6.8, escreva um programa para simular um sistema de alarme de segurança de acordo com a seguinte tabela, onde é possível que qualquer um dos três primeiros itens de alta prioridade podem acontecer ao mesmo tempo. Embora o três últimos itens podem mesmo ocorrer ao mesmo tempo, o programa deve verificar e enviar mensagens para eles somente quando nenhum dos primeiros três itens de prioridade mais alta ocorreu.

Bit Message

0 Fire alarm

1 Carbon monoxide

2 Power outage

3 Gate unlocked

4 Door open

5 Window open

### Resposta:
[Resposta da questão 6](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista6/question5.asm)

