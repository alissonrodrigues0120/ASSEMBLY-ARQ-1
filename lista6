# Questão 1
Dada as seguintes declarações de linguagem Assembly, indique se elas estão sintaticamente corretas ou incorretas. Se incorreto, indique o que está errado com a declaração:

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



